; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-disp.c_solo_motion_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-disp.c_solo_motion_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32, i32 }

@SOLO_MOT_FLAG_SIZE = common dso_local global i32 0, align 4
@SOLO_MOT_FLAG_AREA = common dso_local global i32 0, align 4
@SOLO_MOT_THRESH_SIZE = common dso_local global i32 0, align 4
@SOLO_DEF_MOT_THRESH = common dso_local global i32 0, align 4
@SOLO_VI_MOT_ADR = common dso_local global i32 0, align 4
@SOLO_VI_MOT_CTRL = common dso_local global i32 0, align 4
@SOLO_VI_MOTION_BORDER = common dso_local global i32 0, align 4
@SOLO_VI_MOTION_BAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.solo_dev*)* @solo_motion_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @solo_motion_config(%struct.solo_dev* %0) #0 {
  %2 = alloca %struct.solo_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %32, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %7 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %4
  %11 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SOLO_MOT_FLAG_SIZE, align 4
  %14 = mul nsw i32 %12, %13
  %15 = load i32, i32* @SOLO_MOT_FLAG_SIZE, align 4
  %16 = call i32 @solo_dma_vin_region(%struct.solo_dev* %11, i32 %14, i32 0, i32 %15)
  %17 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %18 = load i32, i32* @SOLO_MOT_FLAG_AREA, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @SOLO_MOT_THRESH_SIZE, align 4
  %21 = mul nsw i32 %19, %20
  %22 = mul nsw i32 %21, 2
  %23 = add nsw i32 %18, %22
  %24 = load i32, i32* @SOLO_MOT_THRESH_SIZE, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* @SOLO_MOT_THRESH_SIZE, align 4
  %27 = call i32 @solo_dma_vin_region(%struct.solo_dev* %17, i32 %25, i32 0, i32 %26)
  %28 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @SOLO_DEF_MOT_THRESH, align 4
  %31 = call i32 @solo_set_motion_threshold(%struct.solo_dev* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %10
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %4

35:                                               ; preds = %4
  %36 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %37 = load i32, i32* @SOLO_VI_MOT_ADR, align 4
  %38 = call i32 @SOLO_VI_MOTION_EN(i32 0)
  %39 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %40 = call i32 @SOLO_MOTION_EXT_ADDR(%struct.solo_dev* %39)
  %41 = ashr i32 %40, 16
  %42 = or i32 %38, %41
  %43 = call i32 @solo_reg_write(%struct.solo_dev* %36, i32 %37, i32 %42)
  %44 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %45 = load i32, i32* @SOLO_VI_MOT_CTRL, align 4
  %46 = call i32 @SOLO_VI_MOTION_FRAME_COUNT(i32 3)
  %47 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %48 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 16
  %51 = call i32 @SOLO_VI_MOTION_SAMPLE_LENGTH(i32 %50)
  %52 = or i32 %46, %51
  %53 = call i32 @SOLO_VI_MOTION_SAMPLE_COUNT(i32 10)
  %54 = or i32 %52, %53
  %55 = call i32 @solo_reg_write(%struct.solo_dev* %44, i32 %45, i32 %54)
  %56 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %57 = load i32, i32* @SOLO_VI_MOTION_BORDER, align 4
  %58 = call i32 @solo_reg_write(%struct.solo_dev* %56, i32 %57, i32 0)
  %59 = load %struct.solo_dev*, %struct.solo_dev** %2, align 8
  %60 = load i32, i32* @SOLO_VI_MOTION_BAR, align 4
  %61 = call i32 @solo_reg_write(%struct.solo_dev* %59, i32 %60, i32 0)
  ret void
}

declare dso_local i32 @solo_dma_vin_region(%struct.solo_dev*, i32, i32, i32) #1

declare dso_local i32 @solo_set_motion_threshold(%struct.solo_dev*, i32, i32) #1

declare dso_local i32 @solo_reg_write(%struct.solo_dev*, i32, i32) #1

declare dso_local i32 @SOLO_VI_MOTION_EN(i32) #1

declare dso_local i32 @SOLO_MOTION_EXT_ADDR(%struct.solo_dev*) #1

declare dso_local i32 @SOLO_VI_MOTION_FRAME_COUNT(i32) #1

declare dso_local i32 @SOLO_VI_MOTION_SAMPLE_LENGTH(i32) #1

declare dso_local i32 @SOLO_VI_MOTION_SAMPLE_COUNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
