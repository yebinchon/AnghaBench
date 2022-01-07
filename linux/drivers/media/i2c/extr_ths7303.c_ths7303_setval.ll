; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ths7303.c_ths7303_setval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ths7303.c_ths7303_setval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.ths7303_state = type { %struct.ths7303_platform_data* }
%struct.ths7303_platform_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@THS7303_CHANNEL_1 = common dso_local global i32 0, align 4
@THS7303_CHANNEL_2 = common dso_local global i32 0, align 4
@THS7303_CHANNEL_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"write byte data failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ths7303_setval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ths7303_setval(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.ths7303_state*, align 8
  %8 = alloca %struct.ths7303_platform_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %14 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %6, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %16 = call %struct.ths7303_state* @to_state(%struct.v4l2_subdev* %15)
  store %struct.ths7303_state* %16, %struct.ths7303_state** %7, align 8
  %17 = load %struct.ths7303_state*, %struct.ths7303_state** %7, align 8
  %18 = getelementptr inbounds %struct.ths7303_state, %struct.ths7303_state* %17, i32 0, i32 0
  %19 = load %struct.ths7303_platform_data*, %struct.ths7303_platform_data** %18, align 8
  store %struct.ths7303_platform_data* %19, %struct.ths7303_platform_data** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %20 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %21 = icmp ne %struct.i2c_client* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %105

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %31 [
    i32 131, label %27
    i32 128, label %28
    i32 129, label %29
    i32 130, label %30
  ]

27:                                               ; preds = %25
  store i32 3, i32* %10, align 4
  br label %32

28:                                               ; preds = %25
  store i32 2, i32* %10, align 4
  br label %32

29:                                               ; preds = %25
  store i32 1, i32* %10, align 4
  br label %32

30:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  br label %32

31:                                               ; preds = %25
  store i32 1, i32* %12, align 4
  br label %32

32:                                               ; preds = %31, %30, %29, %28, %27
  %33 = load i32, i32* %10, align 4
  %34 = shl i32 %33, 6
  %35 = load i32, i32* %10, align 4
  %36 = shl i32 %35, 3
  %37 = or i32 %34, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %32
  %41 = load %struct.ths7303_platform_data*, %struct.ths7303_platform_data** %8, align 8
  %42 = getelementptr inbounds %struct.ths7303_platform_data, %struct.ths7303_platform_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 39
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %40, %32
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %49 = load i32, i32* @THS7303_CHANNEL_1, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @ths7303_write(%struct.v4l2_subdev* %48, i32 %49, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %102

55:                                               ; preds = %47
  %56 = load i32, i32* %10, align 4
  %57 = shl i32 %56, 6
  %58 = load i32, i32* %10, align 4
  %59 = shl i32 %58, 3
  %60 = or i32 %57, %59
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %55
  %64 = load %struct.ths7303_platform_data*, %struct.ths7303_platform_data** %8, align 8
  %65 = getelementptr inbounds %struct.ths7303_platform_data, %struct.ths7303_platform_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 39
  %68 = load i32, i32* %9, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %63, %55
  %71 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %72 = load i32, i32* @THS7303_CHANNEL_2, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @ths7303_write(%struct.v4l2_subdev* %71, i32 %72, i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %102

78:                                               ; preds = %70
  %79 = load i32, i32* %10, align 4
  %80 = shl i32 %79, 6
  %81 = load i32, i32* %10, align 4
  %82 = shl i32 %81, 3
  %83 = or i32 %80, %82
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %78
  %87 = load %struct.ths7303_platform_data*, %struct.ths7303_platform_data** %8, align 8
  %88 = getelementptr inbounds %struct.ths7303_platform_data, %struct.ths7303_platform_data* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 39
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %86, %78
  %94 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %95 = load i32, i32* @THS7303_CHANNEL_3, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @ths7303_write(%struct.v4l2_subdev* %94, i32 %95, i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %102

101:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %105

102:                                              ; preds = %100, %77, %54
  %103 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %102, %101, %22
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.ths7303_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @ths7303_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
