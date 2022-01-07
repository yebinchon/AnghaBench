; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_hw_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_hw_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.s5k5baf = type { i64, i32, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32 }

@s5k5baf_formats = common dso_local global %struct.TYPE_2__* null, align 8
@PCLK_MAX_FREQ = common dso_local global i32 0, align 4
@PCLK_MIN_FREQ = common dso_local global i32 0, align 4
@PVI_MASK_MIPI = common dso_local global i32 0, align 4
@CLK_MIPI_INDEX = common dso_local global i32 0, align 4
@FR_RATE_FIXED = common dso_local global i32 0, align 4
@FR_RATE_Q_DYNAMIC = common dso_local global i32 0, align 4
@S5K5BAF_MIN_FR_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5k5baf*)* @s5k5baf_hw_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5k5baf_hw_set_config(%struct.s5k5baf* %0) #0 {
  %2 = alloca %struct.s5k5baf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_rect*, align 8
  store %struct.s5k5baf* %0, %struct.s5k5baf** %2, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s5k5baf_formats, align 8
  %6 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %7 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %13 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %12, i32 0, i32 2
  store %struct.v4l2_rect* %13, %struct.v4l2_rect** %4, align 8
  %14 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %15 = call i32 @REG_P_OUT_WIDTH(i32 0)
  %16 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %17 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %20 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @PCLK_MAX_FREQ, align 4
  %24 = ashr i32 %23, 2
  %25 = load i32, i32* @PCLK_MIN_FREQ, align 4
  %26 = ashr i32 %25, 2
  %27 = load i32, i32* @PVI_MASK_MIPI, align 4
  %28 = load i32, i32* @CLK_MIPI_INDEX, align 4
  %29 = load i32, i32* @FR_RATE_FIXED, align 4
  %30 = load i32, i32* @FR_RATE_Q_DYNAMIC, align 4
  %31 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %32 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @S5K5BAF_MIN_FR_TIME, align 4
  %35 = call i32 @s5k5baf_write_seq(%struct.s5k5baf* %14, i32 %15, i32 %18, i32 %21, i32 %22, i32 %24, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %33, i32 %34)
  %36 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %37 = call i32 @s5k5baf_hw_sync_cfg(%struct.s5k5baf* %36)
  %38 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %39 = call i32 @s5k5baf_hw_validate_cfg(%struct.s5k5baf* %38)
  ret void
}

declare dso_local i32 @s5k5baf_write_seq(%struct.s5k5baf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_P_OUT_WIDTH(i32) #1

declare dso_local i32 @s5k5baf_hw_sync_cfg(%struct.s5k5baf*) #1

declare dso_local i32 @s5k5baf_hw_validate_cfg(%struct.s5k5baf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
