; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx214.c_imx214_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx214.c_imx214_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx214 = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.imx214_mode = type { i32 }

@mode_table_common = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"could not sent common table %d\0A\00", align 1
@imx214_modes = common dso_local global i32 0, align 4
@width = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not sent mode table %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"could not sync v4l2 controls\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"could not sent start table %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx214*)* @imx214_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx214_start_streaming(%struct.imx214* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx214*, align 8
  %4 = alloca %struct.imx214_mode*, align 8
  %5 = alloca i32, align 4
  store %struct.imx214* %0, %struct.imx214** %3, align 8
  %6 = load %struct.imx214*, %struct.imx214** %3, align 8
  %7 = getelementptr inbounds %struct.imx214, %struct.imx214* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.imx214*, %struct.imx214** %3, align 8
  %10 = load i32, i32* @mode_table_common, align 4
  %11 = call i32 @imx214_write_table(%struct.imx214* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.imx214*, %struct.imx214** %3, align 8
  %16 = getelementptr inbounds %struct.imx214, %struct.imx214* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (i32, i8*, ...) @dev_err(i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %76

20:                                               ; preds = %1
  %21 = load i32, i32* @imx214_modes, align 4
  %22 = load i32, i32* @imx214_modes, align 4
  %23 = call i32 @ARRAY_SIZE(i32 %22)
  %24 = load i32, i32* @width, align 4
  %25 = load i32, i32* @height, align 4
  %26 = load %struct.imx214*, %struct.imx214** %3, align 8
  %27 = getelementptr inbounds %struct.imx214, %struct.imx214* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.imx214*, %struct.imx214** %3, align 8
  %31 = getelementptr inbounds %struct.imx214, %struct.imx214* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.imx214_mode* @v4l2_find_nearest_size(i32 %21, i32 %23, i32 %24, i32 %25, i32 %29, i32 %33)
  store %struct.imx214_mode* %34, %struct.imx214_mode** %4, align 8
  %35 = load %struct.imx214*, %struct.imx214** %3, align 8
  %36 = load %struct.imx214_mode*, %struct.imx214_mode** %4, align 8
  %37 = getelementptr inbounds %struct.imx214_mode, %struct.imx214_mode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @imx214_write_table(%struct.imx214* %35, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %20
  %43 = load %struct.imx214*, %struct.imx214** %3, align 8
  %44 = getelementptr inbounds %struct.imx214, %struct.imx214* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 (i32, i8*, ...) @dev_err(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %76

48:                                               ; preds = %20
  %49 = load %struct.imx214*, %struct.imx214** %3, align 8
  %50 = getelementptr inbounds %struct.imx214, %struct.imx214* %49, i32 0, i32 3
  %51 = call i32 @__v4l2_ctrl_handler_setup(i32* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.imx214*, %struct.imx214** %3, align 8
  %56 = getelementptr inbounds %struct.imx214, %struct.imx214* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %76

59:                                               ; preds = %48
  %60 = load %struct.imx214*, %struct.imx214** %3, align 8
  %61 = getelementptr inbounds %struct.imx214, %struct.imx214* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @regmap_write(i32 %62, i32 256, i32 1)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.imx214*, %struct.imx214** %3, align 8
  %68 = getelementptr inbounds %struct.imx214, %struct.imx214* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 (i32, i8*, ...) @dev_err(i32 %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  br label %76

72:                                               ; preds = %59
  %73 = load %struct.imx214*, %struct.imx214** %3, align 8
  %74 = getelementptr inbounds %struct.imx214, %struct.imx214* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  store i32 0, i32* %2, align 4
  br label %81

76:                                               ; preds = %66, %54, %42, %14
  %77 = load %struct.imx214*, %struct.imx214** %3, align 8
  %78 = getelementptr inbounds %struct.imx214, %struct.imx214* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %76, %72
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @imx214_write_table(%struct.imx214*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.imx214_mode* @v4l2_find_nearest_size(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @__v4l2_ctrl_handler_setup(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
