; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_mars.c_sd_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_mars.c_sd_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_4__, %struct.v4l2_ctrl_handler }
%struct.TYPE_4__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.sd = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@mars_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_GAMMA = common dso_local global i32 0, align 4
@V4L2_CID_SHARPNESS = common dso_local global i32 0, align 4
@V4L2_CID_ILLUMINATORS_1 = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_UPDATE = common dso_local global i32 0, align 4
@V4L2_CID_ILLUMINATORS_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not initialize controls\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init_controls(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca %struct.v4l2_ctrl_handler*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %4, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 1
  store %struct.v4l2_ctrl_handler* %9, %struct.v4l2_ctrl_handler** %5, align 8
  %10 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %10, %struct.v4l2_ctrl_handler** %13, align 8
  %14 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %15 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %14, i32 6)
  %16 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %17 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %18 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %16, i32* @mars_ctrl_ops, i32 %17, i32 0, i32 30, i32 1, i32 15)
  %19 = load %struct.sd*, %struct.sd** %4, align 8
  %20 = getelementptr inbounds %struct.sd, %struct.sd* %19, i32 0, i32 5
  store i8* %18, i8** %20, align 8
  %21 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %22 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %23 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %21, i32* @mars_ctrl_ops, i32 %22, i32 0, i32 255, i32 1, i32 200)
  %24 = load %struct.sd*, %struct.sd** %4, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %27 = load i32, i32* @V4L2_CID_GAMMA, align 4
  %28 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %26, i32* @mars_ctrl_ops, i32 %27, i32 0, i32 3, i32 1, i32 1)
  %29 = load %struct.sd*, %struct.sd** %4, align 8
  %30 = getelementptr inbounds %struct.sd, %struct.sd* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %32 = load i32, i32* @V4L2_CID_SHARPNESS, align 4
  %33 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %31, i32* @mars_ctrl_ops, i32 %32, i32 0, i32 2, i32 1, i32 1)
  %34 = load %struct.sd*, %struct.sd** %4, align 8
  %35 = getelementptr inbounds %struct.sd, %struct.sd* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %37 = load i32, i32* @V4L2_CID_ILLUMINATORS_1, align 4
  %38 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %36, i32* @mars_ctrl_ops, i32 %37, i32 0, i32 1, i32 1, i32 0)
  %39 = bitcast i8* %38 to %struct.TYPE_6__*
  %40 = load %struct.sd*, %struct.sd** %4, align 8
  %41 = getelementptr inbounds %struct.sd, %struct.sd* %40, i32 0, i32 0
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %41, align 8
  %42 = load i32, i32* @V4L2_CTRL_FLAG_UPDATE, align 4
  %43 = load %struct.sd*, %struct.sd** %4, align 8
  %44 = getelementptr inbounds %struct.sd, %struct.sd* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %42
  store i32 %48, i32* %46, align 4
  %49 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %50 = load i32, i32* @V4L2_CID_ILLUMINATORS_2, align 4
  %51 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %49, i32* @mars_ctrl_ops, i32 %50, i32 0, i32 1, i32 1, i32 0)
  %52 = bitcast i8* %51 to %struct.TYPE_5__*
  %53 = load %struct.sd*, %struct.sd** %4, align 8
  %54 = getelementptr inbounds %struct.sd, %struct.sd* %53, i32 0, i32 1
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %54, align 8
  %55 = load i32, i32* @V4L2_CTRL_FLAG_UPDATE, align 4
  %56 = load %struct.sd*, %struct.sd** %4, align 8
  %57 = getelementptr inbounds %struct.sd, %struct.sd* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %55
  store i32 %61, i32* %59, align 4
  %62 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %63 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %1
  %67 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %69 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %2, align 4
  br label %75

71:                                               ; preds = %1
  %72 = load %struct.sd*, %struct.sd** %4, align 8
  %73 = getelementptr inbounds %struct.sd, %struct.sd* %72, i32 0, i32 0
  %74 = call i32 @v4l2_ctrl_cluster(i32 2, %struct.TYPE_6__** %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %71, %66
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, %struct.TYPE_6__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
