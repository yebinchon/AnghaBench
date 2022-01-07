; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_identify_module.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_identify_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda1997x_state = type { i32, i32, i32, i32, i8*, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.v4l2_subdev }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_subdev = type { i32 }

@REG_CMTP_REG10 = common dso_local global i32 0, align 4
@TDA19971 = common dso_local global i32 0, align 4
@TDA19973 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unsupported chip ID\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"chip id mismatch\0A\00", align 1
@REG_CMTP_REG11 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda1997x_state*)* @tda1997x_identify_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda1997x_identify_module(%struct.tda1997x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tda1997x_state*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tda1997x_state* %0, %struct.tda1997x_state** %3, align 8
  %7 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %8 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %7, i32 0, i32 7
  store %struct.v4l2_subdev* %8, %struct.v4l2_subdev** %4, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = load i32, i32* @REG_CMTP_REG10, align 4
  %11 = call i8* @io_read(%struct.v4l2_subdev* %9, i32 %10)
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = ashr i32 %13, 6
  %15 = and i32 %14, 1
  %16 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %17 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, 5
  %20 = and i32 %19, 1
  %21 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %22 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 2
  %25 = and i32 %24, 3
  %26 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %27 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = ashr i32 %28, 1
  %30 = and i32 %29, 1
  %31 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %32 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = ashr i32 %33, 4
  %35 = and i32 %34, 3
  switch i32 %35, label %40 [
    i32 0, label %36
    i32 2, label %38
    i32 3, label %38
  ]

36:                                               ; preds = %1
  %37 = load i32, i32* @TDA19971, align 4
  store i32 %37, i32* %5, align 4
  br label %48

38:                                               ; preds = %1, %1
  %39 = load i32, i32* @TDA19973, align 4
  store i32 %39, i32* %5, align 4
  br label %48

40:                                               ; preds = %1
  %41 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %42 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %41, i32 0, i32 5
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %70

48:                                               ; preds = %38, %36
  %49 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %50 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %49, i32 0, i32 6
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %58 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %57, i32 0, i32 5
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %70

64:                                               ; preds = %48
  %65 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %66 = load i32, i32* @REG_CMTP_REG11, align 4
  %67 = call i8* @io_read(%struct.v4l2_subdev* %65, i32 %66)
  %68 = load %struct.tda1997x_state*, %struct.tda1997x_state** %3, align 8
  %69 = getelementptr inbounds %struct.tda1997x_state, %struct.tda1997x_state* %68, i32 0, i32 4
  store i8* %67, i8** %69, align 8
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %64, %56, %40
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i8* @io_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
