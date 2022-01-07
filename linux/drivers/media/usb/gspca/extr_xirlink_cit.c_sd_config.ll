; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_xirlink_cit.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_xirlink_cit.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.cam }
%struct.cam = type { i32, i32, i8* }
%struct.usb_device_id = type { i32 }
%struct.sd = type { i32, i32, i32 }

@ibm_netcam_pro = common dso_local global i64 0, align 8
@model0_mode = common dso_local global i8* null, align 8
@cif_yuv_mode = common dso_local global i8* null, align 8
@model2_mode = common dso_local global i8* null, align 8
@vga_yuv_mode = common dso_local global i8* null, align 8
@V4L2_IN_ST_VFLIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @sd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.usb_device_id*, align 8
  %5 = alloca %struct.sd*, align 8
  %6 = alloca %struct.cam*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %4, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %5, align 8
  %9 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %10 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sd*, %struct.sd** %5, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.sd*, %struct.sd** %5, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 129
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i64, i64* @ibm_netcam_pro, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.sd*, %struct.sd** %5, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 0
  store i32 133, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %18, %2
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %26 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %25, i32 0, i32 0
  store %struct.cam* %26, %struct.cam** %6, align 8
  %27 = load %struct.sd*, %struct.sd** %5, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %94 [
    i32 132, label %30
    i32 131, label %41
    i32 130, label %52
    i32 129, label %59
    i32 128, label %72
    i32 133, label %81
  ]

30:                                               ; preds = %24
  %31 = load i8*, i8** @model0_mode, align 8
  %32 = load %struct.cam*, %struct.cam** %6, align 8
  %33 = getelementptr inbounds %struct.cam, %struct.cam* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @model0_mode, align 8
  %35 = call i8* @ARRAY_SIZE(i8* %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.cam*, %struct.cam** %6, align 8
  %38 = getelementptr inbounds %struct.cam, %struct.cam* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.sd*, %struct.sd** %5, align 8
  %40 = getelementptr inbounds %struct.sd, %struct.sd* %39, i32 0, i32 1
  store i32 4, i32* %40, align 4
  br label %94

41:                                               ; preds = %24
  %42 = load i8*, i8** @cif_yuv_mode, align 8
  %43 = load %struct.cam*, %struct.cam** %6, align 8
  %44 = getelementptr inbounds %struct.cam, %struct.cam* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** @cif_yuv_mode, align 8
  %46 = call i8* @ARRAY_SIZE(i8* %45)
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.cam*, %struct.cam** %6, align 8
  %49 = getelementptr inbounds %struct.cam, %struct.cam* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.sd*, %struct.sd** %5, align 8
  %51 = getelementptr inbounds %struct.sd, %struct.sd* %50, i32 0, i32 1
  store i32 4, i32* %51, align 4
  br label %94

52:                                               ; preds = %24
  %53 = load i8*, i8** @model2_mode, align 8
  %54 = getelementptr i8, i8* %53, i64 1
  %55 = load %struct.cam*, %struct.cam** %6, align 8
  %56 = getelementptr inbounds %struct.cam, %struct.cam* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load %struct.cam*, %struct.cam** %6, align 8
  %58 = getelementptr inbounds %struct.cam, %struct.cam* %57, i32 0, i32 0
  store i32 3, i32* %58, align 8
  br label %94

59:                                               ; preds = %24
  %60 = load i8*, i8** @vga_yuv_mode, align 8
  %61 = load %struct.cam*, %struct.cam** %6, align 8
  %62 = getelementptr inbounds %struct.cam, %struct.cam* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** @vga_yuv_mode, align 8
  %64 = call i8* @ARRAY_SIZE(i8* %63)
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.cam*, %struct.cam** %6, align 8
  %67 = getelementptr inbounds %struct.cam, %struct.cam* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.sd*, %struct.sd** %5, align 8
  %69 = getelementptr inbounds %struct.sd, %struct.sd* %68, i32 0, i32 2
  store i32 1, i32* %69, align 4
  %70 = load %struct.sd*, %struct.sd** %5, align 8
  %71 = getelementptr inbounds %struct.sd, %struct.sd* %70, i32 0, i32 1
  store i32 4, i32* %71, align 4
  br label %94

72:                                               ; preds = %24
  %73 = load i8*, i8** @model2_mode, align 8
  %74 = load %struct.cam*, %struct.cam** %6, align 8
  %75 = getelementptr inbounds %struct.cam, %struct.cam* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** @model2_mode, align 8
  %77 = call i8* @ARRAY_SIZE(i8* %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.cam*, %struct.cam** %6, align 8
  %80 = getelementptr inbounds %struct.cam, %struct.cam* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %94

81:                                               ; preds = %24
  %82 = load i8*, i8** @vga_yuv_mode, align 8
  %83 = load %struct.cam*, %struct.cam** %6, align 8
  %84 = getelementptr inbounds %struct.cam, %struct.cam* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load %struct.cam*, %struct.cam** %6, align 8
  %86 = getelementptr inbounds %struct.cam, %struct.cam* %85, i32 0, i32 0
  store i32 2, i32* %86, align 8
  %87 = load i32, i32* @V4L2_IN_ST_VFLIP, align 4
  %88 = load %struct.cam*, %struct.cam** %6, align 8
  %89 = getelementptr inbounds %struct.cam, %struct.cam* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.sd*, %struct.sd** %5, align 8
  %91 = getelementptr inbounds %struct.sd, %struct.sd* %90, i32 0, i32 2
  store i32 1, i32* %91, align 4
  %92 = load %struct.sd*, %struct.sd** %5, align 8
  %93 = getelementptr inbounds %struct.sd, %struct.sd* %92, i32 0, i32 1
  store i32 4, i32* %93, align 4
  br label %94

94:                                               ; preds = %24, %81, %72, %59, %52, %41, %30
  ret i32 0
}

declare dso_local i8* @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
