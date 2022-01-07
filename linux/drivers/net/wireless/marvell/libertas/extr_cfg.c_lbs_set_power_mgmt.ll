; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_set_power_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_set_power_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.lbs_private = type { i32, i64, i64, i64, i64 }

@FW_CAPINFO_PS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LBS802_11POWERMODECAM = common dso_local global i64 0, align 8
@PS_STATE_FULL_POWER = common dso_local global i64 0, align 8
@PS_MODE_ACTION_EXIT_PS = common dso_local global i32 0, align 4
@LBS802_11POWERMODEMAX_PSP = common dso_local global i64 0, align 8
@LBS_CONNECTED = common dso_local global i64 0, align 8
@PS_MODE_ACTION_ENTER_PS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32, i32)* @lbs_set_power_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_set_power_mgmt(%struct.wiphy* %0, %struct.net_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lbs_private*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %12 = call %struct.lbs_private* @wiphy_priv(%struct.wiphy* %11)
  store %struct.lbs_private* %12, %struct.lbs_private** %10, align 8
  %13 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %14 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @FW_CAPINFO_PS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %76

23:                                               ; preds = %19
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %76

26:                                               ; preds = %4
  %27 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %28 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %76

35:                                               ; preds = %31
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %76

38:                                               ; preds = %26
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* @LBS802_11POWERMODECAM, align 8
  %43 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %44 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %46 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PS_STATE_FULL_POWER, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %52 = load i32, i32* @PS_MODE_ACTION_EXIT_PS, align 4
  %53 = call i32 @lbs_set_ps_mode(%struct.lbs_private* %51, i32 %52, i32 1)
  br label %54

54:                                               ; preds = %50, %41
  store i32 0, i32* %5, align 4
  br label %76

55:                                               ; preds = %38
  %56 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %57 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @LBS802_11POWERMODECAM, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %76

62:                                               ; preds = %55
  %63 = load i64, i64* @LBS802_11POWERMODEMAX_PSP, align 8
  %64 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %65 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %67 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @LBS_CONNECTED, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load %struct.lbs_private*, %struct.lbs_private** %10, align 8
  %73 = load i32, i32* @PS_MODE_ACTION_ENTER_PS, align 4
  %74 = call i32 @lbs_set_ps_mode(%struct.lbs_private* %72, i32 %73, i32 1)
  br label %75

75:                                               ; preds = %71, %62
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %61, %54, %35, %34, %23, %22
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.lbs_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @lbs_set_ps_mode(%struct.lbs_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
