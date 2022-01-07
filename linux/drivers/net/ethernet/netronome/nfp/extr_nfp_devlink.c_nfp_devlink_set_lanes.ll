; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_devlink.c_nfp_devlink_set_lanes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_devlink.c_nfp_devlink_set_lanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_pf = type { i32 }
%struct.nfp_nsp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_pf*, i32, i32)* @nfp_devlink_set_lanes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_devlink_set_lanes(%struct.nfp_pf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_pf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfp_nsp*, align 8
  %9 = alloca i32, align 4
  store %struct.nfp_pf* %0, %struct.nfp_pf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %11 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.nfp_nsp* @nfp_eth_config_start(i32 %12, i32 %13)
  store %struct.nfp_nsp* %14, %struct.nfp_nsp** %8, align 8
  %15 = load %struct.nfp_nsp*, %struct.nfp_nsp** %8, align 8
  %16 = call i64 @IS_ERR(%struct.nfp_nsp* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.nfp_nsp*, %struct.nfp_nsp** %8, align 8
  %20 = call i32 @PTR_ERR(%struct.nfp_nsp* %19)
  store i32 %20, i32* %4, align 4
  br label %45

21:                                               ; preds = %3
  %22 = load %struct.nfp_nsp*, %struct.nfp_nsp** %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @__nfp_eth_set_split(%struct.nfp_nsp* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.nfp_nsp*, %struct.nfp_nsp** %8, align 8
  %29 = call i32 @nfp_eth_config_cleanup_end(%struct.nfp_nsp* %28)
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %45

31:                                               ; preds = %21
  %32 = load %struct.nfp_nsp*, %struct.nfp_nsp** %8, align 8
  %33 = call i32 @nfp_eth_config_commit_end(%struct.nfp_nsp* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %45

38:                                               ; preds = %31
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %45

42:                                               ; preds = %38
  %43 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %44 = call i32 @nfp_net_refresh_port_table_sync(%struct.nfp_pf* %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %42, %41, %36, %27, %18
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.nfp_nsp* @nfp_eth_config_start(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nfp_nsp*) #1

declare dso_local i32 @PTR_ERR(%struct.nfp_nsp*) #1

declare dso_local i32 @__nfp_eth_set_split(%struct.nfp_nsp*, i32) #1

declare dso_local i32 @nfp_eth_config_cleanup_end(%struct.nfp_nsp*) #1

declare dso_local i32 @nfp_eth_config_commit_end(%struct.nfp_nsp*) #1

declare dso_local i32 @nfp_net_refresh_port_table_sync(%struct.nfp_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
