; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5640.c_ov5640_set_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5640_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ov5640_mode_info = type { i32, i32, i32, i32 }

@MEDIA_BUS_FMT_JPEG_1X8 = common dso_local global i64 0, align 8
@OV5640_REG_TIMING_DVPHO = common dso_local global i32 0, align 4
@OV5640_REG_TIMING_DVPVO = common dso_local global i32 0, align 4
@OV5640_REG_TIMING_HTS = common dso_local global i32 0, align 4
@OV5640_REG_TIMING_VTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5640_dev*, %struct.ov5640_mode_info*)* @ov5640_set_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5640_set_timings(%struct.ov5640_dev* %0, %struct.ov5640_mode_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov5640_dev*, align 8
  %5 = alloca %struct.ov5640_mode_info*, align 8
  %6 = alloca i32, align 4
  store %struct.ov5640_dev* %0, %struct.ov5640_dev** %4, align 8
  store %struct.ov5640_mode_info* %1, %struct.ov5640_mode_info** %5, align 8
  %7 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %8 = getelementptr inbounds %struct.ov5640_dev, %struct.ov5640_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MEDIA_BUS_FMT_JPEG_1X8, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %15 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %5, align 8
  %16 = call i32 @ov5640_set_jpeg_timings(%struct.ov5640_dev* %14, %struct.ov5640_mode_info* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %62

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %2
  %23 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %24 = load i32, i32* @OV5640_REG_TIMING_DVPHO, align 4
  %25 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %5, align 8
  %26 = getelementptr inbounds %struct.ov5640_mode_info, %struct.ov5640_mode_info* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ov5640_write_reg16(%struct.ov5640_dev* %23, i32 %24, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %62

33:                                               ; preds = %22
  %34 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %35 = load i32, i32* @OV5640_REG_TIMING_DVPVO, align 4
  %36 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %5, align 8
  %37 = getelementptr inbounds %struct.ov5640_mode_info, %struct.ov5640_mode_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ov5640_write_reg16(%struct.ov5640_dev* %34, i32 %35, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %62

44:                                               ; preds = %33
  %45 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %46 = load i32, i32* @OV5640_REG_TIMING_HTS, align 4
  %47 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %5, align 8
  %48 = getelementptr inbounds %struct.ov5640_mode_info, %struct.ov5640_mode_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ov5640_write_reg16(%struct.ov5640_dev* %45, i32 %46, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %62

55:                                               ; preds = %44
  %56 = load %struct.ov5640_dev*, %struct.ov5640_dev** %4, align 8
  %57 = load i32, i32* @OV5640_REG_TIMING_VTS, align 4
  %58 = load %struct.ov5640_mode_info*, %struct.ov5640_mode_info** %5, align 8
  %59 = getelementptr inbounds %struct.ov5640_mode_info, %struct.ov5640_mode_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ov5640_write_reg16(%struct.ov5640_dev* %56, i32 %57, i32 %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %55, %53, %42, %31, %19
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @ov5640_set_jpeg_timings(%struct.ov5640_dev*, %struct.ov5640_mode_info*) #1

declare dso_local i32 @ov5640_write_reg16(%struct.ov5640_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
