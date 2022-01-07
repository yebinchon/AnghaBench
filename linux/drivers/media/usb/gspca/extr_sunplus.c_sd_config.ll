; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sunplus.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sunplus.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32*, %struct.cam }
%struct.cam = type { i8*, i8* }
%struct.usb_device_id = type { i32 }
%struct.sd = type { i32, i32 }

@AiptekMiniPenCam13 = common dso_local global i32 0, align 4
@BRIDGE_SPCA504B = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@vga_mode = common dso_local global i8* null, align 8
@custom_mode = common dso_local global i8* null, align 8
@MegaImageVI = common dso_local global i32 0, align 4
@vga_mode2 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @sd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.sd*, align 8
  %7 = alloca %struct.cam*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %6, align 8
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %11 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %10, i32 0, i32 1
  store %struct.cam* %11, %struct.cam** %7, align 8
  %12 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %13 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 8
  %16 = load %struct.sd*, %struct.sd** %6, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %19 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sd*, %struct.sd** %6, align 8
  %22 = getelementptr inbounds %struct.sd, %struct.sd* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.sd*, %struct.sd** %6, align 8
  %24 = getelementptr inbounds %struct.sd, %struct.sd* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AiptekMiniPenCam13, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %2
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %30 = call i32 @reg_r(%struct.gspca_dev* %29, i32 32, i32 0, i32 1)
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %32 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %43 [
    i32 1, label %36
    i32 2, label %37
  ]

36:                                               ; preds = %28
  br label %46

37:                                               ; preds = %28
  %38 = load i32, i32* @BRIDGE_SPCA504B, align 4
  %39 = load %struct.sd*, %struct.sd** %6, align 8
  %40 = getelementptr inbounds %struct.sd, %struct.sd* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.sd*, %struct.sd** %6, align 8
  %42 = getelementptr inbounds %struct.sd, %struct.sd* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  br label %46

43:                                               ; preds = %28
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %89

46:                                               ; preds = %37, %36
  br label %47

47:                                               ; preds = %46, %2
  %48 = load %struct.sd*, %struct.sd** %6, align 8
  %49 = getelementptr inbounds %struct.sd, %struct.sd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %51 [
    i32 128, label %59
    i32 129, label %80
  ]

51:                                               ; preds = %47
  %52 = load i8*, i8** @vga_mode, align 8
  %53 = load %struct.cam*, %struct.cam** %7, align 8
  %54 = getelementptr inbounds %struct.cam, %struct.cam* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** @vga_mode, align 8
  %56 = call i8* @ARRAY_SIZE(i8* %55)
  %57 = load %struct.cam*, %struct.cam** %7, align 8
  %58 = getelementptr inbounds %struct.cam, %struct.cam* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  br label %88

59:                                               ; preds = %47
  %60 = load i8*, i8** @custom_mode, align 8
  %61 = load %struct.cam*, %struct.cam** %7, align 8
  %62 = getelementptr inbounds %struct.cam, %struct.cam* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.sd*, %struct.sd** %6, align 8
  %64 = getelementptr inbounds %struct.sd, %struct.sd* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MegaImageVI, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %59
  %69 = load i8*, i8** @custom_mode, align 8
  %70 = call i8* @ARRAY_SIZE(i8* %69)
  %71 = getelementptr i8, i8* %70, i64 -1
  %72 = load %struct.cam*, %struct.cam** %7, align 8
  %73 = getelementptr inbounds %struct.cam, %struct.cam* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %79

74:                                               ; preds = %59
  %75 = load i8*, i8** @custom_mode, align 8
  %76 = call i8* @ARRAY_SIZE(i8* %75)
  %77 = load %struct.cam*, %struct.cam** %7, align 8
  %78 = getelementptr inbounds %struct.cam, %struct.cam* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %74, %68
  br label %88

80:                                               ; preds = %47
  %81 = load i8*, i8** @vga_mode2, align 8
  %82 = load %struct.cam*, %struct.cam** %7, align 8
  %83 = getelementptr inbounds %struct.cam, %struct.cam* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** @vga_mode2, align 8
  %85 = call i8* @ARRAY_SIZE(i8* %84)
  %86 = load %struct.cam*, %struct.cam** %7, align 8
  %87 = getelementptr inbounds %struct.cam, %struct.cam* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %80, %79, %51
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %43
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
