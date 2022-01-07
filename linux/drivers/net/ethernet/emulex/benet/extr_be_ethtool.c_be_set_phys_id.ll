; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_set_phys_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_set_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.be_adapter = type { i32, i32 }

@BEACON_STATE_ENABLED = common dso_local global i32 0, align 4
@BEACON_STATE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @be_set_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_set_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.be_adapter* %9, %struct.be_adapter** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %48 [
    i32 131, label %11
    i32 128, label %25
    i32 129, label %32
    i32 130, label %39
  ]

11:                                               ; preds = %2
  %12 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %13 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %14 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %16, i32 0, i32 0
  %18 = call i32 @be_cmd_get_beacon_state(%struct.be_adapter* %12, i32 %15, i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @be_cmd_status(i32 %22)
  store i32 %23, i32* %3, align 4
  br label %51

24:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %51

25:                                               ; preds = %2
  %26 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %27 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %28 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BEACON_STATE_ENABLED, align 4
  %31 = call i32 @be_cmd_set_beacon_state(%struct.be_adapter* %26, i32 %29, i32 0, i32 0, i32 %30)
  store i32 %31, i32* %7, align 4
  br label %48

32:                                               ; preds = %2
  %33 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %34 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %35 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BEACON_STATE_DISABLED, align 4
  %38 = call i32 @be_cmd_set_beacon_state(%struct.be_adapter* %33, i32 %36, i32 0, i32 0, i32 %37)
  store i32 %38, i32* %7, align 4
  br label %48

39:                                               ; preds = %2
  %40 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %41 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %42 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %45 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @be_cmd_set_beacon_state(%struct.be_adapter* %40, i32 %43, i32 0, i32 0, i32 %46)
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %39, %2, %32, %25
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @be_cmd_status(i32 %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %24, %21
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @be_cmd_get_beacon_state(%struct.be_adapter*, i32, i32*) #1

declare dso_local i32 @be_cmd_status(i32) #1

declare dso_local i32 @be_cmd_set_beacon_state(%struct.be_adapter*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
