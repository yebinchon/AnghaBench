; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5640_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@V4L2_MBUS_CSI2_DPHY = common dso_local global i64 0, align 8
@OV5640_REG_IO_MIPI_CTRL00 = common dso_local global i32 0, align 4
@OV5640_REG_MIPI_CTRL00 = common dso_local global i32 0, align 4
@OV5640_REG_PAD_OUTPUT00 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5640_dev*, i32)* @ov5640_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_set_power(%struct.ov5640_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov5640_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ov5640_dev* %0, %struct.ov5640_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %53

9:                                                ; preds = %2
  %10 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %11 = call i32 @ov5640_set_power_on(%struct.ov5640_dev* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %78

16:                                               ; preds = %9
  %17 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %18 = call i32 @ov5640_restore_mode(%struct.ov5640_dev* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %74

22:                                               ; preds = %16
  %23 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %24 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @V4L2_MBUS_CSI2_DPHY, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %78

30:                                               ; preds = %22
  %31 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %32 = load i32, i32* @OV5640_REG_IO_MIPI_CTRL00, align 4
  %33 = call i32 @ov5640_write_reg(%struct.ov5640_dev* %31, i32 %32, i32 64)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %74

37:                                               ; preds = %30
  %38 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %39 = load i32, i32* @OV5640_REG_MIPI_CTRL00, align 4
  %40 = call i32 @ov5640_write_reg(%struct.ov5640_dev* %38, i32 %39, i32 36)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %74

44:                                               ; preds = %37
  %45 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %46 = load i32, i32* @OV5640_REG_PAD_OUTPUT00, align 4
  %47 = call i32 @ov5640_write_reg(%struct.ov5640_dev* %45, i32 %46, i32 112)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %74

51:                                               ; preds = %44
  %52 = call i32 @usleep_range(i32 500, i32 1000)
  br label %73

53:                                               ; preds = %2
  %54 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %55 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @V4L2_MBUS_CSI2_DPHY, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %62 = load i32, i32* @OV5640_REG_IO_MIPI_CTRL00, align 4
  %63 = call i32 @ov5640_write_reg(%struct.ov5640_dev* %61, i32 %62, i32 88)
  %64 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %65 = load i32, i32* @OV5640_REG_MIPI_CTRL00, align 4
  %66 = call i32 @ov5640_write_reg(%struct.ov5640_dev* %64, i32 %65, i32 4)
  %67 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %68 = load i32, i32* @OV5640_REG_PAD_OUTPUT00, align 4
  %69 = call i32 @ov5640_write_reg(%struct.ov5640_dev* %67, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %60, %53
  %71 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %72 = call i32 @ov5640_set_power_off(%struct.ov5640_dev* %71)
  br label %73

73:                                               ; preds = %70, %51
  store i32 0, i32* %3, align 4
  br label %78

74:                                               ; preds = %50, %43, %36, %21
  %75 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %76 = call i32 @ov5640_set_power_off(%struct.ov5640_dev* %75)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %73, %29, %14
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @ov5640_set_power_on(%struct.ov5640_dev*) #1

declare dso_local i32 @ov5640_restore_mode(%struct.ov5640_dev*) #1

declare dso_local i32 @ov5640_write_reg(%struct.ov5640_dev*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ov5640_set_power_off(%struct.ov5640_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
