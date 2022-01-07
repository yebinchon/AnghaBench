; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_disable_if_filters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_disable_if_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32, i32* }

@BE_PRIV_FILTMGMT = common dso_local global i32 0, align 4
@BE_IF_ALL_FILT_FLAGS = common dso_local global i32 0, align 4
@OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*)* @be_disable_if_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_disable_if_filters(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  %3 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %4 = call i32 @BEx_chip(%struct.be_adapter* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %8 = call i32 @be_virtfn(%struct.be_adapter* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %12 = load i32, i32* @BE_PRIV_FILTMGMT, align 4
  %13 = call i64 @check_privilege(%struct.be_adapter* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %10, %6, %1
  %16 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %17 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @be_dev_mac_del(%struct.be_adapter* %16, i32 %21)
  %23 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @eth_zero_addr(i32 %25)
  br label %27

27:                                               ; preds = %15, %10
  %28 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %29 = call i32 @be_clear_uc_list(%struct.be_adapter* %28)
  %30 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %31 = call i32 @be_clear_mc_list(%struct.be_adapter* %30)
  %32 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %33 = call i64 @lancer_chip(%struct.be_adapter* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %27
  %36 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %37 = load i32, i32* @BE_IF_ALL_FILT_FLAGS, align 4
  %38 = load i32, i32* @OFF, align 4
  %39 = call i32 @be_cmd_rx_filter(%struct.be_adapter* %36, i32 %37, i32 %38)
  %40 = load i32, i32* @BE_IF_ALL_FILT_FLAGS, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %35, %27
  ret void
}

declare dso_local i32 @BEx_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_virtfn(%struct.be_adapter*) #1

declare dso_local i64 @check_privilege(%struct.be_adapter*, i32) #1

declare dso_local i32 @be_dev_mac_del(%struct.be_adapter*, i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @be_clear_uc_list(%struct.be_adapter*) #1

declare dso_local i32 @be_clear_mc_list(%struct.be_adapter*) #1

declare dso_local i64 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_rx_filter(%struct.be_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
