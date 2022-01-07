; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_mac.c_memac_initialization.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_mac.c_memac_initialization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_device = type { i32, %struct.mac_priv_s* }
%struct.mac_priv_s = type { i64, i32, i32 }
%struct.fman_mac_params = type { i32 }

@SPEED_10000 = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_XGMII = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"FMan MEMAC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac_device*)* @memac_initialization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memac_initialization(%struct.mac_device* %0) #0 {
  %2 = alloca %struct.mac_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mac_priv_s*, align 8
  %5 = alloca %struct.fman_mac_params, align 4
  store %struct.mac_device* %0, %struct.mac_device** %2, align 8
  %6 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %7 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %6, i32 0, i32 1
  %8 = load %struct.mac_priv_s*, %struct.mac_priv_s** %7, align 8
  store %struct.mac_priv_s* %8, %struct.mac_priv_s** %4, align 8
  %9 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %10 = call i32 @set_fman_mac_params(%struct.mac_device* %9, %struct.fman_mac_params* %5)
  %11 = load %struct.mac_priv_s*, %struct.mac_priv_s** %4, align 8
  %12 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SPEED_10000, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @PHY_INTERFACE_MODE_XGMII, align 4
  %18 = getelementptr inbounds %struct.fman_mac_params, %struct.fman_mac_params* %5, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  br label %19

19:                                               ; preds = %16, %1
  %20 = call i32 @memac_config(%struct.fman_mac_params* %5)
  %21 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %22 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %24 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %76

30:                                               ; preds = %19
  %31 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %32 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (...) @fman_get_max_frm()
  %35 = call i32 @memac_cfg_max_frame_len(i32 %33, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %71

39:                                               ; preds = %30
  %40 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %41 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @memac_cfg_reset_on_init(i32 %42, i32 1)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %71

47:                                               ; preds = %39
  %48 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %49 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.mac_priv_s*, %struct.mac_priv_s** %4, align 8
  %52 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @memac_cfg_fixed_link(i32 %50, i32 %53)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %71

58:                                               ; preds = %47
  %59 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %60 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @memac_init(i32 %61)
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %71

66:                                               ; preds = %58
  %67 = load %struct.mac_priv_s*, %struct.mac_priv_s** %4, align 8
  %68 = getelementptr inbounds %struct.mac_priv_s, %struct.mac_priv_s* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dev_info(i32 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %76

71:                                               ; preds = %65, %57, %46, %38
  %72 = load %struct.mac_device*, %struct.mac_device** %2, align 8
  %73 = getelementptr inbounds %struct.mac_device, %struct.mac_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @memac_free(i32 %74)
  br label %76

76:                                               ; preds = %71, %66, %27
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @set_fman_mac_params(%struct.mac_device*, %struct.fman_mac_params*) #1

declare dso_local i32 @memac_config(%struct.fman_mac_params*) #1

declare dso_local i32 @memac_cfg_max_frame_len(i32, i32) #1

declare dso_local i32 @fman_get_max_frm(...) #1

declare dso_local i32 @memac_cfg_reset_on_init(i32, i32) #1

declare dso_local i32 @memac_cfg_fixed_link(i32, i32) #1

declare dso_local i32 @memac_init(i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @memac_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
