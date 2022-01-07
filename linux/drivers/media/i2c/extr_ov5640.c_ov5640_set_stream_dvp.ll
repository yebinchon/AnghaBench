; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_stream_dvp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_stream_dvp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5640_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@V4L2_MBUS_PCLK_SAMPLE_RISING = common dso_local global i32 0, align 4
@V4L2_MBUS_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@V4L2_MBUS_VSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@OV5640_REG_POLARITY_CTRL00 = common dso_local global i32 0, align 4
@OV5640_REG_IO_MIPI_CTRL00 = common dso_local global i32 0, align 4
@OV5640_REG_PAD_OUTPUT_ENABLE01 = common dso_local global i32 0, align 4
@OV5640_REG_PAD_OUTPUT_ENABLE02 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5640_dev*, i32)* @ov5640_set_stream_dvp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_set_stream_dvp(%struct.ov5640_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov5640_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ov5640_dev* %0, %struct.ov5640_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %12 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @V4L2_MBUS_PCLK_SAMPLE_RISING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 1, i32* %8, align 4
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @V4L2_MBUS_HSYNC_ACTIVE_HIGH, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 1, i32* %9, align 4
  br label %31

31:                                               ; preds = %30, %25
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @V4L2_MBUS_VSYNC_ACTIVE_LOW, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 1, i32* %10, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %39 = load i32, i32* @OV5640_REG_POLARITY_CTRL00, align 4
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 %40, 5
  %42 = load i32, i32* %9, align 4
  %43 = shl i32 %42, 1
  %44 = or i32 %41, %43
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @ov5640_write_reg(%struct.ov5640_dev* %38, i32 %39, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %85

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %2
  %54 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %55 = load i32, i32* @OV5640_REG_IO_MIPI_CTRL00, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 24, i32 0
  %60 = call i32 @ov5640_write_reg(%struct.ov5640_dev* %54, i32 %55, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %85

65:                                               ; preds = %53
  %66 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %67 = load i32, i32* @OV5640_REG_PAD_OUTPUT_ENABLE01, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 127, i32 0
  %72 = call i32 @ov5640_write_reg(%struct.ov5640_dev* %66, i32 %67, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %85

77:                                               ; preds = %65
  %78 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %79 = load i32, i32* @OV5640_REG_PAD_OUTPUT_ENABLE02, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 252, i32 0
  %84 = call i32 @ov5640_write_reg(%struct.ov5640_dev* %78, i32 %79, i32 %83)
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %77, %75, %63, %50
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @ov5640_write_reg(%struct.ov5640_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
