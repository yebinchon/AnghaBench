; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_framefmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_framefmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5640_dev = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32 }

@OV5640_FMT_MUX_YUV422 = common dso_local global i32 0, align 4
@OV5640_FMT_MUX_RGB = common dso_local global i32 0, align 4
@OV5640_FMT_MUX_RAW_DPC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OV5640_REG_FORMAT_CONTROL00 = common dso_local global i32 0, align 4
@OV5640_REG_ISP_FORMAT_MUX_CTRL = common dso_local global i32 0, align 4
@OV5640_REG_TIMING_TC_REG21 = common dso_local global i32 0, align 4
@OV5640_REG_SYS_RESET02 = common dso_local global i32 0, align 4
@OV5640_REG_SYS_CLOCK_ENABLE02 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5640_dev*, %struct.v4l2_mbus_framefmt*)* @ov5640_set_framefmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_set_framefmt(%struct.ov5640_dev* %0, %struct.v4l2_mbus_framefmt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov5640_dev*, align 8
  %5 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ov5640_dev* %0, %struct.ov5640_dev** %4, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %31 [
    i32 129, label %13
    i32 128, label %15
    i32 134, label %17
    i32 135, label %19
    i32 136, label %21
    i32 133, label %23
    i32 132, label %25
    i32 131, label %27
    i32 130, label %29
  ]

13:                                               ; preds = %2
  store i32 63, i32* %8, align 4
  %14 = load i32, i32* @OV5640_FMT_MUX_YUV422, align 4
  store i32 %14, i32* %9, align 4
  br label %34

15:                                               ; preds = %2
  store i32 48, i32* %8, align 4
  %16 = load i32, i32* @OV5640_FMT_MUX_YUV422, align 4
  store i32 %16, i32* %9, align 4
  br label %34

17:                                               ; preds = %2
  store i32 111, i32* %8, align 4
  %18 = load i32, i32* @OV5640_FMT_MUX_RGB, align 4
  store i32 %18, i32* %9, align 4
  br label %34

19:                                               ; preds = %2
  store i32 97, i32* %8, align 4
  %20 = load i32, i32* @OV5640_FMT_MUX_RGB, align 4
  store i32 %20, i32* %9, align 4
  br label %34

21:                                               ; preds = %2
  store i32 48, i32* %8, align 4
  %22 = load i32, i32* @OV5640_FMT_MUX_YUV422, align 4
  store i32 %22, i32* %9, align 4
  store i32 1, i32* %7, align 4
  br label %34

23:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %24 = load i32, i32* @OV5640_FMT_MUX_RAW_DPC, align 4
  store i32 %24, i32* %9, align 4
  br label %34

25:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  %26 = load i32, i32* @OV5640_FMT_MUX_RAW_DPC, align 4
  store i32 %26, i32* %9, align 4
  br label %34

27:                                               ; preds = %2
  store i32 2, i32* %8, align 4
  %28 = load i32, i32* @OV5640_FMT_MUX_RAW_DPC, align 4
  store i32 %28, i32* %9, align 4
  br label %34

29:                                               ; preds = %2
  store i32 3, i32* %8, align 4
  %30 = load i32, i32* @OV5640_FMT_MUX_RAW_DPC, align 4
  store i32 %30, i32* %9, align 4
  br label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %108

34:                                               ; preds = %29, %27, %25, %23, %21, %19, %17, %15, %13
  %35 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %36 = load i32, i32* @OV5640_REG_FORMAT_CONTROL00, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @ov5640_write_reg(%struct.ov5640_dev* %35, i32 %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %108

43:                                               ; preds = %34
  %44 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %45 = load i32, i32* @OV5640_REG_ISP_FORMAT_MUX_CTRL, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @ov5640_write_reg(%struct.ov5640_dev* %44, i32 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %108

52:                                               ; preds = %43
  %53 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %54 = load i32, i32* @OV5640_REG_TIMING_TC_REG21, align 4
  %55 = call i32 @BIT(i32 5)
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i32 @BIT(i32 5)
  br label %61

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  %63 = call i32 @ov5640_mod_reg(%struct.ov5640_dev* %53, i32 %54, i32 %55, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %108

68:                                               ; preds = %61
  %69 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %70 = load i32, i32* @OV5640_REG_SYS_RESET02, align 4
  %71 = call i32 @BIT(i32 4)
  %72 = call i32 @BIT(i32 3)
  %73 = or i32 %71, %72
  %74 = call i32 @BIT(i32 2)
  %75 = or i32 %73, %74
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %85

79:                                               ; preds = %68
  %80 = call i32 @BIT(i32 4)
  %81 = call i32 @BIT(i32 3)
  %82 = or i32 %80, %81
  %83 = call i32 @BIT(i32 2)
  %84 = or i32 %82, %83
  br label %85

85:                                               ; preds = %79, %78
  %86 = phi i32 [ 0, %78 ], [ %84, %79 ]
  %87 = call i32 @ov5640_mod_reg(%struct.ov5640_dev* %69, i32 %70, i32 %75, i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %108

92:                                               ; preds = %85
  %93 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %94 = load i32, i32* @OV5640_REG_SYS_CLOCK_ENABLE02, align 4
  %95 = call i32 @BIT(i32 5)
  %96 = call i32 @BIT(i32 3)
  %97 = or i32 %95, %96
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %92
  %101 = call i32 @BIT(i32 5)
  %102 = call i32 @BIT(i32 3)
  %103 = or i32 %101, %102
  br label %105

104:                                              ; preds = %92
  br label %105

105:                                              ; preds = %104, %100
  %106 = phi i32 [ %103, %100 ], [ 0, %104 ]
  %107 = call i32 @ov5640_mod_reg(%struct.ov5640_dev* %93, i32 %94, i32 %97, i32 %106)
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %105, %90, %66, %50, %41, %31
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @ov5640_write_reg(%struct.ov5640_dev*, i32, i32) #1

declare dso_local i32 @ov5640_mod_reg(%struct.ov5640_dev*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
