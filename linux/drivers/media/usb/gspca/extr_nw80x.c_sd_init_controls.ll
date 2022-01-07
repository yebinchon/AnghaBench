; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_nw80x.c_sd_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_nw80x.c_sd_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i8*, i8*, i8*, %struct.TYPE_2__, %struct.v4l2_ctrl_handler }
%struct.TYPE_2__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.sd = type { i32 }

@sd_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUTOGAIN = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
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
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 4
  store %struct.v4l2_ctrl_handler* %9, %struct.v4l2_ctrl_handler** %5, align 8
  %10 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %10, %struct.v4l2_ctrl_handler** %13, align 8
  %14 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %15 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %14, i32 3)
  %16 = load %struct.sd*, %struct.sd** %4, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %52 [
    i32 128, label %19
    i32 130, label %35
    i32 132, label %46
    i32 131, label %46
    i32 129, label %46
  ]

19:                                               ; preds = %1
  %20 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %21 = load i32, i32* @V4L2_CID_AUTOGAIN, align 4
  %22 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %20, i32* @sd_ctrl_ops, i32 %21, i32 0, i32 1, i32 1, i32 1)
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %24 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %26 = load i32, i32* @V4L2_CID_GAIN, align 4
  %27 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %25, i32* @sd_ctrl_ops, i32 %26, i32 0, i32 127, i32 1, i32 50)
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %29 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %31 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %32 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %30, i32* @sd_ctrl_ops, i32 %31, i32 0, i32 9, i32 1, i32 9)
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %34 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  br label %53

35:                                               ; preds = %1
  %36 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %37 = load i32, i32* @V4L2_CID_AUTOGAIN, align 4
  %38 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %36, i32* @sd_ctrl_ops, i32 %37, i32 0, i32 1, i32 1, i32 1)
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %40 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %42 = load i32, i32* @V4L2_CID_GAIN, align 4
  %43 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %41, i32* @sd_ctrl_ops, i32 %42, i32 0, i32 253, i32 1, i32 128)
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %45 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %1, %1, %1, %35
  %47 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %48 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %49 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %47, i32* @sd_ctrl_ops, i32 %48, i32 0, i32 315, i32 1, i32 150)
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %51 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  br label %53

52:                                               ; preds = %1
  br label %53

53:                                               ; preds = %52, %46, %19
  %54 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %61 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %2, align 4
  br label %73

63:                                               ; preds = %53
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %65 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %70 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %69, i32 0, i32 0
  %71 = call i32 @v4l2_ctrl_auto_cluster(i32 3, i8** %70, i32 0, i32 0)
  br label %72

72:                                               ; preds = %68, %63
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %58
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
