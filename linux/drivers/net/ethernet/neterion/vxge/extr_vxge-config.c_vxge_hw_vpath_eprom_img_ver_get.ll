; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-config.c_vxge_hw_vpath_eprom_img_ver_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-config.c_vxge_hw_vpath_eprom_img_ver_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__vxge_hw_device = type { i64, %struct.__vxge_hw_virtualpath* }
%struct.__vxge_hw_virtualpath = type { i32 }
%struct.eprom_image = type { i32, i32, i32, i32 }

@VXGE_HW_MAX_ROM_IMAGES = common dso_local global i32 0, align 4
@VXGE_HW_FW_API_GET_EPROM_REV = common dso_local global i32 0, align 4
@VXGE_HW_RTS_ACCESS_STEER_CTRL_DATA_STRUCT_SEL_FW_MEMO = common dso_local global i32 0, align 4
@VXGE_HW_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vxge_hw_vpath_eprom_img_ver_get(%struct.__vxge_hw_device* %0, %struct.eprom_image* %1) #0 {
  %3 = alloca %struct.__vxge_hw_device*, align 8
  %4 = alloca %struct.eprom_image*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.__vxge_hw_virtualpath*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.__vxge_hw_device* %0, %struct.__vxge_hw_device** %3, align 8
  store %struct.eprom_image* %1, %struct.eprom_image** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %3, align 8
  %12 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %11, i32 0, i32 1
  %13 = load %struct.__vxge_hw_virtualpath*, %struct.__vxge_hw_virtualpath** %12, align 8
  %14 = load %struct.__vxge_hw_device*, %struct.__vxge_hw_device** %3, align 8
  %15 = getelementptr inbounds %struct.__vxge_hw_device, %struct.__vxge_hw_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.__vxge_hw_virtualpath, %struct.__vxge_hw_virtualpath* %13, i64 %16
  store %struct.__vxge_hw_virtualpath* %17, %struct.__vxge_hw_virtualpath** %8, align 8
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %62, %2
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @VXGE_HW_MAX_ROM_IMAGES, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %65

22:                                               ; preds = %18
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @VXGE_HW_RTS_ACCESS_STEER_ROM_IMAGE_INDEX(i32 %23)
  store i64 %24, i64* %5, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  %25 = load %struct.__vxge_hw_virtualpath*, %struct.__vxge_hw_virtualpath** %8, align 8
  %26 = load i32, i32* @VXGE_HW_FW_API_GET_EPROM_REV, align 4
  %27 = load i32, i32* @VXGE_HW_RTS_ACCESS_STEER_CTRL_DATA_STRUCT_SEL_FW_MEMO, align 4
  %28 = call i32 @vxge_hw_vpath_fw_api(%struct.__vxge_hw_virtualpath* %25, i32 %26, i32 %27, i32 0, i64* %5, i64* %6, i64* %7)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @VXGE_HW_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %65

33:                                               ; preds = %22
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @VXGE_HW_GET_EPROM_IMAGE_VALID(i64 %34)
  %36 = load %struct.eprom_image*, %struct.eprom_image** %4, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.eprom_image, %struct.eprom_image* %36, i64 %38
  %40 = getelementptr inbounds %struct.eprom_image, %struct.eprom_image* %39, i32 0, i32 3
  store i32 %35, i32* %40, align 4
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @VXGE_HW_GET_EPROM_IMAGE_INDEX(i64 %41)
  %43 = load %struct.eprom_image*, %struct.eprom_image** %4, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.eprom_image, %struct.eprom_image* %43, i64 %45
  %47 = getelementptr inbounds %struct.eprom_image, %struct.eprom_image* %46, i32 0, i32 2
  store i32 %42, i32* %47, align 4
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @VXGE_HW_GET_EPROM_IMAGE_TYPE(i64 %48)
  %50 = load %struct.eprom_image*, %struct.eprom_image** %4, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.eprom_image, %struct.eprom_image* %50, i64 %52
  %54 = getelementptr inbounds %struct.eprom_image, %struct.eprom_image* %53, i32 0, i32 1
  store i32 %49, i32* %54, align 4
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @VXGE_HW_GET_EPROM_IMAGE_REV(i64 %55)
  %57 = load %struct.eprom_image*, %struct.eprom_image** %4, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.eprom_image, %struct.eprom_image* %57, i64 %59
  %61 = getelementptr inbounds %struct.eprom_image, %struct.eprom_image* %60, i32 0, i32 0
  store i32 %56, i32* %61, align 4
  br label %62

62:                                               ; preds = %33
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %18

65:                                               ; preds = %32, %18
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

declare dso_local i64 @VXGE_HW_RTS_ACCESS_STEER_ROM_IMAGE_INDEX(i32) #1

declare dso_local i32 @vxge_hw_vpath_fw_api(%struct.__vxge_hw_virtualpath*, i32, i32, i32, i64*, i64*, i64*) #1

declare dso_local i32 @VXGE_HW_GET_EPROM_IMAGE_VALID(i64) #1

declare dso_local i32 @VXGE_HW_GET_EPROM_IMAGE_INDEX(i64) #1

declare dso_local i32 @VXGE_HW_GET_EPROM_IMAGE_TYPE(i64) #1

declare dso_local i32 @VXGE_HW_GET_EPROM_IMAGE_REV(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
