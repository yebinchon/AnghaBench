; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cal_get_external_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_cal_get_external_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal_ctx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.v4l2_ctrl = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@V4L2_CID_PIXEL_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"no pixel rate control in subdev: %s\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"sensor Pixel Rate: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cal_ctx*)* @cal_get_external_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cal_get_external_info(%struct.cal_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cal_ctx*, align 8
  %4 = alloca %struct.v4l2_ctrl*, align 8
  store %struct.cal_ctx* %0, %struct.cal_ctx** %3, align 8
  %5 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %42

12:                                               ; preds = %1
  %13 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @V4L2_CID_PIXEL_RATE, align 4
  %19 = call %struct.v4l2_ctrl* @v4l2_ctrl_find(i32 %17, i32 %18)
  store %struct.v4l2_ctrl* %19, %struct.v4l2_ctrl** %4, align 8
  %20 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %21 = icmp ne %struct.v4l2_ctrl* %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %12
  %23 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %24 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ctx_err(%struct.cal_ctx* %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EPIPE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %42

32:                                               ; preds = %12
  %33 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %34 = call i32 @v4l2_ctrl_g_ctrl_int64(%struct.v4l2_ctrl* %33)
  %35 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %38 = load %struct.cal_ctx*, %struct.cal_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ctx_dbg(i32 3, %struct.cal_ctx* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %32, %22, %9
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_find(i32, i32) #1

declare dso_local i32 @ctx_err(%struct.cal_ctx*, i8*, i32) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl_int64(%struct.v4l2_ctrl*) #1

declare dso_local i32 @ctx_dbg(i32, %struct.cal_ctx*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
