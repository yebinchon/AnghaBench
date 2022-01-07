; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-ctrls.c_s5c73m3_get_af_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-ctrls.c_s5c73m3_get_af_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5c73m3 = type { i32 }
%struct.v4l2_ctrl = type { i32 }

@REG_AF_STATUS = common dso_local global i32 0, align 4
@V4L2_AUTO_FOCUS_STATUS_BUSY = common dso_local global i32 0, align 4
@V4L2_AUTO_FOCUS_STATUS_REACHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown AF status %#x\0A\00", align 1
@V4L2_AUTO_FOCUS_STATUS_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5c73m3*, %struct.v4l2_ctrl*)* @s5c73m3_get_af_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5c73m3_get_af_status(%struct.s5c73m3* %0, %struct.v4l2_ctrl* %1) #0 {
  %3 = alloca %struct.s5c73m3*, align 8
  %4 = alloca %struct.v4l2_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s5c73m3* %0, %struct.s5c73m3** %3, align 8
  store %struct.v4l2_ctrl* %1, %struct.v4l2_ctrl** %4, align 8
  store i32 132, i32* %5, align 4
  %7 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %8 = load i32, i32* @REG_AF_STATUS, align 4
  %9 = call i32 @s5c73m3_read(%struct.s5c73m3* %7, i32 %8, i32* %5)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %19 [
    i32 131, label %11
    i32 134, label %11
    i32 129, label %11
    i32 130, label %15
    i32 135, label %15
    i32 128, label %24
    i32 132, label %24
    i32 133, label %24
  ]

11:                                               ; preds = %2, %2, %2
  %12 = load i32, i32* @V4L2_AUTO_FOCUS_STATUS_BUSY, align 4
  %13 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %28

15:                                               ; preds = %2, %2
  %16 = load i32, i32* @V4L2_AUTO_FOCUS_STATUS_REACHED, align 4
  %17 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %18 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %28

19:                                               ; preds = %2
  %20 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %21 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %20, i32 0, i32 0
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @v4l2_info(i32* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %2, %2, %2, %19
  %25 = load i32, i32* @V4L2_AUTO_FOCUS_STATUS_FAILED, align 4
  %26 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  %27 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %15, %11
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local i32 @s5c73m3_read(%struct.s5c73m3*, i32, i32*) #1

declare dso_local i32 @v4l2_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
