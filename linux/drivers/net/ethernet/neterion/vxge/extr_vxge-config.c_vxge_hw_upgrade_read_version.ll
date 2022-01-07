; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-config.c_vxge_hw_upgrade_read_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-config.c_vxge_hw_upgrade_read_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_device = type { i64, %struct.__vxge_hw_virtualpath* }
%struct.__vxge_hw_virtualpath = type { i32 }

@VXGE_HW_FW_UPGRADE_ACTION = common dso_local global i32 0, align 4
@VXGE_HW_FW_UPGRADE_MEMO = common dso_local global i32 0, align 4
@VXGE_HW_FW_UPGRADE_OFFSET_READ = common dso_local global i32 0, align 4
@VXGE_HW_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vxge_hw_upgrade_read_version(%struct.__vxge_hw_device* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.__vxge_hw_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.__vxge_hw_virtualpath*, align 8
  %14 = alloca i32, align 4
  store %struct.__vxge_hw_device* %0, %struct.__vxge_hw_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %6, align 8
  %16 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %15, i32 0, i32 1
  %17 = load %struct.__vxge_hw_virtualpath*, %struct.__vxge_hw_virtualpath** %16, align 8
  %18 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %6, align 8
  %19 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.__vxge_hw_virtualpath, %struct.__vxge_hw_virtualpath* %17, i64 %20
  store %struct.__vxge_hw_virtualpath* %21, %struct.__vxge_hw_virtualpath** %13, align 8
  %22 = load %struct.__vxge_hw_virtualpath*, %struct.__vxge_hw_virtualpath** %13, align 8
  %23 = load i32, i32* @VXGE_HW_FW_UPGRADE_ACTION, align 4
  %24 = load i32, i32* @VXGE_HW_FW_UPGRADE_MEMO, align 4
  %25 = load i32, i32* @VXGE_HW_FW_UPGRADE_OFFSET_READ, align 4
  %26 = call i32 @vxge_hw_vpath_fw_api(%struct.__vxge_hw_virtualpath* %22, i32 %23, i32 %24, i32 %25, i32* %10, i32* %11, i32* %12)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* @VXGE_HW_OK, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %5, align 4
  br label %43

32:                                               ; preds = %4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @VXGE_HW_RTS_ACCESS_STEER_DATA0_GET_FW_VER_MAJOR(i32 %33)
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @VXGE_HW_RTS_ACCESS_STEER_DATA0_GET_FW_VER_MINOR(i32 %36)
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @VXGE_HW_RTS_ACCESS_STEER_DATA0_GET_FW_VER_BUILD(i32 %39)
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %32, %30
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @vxge_hw_vpath_fw_api(%struct.__vxge_hw_virtualpath*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @VXGE_HW_RTS_ACCESS_STEER_DATA0_GET_FW_VER_MAJOR(i32) #1

declare dso_local i32 @VXGE_HW_RTS_ACCESS_STEER_DATA0_GET_FW_VER_MINOR(i32) #1

declare dso_local i32 @VXGE_HW_RTS_ACCESS_STEER_DATA0_GET_FW_VER_BUILD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
