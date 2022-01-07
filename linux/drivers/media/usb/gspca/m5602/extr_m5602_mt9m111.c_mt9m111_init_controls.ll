; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_mt9m111.c_mt9m111_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_mt9m111.c_mt9m111_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i8*, i8*, i8*, i8*, i8*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.v4l2_ctrl_handler }
%struct.TYPE_3__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }

@mt9m111_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_AUTO_WHITE_BALANCE = common dso_local global i32 0, align 4
@mt9m111_greenbal_cfg = common dso_local global i32 0, align 4
@V4L2_CID_RED_BALANCE = common dso_local global i32 0, align 4
@MT9M111_RED_GAIN_DEFAULT = common dso_local global i32 0, align 4
@V4L2_CID_BLUE_BALANCE = common dso_local global i32 0, align 4
@MT9M111_BLUE_GAIN_DEFAULT = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@INITIAL_MAX_GAIN = common dso_local global i32 0, align 4
@MT9M111_DEFAULT_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not initialize controls\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt9m111_init_controls(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca %struct.v4l2_ctrl_handler*, align 8
  store %struct.sd* %0, %struct.sd** %3, align 8
  %5 = load %struct.sd*, %struct.sd** %3, align 8
  %6 = getelementptr inbounds %struct.sd, %struct.sd* %5, i32 0, i32 6
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store %struct.v4l2_ctrl_handler* %7, %struct.v4l2_ctrl_handler** %4, align 8
  %8 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %9 = load %struct.sd*, %struct.sd** %3, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 6
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %8, %struct.v4l2_ctrl_handler** %12, align 8
  %13 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %14 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %13, i32 7)
  %15 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %16 = load i32, i32* @V4L2_CID_AUTO_WHITE_BALANCE, align 4
  %17 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %15, i32* @mt9m111_ctrl_ops, i32 %16, i32 0, i32 1, i32 1, i32 0)
  %18 = load %struct.sd*, %struct.sd** %3, align 8
  %19 = getelementptr inbounds %struct.sd, %struct.sd* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %21 = call i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %20, i32* @mt9m111_greenbal_cfg, i32* null)
  %22 = load %struct.sd*, %struct.sd** %3, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 8
  %24 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %25 = load i32, i32* @V4L2_CID_RED_BALANCE, align 4
  %26 = load i32, i32* @MT9M111_RED_GAIN_DEFAULT, align 4
  %27 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %24, i32* @mt9m111_ctrl_ops, i32 %25, i32 0, i32 2047, i32 1, i32 %26)
  %28 = load %struct.sd*, %struct.sd** %3, align 8
  %29 = getelementptr inbounds %struct.sd, %struct.sd* %28, i32 0, i32 4
  store i8* %27, i8** %29, align 8
  %30 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %31 = load i32, i32* @V4L2_CID_BLUE_BALANCE, align 4
  %32 = load i32, i32* @MT9M111_BLUE_GAIN_DEFAULT, align 4
  %33 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %30, i32* @mt9m111_ctrl_ops, i32 %31, i32 0, i32 2047, i32 1, i32 %32)
  %34 = load %struct.sd*, %struct.sd** %3, align 8
  %35 = getelementptr inbounds %struct.sd, %struct.sd* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %37 = load i32, i32* @V4L2_CID_GAIN, align 4
  %38 = load i32, i32* @INITIAL_MAX_GAIN, align 4
  %39 = sub nsw i32 %38, 1
  %40 = mul nsw i32 %39, 2
  %41 = mul nsw i32 %40, 2
  %42 = mul nsw i32 %41, 2
  %43 = load i32, i32* @MT9M111_DEFAULT_GAIN, align 4
  %44 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %36, i32* @mt9m111_ctrl_ops, i32 %37, i32 0, i32 %42, i32 1, i32 %43)
  %45 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %46 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %47 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %45, i32* @mt9m111_ctrl_ops, i32 %46, i32 0, i32 1, i32 1, i32 0)
  %48 = load %struct.sd*, %struct.sd** %3, align 8
  %49 = getelementptr inbounds %struct.sd, %struct.sd* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %51 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %52 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %50, i32* @mt9m111_ctrl_ops, i32 %51, i32 0, i32 1, i32 1, i32 0)
  %53 = load %struct.sd*, %struct.sd** %3, align 8
  %54 = getelementptr inbounds %struct.sd, %struct.sd* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %56 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %1
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %62 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %2, align 4
  br label %71

64:                                               ; preds = %1
  %65 = load %struct.sd*, %struct.sd** %3, align 8
  %66 = getelementptr inbounds %struct.sd, %struct.sd* %65, i32 0, i32 1
  %67 = call i32 @v4l2_ctrl_auto_cluster(i32 4, i8** %66, i32 0, i32 0)
  %68 = load %struct.sd*, %struct.sd** %3, align 8
  %69 = getelementptr inbounds %struct.sd, %struct.sd* %68, i32 0, i32 0
  %70 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %64, %59
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler*, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i8**, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
