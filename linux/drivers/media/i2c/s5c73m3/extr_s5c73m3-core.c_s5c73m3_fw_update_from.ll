; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_fw_update_from.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_fw_update_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5c73m3 = type { %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@COMM_FW_UPDATE_NOT_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Updating F-ROM firmware.\0A\00", align 1
@COMM_FW_UPDATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Updating F-ROM firmware failed.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Updating F-ROM firmware finished.\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Updating F-ROM firmware timed-out.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5c73m3*)* @s5c73m3_fw_update_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5c73m3_fw_update_from(%struct.s5c73m3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5c73m3*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.s5c73m3* %0, %struct.s5c73m3** %3, align 8
  %8 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %9 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %8, i32 0, i32 0
  store %struct.v4l2_subdev* %9, %struct.v4l2_subdev** %4, align 8
  %10 = load i32, i32* @COMM_FW_UPDATE_NOT_READY, align 4
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call i32 @v4l2_warn(%struct.v4l2_subdev* %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %47, %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @COMM_FW_UPDATE_NOT_READY, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %19 = load i32, i32* @COMM_FW_UPDATE, align 4
  %20 = call i32 @s5c73m3_isp_command(%struct.s5c73m3* %18, i32 %19, i32 0)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %55

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %13
  %27 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %28 = call i32 @s5c73m3_read(%struct.s5c73m3* %27, i32 612614, i32* %5)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %55

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  switch i32 %34, label %43 [
    i32 129, label %35
    i32 128, label %40
  ]

35:                                               ; preds = %33
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %37 = call i32 @v4l2_warn(%struct.v4l2_subdev* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %55

40:                                               ; preds = %33
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %42 = call i32 @v4l2_warn(%struct.v4l2_subdev* %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %55

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = call i32 @msleep(i32 20)
  br label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 500
  br i1 %49, label %13, label %50

50:                                               ; preds = %47
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %52 = call i32 @v4l2_warn(%struct.v4l2_subdev* %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* @ETIMEDOUT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %50, %40, %35, %31, %23
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @v4l2_warn(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @s5c73m3_isp_command(%struct.s5c73m3*, i32, i32) #1

declare dso_local i32 @s5c73m3_read(%struct.s5c73m3*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
