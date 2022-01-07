; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_g_input_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_g_input_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tda1997x_state = type { i32, i32* }

@REG_V_PER = common dso_local global i32 0, align 4
@MASK_VPER = common dso_local global i32 0, align 4
@REG_H_PER = common dso_local global i32 0, align 4
@MASK_HPER = common dso_local global i32 0, align 4
@REG_HS_WIDTH = common dso_local global i32 0, align 4
@MASK_HSWIDTH = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"inputs:%d/%d timings:%d/%d/%d\0A\00", align 1
@V4L2_IN_ST_NO_SIGNAL = common dso_local global i32 0, align 4
@V4L2_IN_ST_NO_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32*)* @tda1997x_g_input_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda1997x_g_input_status(%struct.v4l2_subdev* %0, i32* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tda1997x_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call %struct.tda1997x_state* @to_state(%struct.v4l2_subdev* %9)
  store %struct.tda1997x_state* %10, %struct.tda1997x_state** %5, align 8
  %11 = load %struct.tda1997x_state*, %struct.tda1997x_state** %5, align 8
  %12 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %15 = load i32, i32* @REG_V_PER, align 4
  %16 = call i32 @io_read24(%struct.v4l2_subdev* %14, i32 %15)
  %17 = load i32, i32* @MASK_VPER, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %20 = load i32, i32* @REG_H_PER, align 4
  %21 = call i32 @io_read16(%struct.v4l2_subdev* %19, i32 %20)
  %22 = load i32, i32* @MASK_HPER, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %25 = load i32, i32* @REG_HS_WIDTH, align 4
  %26 = call i32 @io_read16(%struct.v4l2_subdev* %24, i32 %25)
  %27 = load i32, i32* @MASK_HSWIDTH, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @debug, align 4
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %31 = load %struct.tda1997x_state*, %struct.tda1997x_state** %5, align 8
  %32 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tda1997x_state*, %struct.tda1997x_state** %5, align 8
  %37 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @v4l2_dbg(i32 1, i32 %29, %struct.v4l2_subdev* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.tda1997x_state*, %struct.tda1997x_state** %5, align 8
  %46 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %2
  %52 = load %struct.tda1997x_state*, %struct.tda1997x_state** %5, align 8
  %53 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @V4L2_IN_ST_NO_SIGNAL, align 4
  %60 = load i32*, i32** %4, align 8
  store i32 %59, i32* %60, align 4
  br label %76

61:                                               ; preds = %51, %2
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67, %64, %61
  %71 = load i32, i32* @V4L2_IN_ST_NO_SYNC, align 4
  %72 = load i32*, i32** %4, align 8
  store i32 %71, i32* %72, align 4
  br label %75

73:                                               ; preds = %67
  %74 = load i32*, i32** %4, align 8
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %73, %70
  br label %76

76:                                               ; preds = %75, %58
  %77 = load %struct.tda1997x_state*, %struct.tda1997x_state** %5, align 8
  %78 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  ret i32 0
}

declare dso_local %struct.tda1997x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @io_read24(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @io_read16(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
