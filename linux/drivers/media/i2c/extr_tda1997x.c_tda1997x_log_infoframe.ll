; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_log_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_log_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tda1997x_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%union.hdmi_infoframe = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"infoframe: addr=%d len=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"failed parsing %d byte infoframe: 0x%04x/0x%02x\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @tda1997x_log_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda1997x_log_infoframe(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tda1997x_state*, align 8
  %7 = alloca %union.hdmi_infoframe, align 4
  %8 = alloca [40 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.tda1997x_state* @to_state(%struct.v4l2_subdev* %11)
  store %struct.tda1997x_state* %12, %struct.tda1997x_state** %6, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds [40 x i32], [40 x i32]* %8, i64 0, i64 0
  %16 = call i32 @io_readn(%struct.v4l2_subdev* %13, i32 %14, i32 160, i32* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @debug, align 4
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @v4l2_dbg(i32 1, i32 %17, %struct.v4l2_subdev* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = getelementptr inbounds [40 x i32], [40 x i32]* %8, i64 0, i64 0
  %23 = call i32 @hdmi_infoframe_unpack(%union.hdmi_infoframe* %7, i32* %22, i32 160)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load %struct.tda1997x_state*, %struct.tda1997x_state** %6, align 8
  %28 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %5, align 4
  %32 = getelementptr inbounds [40 x i32], [40 x i32]* %8, i64 0, i64 0
  %33 = load i32, i32* %32, align 16
  %34 = call i32 @v4l_err(%struct.TYPE_2__* %29, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31, i32 %33)
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %3, align 4
  br label %43

36:                                               ; preds = %2
  %37 = load i32, i32* @KERN_INFO, align 4
  %38 = load %struct.tda1997x_state*, %struct.tda1997x_state** %6, align 8
  %39 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @hdmi_infoframe_log(i32 %37, i32* %41, %union.hdmi_infoframe* %7)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %36, %26
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.tda1997x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @io_readn(%struct.v4l2_subdev*, i32, i32, i32*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32) #1

declare dso_local i32 @hdmi_infoframe_unpack(%union.hdmi_infoframe*, i32*, i32) #1

declare dso_local i32 @v4l_err(%struct.TYPE_2__*, i8*, i32, i32, i32) #1

declare dso_local i32 @hdmi_infoframe_log(i32, i32*, %union.hdmi_infoframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
