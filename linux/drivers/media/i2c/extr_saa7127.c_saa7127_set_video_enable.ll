; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7127.c_saa7127_set_video_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7127.c_saa7127_set_video_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa7127_state = type { i32, i32, i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Enable Video Output\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Disable Video Output\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @saa7127_set_video_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7127_set_video_enable(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.saa7127_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.saa7127_state* @to_state(%struct.v4l2_subdev* %6)
  store %struct.saa7127_state* %7, %struct.saa7127_state** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load i32, i32* @debug, align 4
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %13 = call i32 @v4l2_dbg(i32 1, i32 %11, %struct.v4l2_subdev* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %15 = load %struct.saa7127_state*, %struct.saa7127_state** %5, align 8
  %16 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @saa7127_write(%struct.v4l2_subdev* %14, i32 45, i32 %17)
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %20 = load %struct.saa7127_state*, %struct.saa7127_state** %5, align 8
  %21 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @saa7127_write(%struct.v4l2_subdev* %19, i32 97, i32 %22)
  br label %40

24:                                               ; preds = %2
  %25 = load i32, i32* @debug, align 4
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %27 = call i32 @v4l2_dbg(i32 1, i32 %25, %struct.v4l2_subdev* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %29 = load %struct.saa7127_state*, %struct.saa7127_state** %5, align 8
  %30 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 240
  %33 = call i32 @saa7127_write(%struct.v4l2_subdev* %28, i32 45, i32 %32)
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %35 = load %struct.saa7127_state*, %struct.saa7127_state** %5, align 8
  %36 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, 192
  %39 = call i32 @saa7127_write(%struct.v4l2_subdev* %34, i32 97, i32 %38)
  br label %40

40:                                               ; preds = %24, %10
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.saa7127_state*, %struct.saa7127_state** %5, align 8
  %43 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  ret i32 0
}

declare dso_local %struct.saa7127_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @saa7127_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
