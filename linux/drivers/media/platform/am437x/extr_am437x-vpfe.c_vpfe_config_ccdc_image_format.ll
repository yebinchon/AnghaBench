; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_config_ccdc_image_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_config_ccdc_image_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpfe_device = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@CCDC_FRMFMT_INTERLACED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"vpfe_config_ccdc_image_format\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"pixelformat: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"couldn't set pix format in ccdc\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CCDC_BUFTYPE_FLD_INTERLEAVED = common dso_local global i32 0, align 4
@CCDC_FRMFMT_PROGRESSIVE = common dso_local global i32 0, align 4
@CCDC_BUFTYPE_FLD_SEPARATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpfe_device*)* @vpfe_config_ccdc_image_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_config_ccdc_image_format(%struct.vpfe_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vpfe_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vpfe_device* %0, %struct.vpfe_device** %3, align 8
  %6 = load i32, i32* @CCDC_FRMFMT_INTERLACED, align 4
  store i32 %6, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %8 = call i32 (i32, %struct.vpfe_device*, i8*, ...) @vpfe_dbg(i32 2, %struct.vpfe_device* %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %10 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %11 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @print_fourcc(i32 %15)
  %17 = call i32 (i32, %struct.vpfe_device*, i8*, ...) @vpfe_dbg(i32 1, %struct.vpfe_device* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %19 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %18, i32 0, i32 0
  %20 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %21 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @vpfe_ccdc_set_pixel_format(i32* %19, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %30 = call i32 @vpfe_err(%struct.vpfe_device* %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %73

33:                                               ; preds = %1
  %34 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %35 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %34, i32 0, i32 0
  %36 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %37 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %36, i32 0, i32 3
  %38 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %39 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @vpfe_ccdc_set_image_window(i32* %35, i32* %37, i32 %40)
  %42 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %43 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %60 [
    i32 130, label %48
    i32 129, label %53
    i32 128, label %55
  ]

48:                                               ; preds = %33
  %49 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %50 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %49, i32 0, i32 0
  %51 = load i32, i32* @CCDC_BUFTYPE_FLD_INTERLEAVED, align 4
  %52 = call i32 @vpfe_ccdc_set_buftype(i32* %50, i32 %51)
  store i32 %52, i32* %5, align 4
  br label %63

53:                                               ; preds = %33
  %54 = load i32, i32* @CCDC_FRMFMT_PROGRESSIVE, align 4
  store i32 %54, i32* %4, align 4
  br label %63

55:                                               ; preds = %33
  %56 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %57 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %56, i32 0, i32 0
  %58 = load i32, i32* @CCDC_BUFTYPE_FLD_SEPARATED, align 4
  %59 = call i32 @vpfe_ccdc_set_buftype(i32* %57, i32 %58)
  store i32 %59, i32* %5, align 4
  br label %63

60:                                               ; preds = %33
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %73

63:                                               ; preds = %55, %53, %48
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %73

68:                                               ; preds = %63
  %69 = load %struct.vpfe_device*, %struct.vpfe_device** %3, align 8
  %70 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %69, i32 0, i32 0
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @vpfe_ccdc_set_frame_format(i32* %70, i32 %71)
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %68, %66, %60, %28
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @vpfe_dbg(i32, %struct.vpfe_device*, i8*, ...) #1

declare dso_local i32 @print_fourcc(i32) #1

declare dso_local i64 @vpfe_ccdc_set_pixel_format(i32*, i32) #1

declare dso_local i32 @vpfe_err(%struct.vpfe_device*, i8*) #1

declare dso_local i32 @vpfe_ccdc_set_image_window(i32*, i32*, i32) #1

declare dso_local i32 @vpfe_ccdc_set_buftype(i32*, i32) #1

declare dso_local i32 @vpfe_ccdc_set_frame_format(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
