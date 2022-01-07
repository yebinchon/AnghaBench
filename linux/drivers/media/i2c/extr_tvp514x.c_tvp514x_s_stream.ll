; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp514x.c_tvp514x_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp514x.c_tvp514x_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tvp514x_decoder = type { i32, i32 }

@REG_OPERATION_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unable to turn off decoder\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Unable to turn on decoder\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unable to detect decoder\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Unable to configure decoder\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @tvp514x_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp514x_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tvp514x_decoder*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.tvp514x_decoder* @to_decoder(%struct.v4l2_subdev* %8)
  store %struct.tvp514x_decoder* %9, %struct.tvp514x_decoder** %7, align 8
  %10 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %7, align 8
  %11 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %68 [
    i32 0, label %18
    i32 1, label %32
  ]

18:                                               ; preds = %16
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %20 = load i32, i32* @REG_OPERATION_MODE, align 4
  %21 = call i32 @tvp514x_write_reg(%struct.v4l2_subdev* %19, i32 %20, i32 1)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %26 = call i32 @v4l2_err(%struct.v4l2_subdev* %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %73

28:                                               ; preds = %18
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %7, align 8
  %31 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %71

32:                                               ; preds = %16
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %34 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %7, align 8
  %35 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @tvp514x_write_regs(%struct.v4l2_subdev* %33, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %42 = call i32 @v4l2_err(%struct.v4l2_subdev* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %73

44:                                               ; preds = %32
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %46 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %7, align 8
  %47 = call i32 @tvp514x_detect(%struct.v4l2_subdev* %45, %struct.tvp514x_decoder* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %52 = call i32 @v4l2_err(%struct.v4l2_subdev* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %73

54:                                               ; preds = %44
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %56 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %7, align 8
  %57 = call i32 @tvp514x_configure(%struct.v4l2_subdev* %55, %struct.tvp514x_decoder* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %62 = call i32 @v4l2_err(%struct.v4l2_subdev* %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %73

64:                                               ; preds = %54
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.tvp514x_decoder*, %struct.tvp514x_decoder** %7, align 8
  %67 = getelementptr inbounds %struct.tvp514x_decoder, %struct.tvp514x_decoder* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %71

68:                                               ; preds = %16
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %64, %28
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %60, %50, %40, %24, %15
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.tvp514x_decoder* @to_decoder(%struct.v4l2_subdev*) #1

declare dso_local i32 @tvp514x_write_reg(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @v4l2_err(%struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @tvp514x_write_regs(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @tvp514x_detect(%struct.v4l2_subdev*, %struct.tvp514x_decoder*) #1

declare dso_local i32 @tvp514x_configure(%struct.v4l2_subdev*, %struct.tvp514x_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
