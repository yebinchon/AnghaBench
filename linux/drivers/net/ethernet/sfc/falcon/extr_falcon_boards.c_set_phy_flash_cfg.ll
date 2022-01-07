; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon_boards.c_set_phy_flash_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon_boards.c_set_phy_flash_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ef4_nic = type { i32, i64, i32 }

@PHY_MODE_SPECIAL = common dso_local global i32 0, align 4
@STATE_READY = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_phy_flash_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_phy_flash_cfg(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ef4_nic*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.ef4_nic* @dev_get_drvdata(%struct.device* %13)
  store %struct.ef4_nic* %14, %struct.ef4_nic** %9, align 8
  %15 = call i32 (...) @rtnl_lock()
  %16 = load %struct.ef4_nic*, %struct.ef4_nic** %9, align 8
  %17 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load i64, i64* %8, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 48
  br i1 %25, label %26, label %31

26:                                               ; preds = %21, %4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @PHY_MODE_SPECIAL, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  store i32 %30, i32* %11, align 4
  br label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @PHY_MODE_SPECIAL, align 4
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = xor i32 %34, %35
  %37 = load i32, i32* @PHY_MODE_SPECIAL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  br label %85

41:                                               ; preds = %33
  %42 = load %struct.ef4_nic*, %struct.ef4_nic** %9, align 8
  %43 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @STATE_READY, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.ef4_nic*, %struct.ef4_nic** %9, align 8
  %49 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @netif_running(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47, %41
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %12, align 4
  br label %84

56:                                               ; preds = %47
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.ef4_nic*, %struct.ef4_nic** %9, align 8
  %59 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @PHY_MODE_SPECIAL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load %struct.ef4_nic*, %struct.ef4_nic** %9, align 8
  %66 = call i32 @falcon_stop_nic_stats(%struct.ef4_nic* %65)
  br label %67

67:                                               ; preds = %64, %56
  %68 = load %struct.ef4_nic*, %struct.ef4_nic** %9, align 8
  %69 = call i32 @sfe4001_poweron(%struct.ef4_nic* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load %struct.ef4_nic*, %struct.ef4_nic** %9, align 8
  %74 = call i32 @ef4_reconfigure_port(%struct.ef4_nic* %73)
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @PHY_MODE_SPECIAL, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load %struct.ef4_nic*, %struct.ef4_nic** %9, align 8
  %82 = call i32 @falcon_start_nic_stats(%struct.ef4_nic* %81)
  br label %83

83:                                               ; preds = %80, %75
  br label %84

84:                                               ; preds = %83, %53
  br label %85

85:                                               ; preds = %84, %40
  %86 = call i32 (...) @rtnl_unlock()
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  br label %94

92:                                               ; preds = %85
  %93 = load i64, i64* %8, align 8
  br label %94

94:                                               ; preds = %92, %89
  %95 = phi i64 [ %91, %89 ], [ %93, %92 ]
  %96 = trunc i64 %95 to i32
  ret i32 %96
}

declare dso_local %struct.ef4_nic* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @falcon_stop_nic_stats(%struct.ef4_nic*) #1

declare dso_local i32 @sfe4001_poweron(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_reconfigure_port(%struct.ef4_nic*) #1

declare dso_local i32 @falcon_start_nic_stats(%struct.ef4_nic*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
