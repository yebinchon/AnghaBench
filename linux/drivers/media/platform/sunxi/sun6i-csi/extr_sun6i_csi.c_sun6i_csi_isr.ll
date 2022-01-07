; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_sun6i_csi_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_sun6i_csi_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_csi_dev = type { %struct.TYPE_2__, %struct.regmap* }
%struct.TYPE_2__ = type { i32 }
%struct.regmap = type { i32 }

@CSI_CH_INT_STA_REG = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@CSI_CH_INT_STA_FIFO0_OF_PD = common dso_local global i32 0, align 4
@CSI_CH_INT_STA_FIFO1_OF_PD = common dso_local global i32 0, align 4
@CSI_CH_INT_STA_FIFO2_OF_PD = common dso_local global i32 0, align 4
@CSI_CH_INT_STA_HB_OF_PD = common dso_local global i32 0, align 4
@CSI_EN_REG = common dso_local global i32 0, align 4
@CSI_EN_CSI_EN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@CSI_CH_INT_STA_FD_PD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sun6i_csi_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_csi_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sun6i_csi_dev*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.sun6i_csi_dev*
  store %struct.sun6i_csi_dev* %10, %struct.sun6i_csi_dev** %6, align 8
  %11 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %6, align 8
  %12 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %11, i32 0, i32 1
  %13 = load %struct.regmap*, %struct.regmap** %12, align 8
  store %struct.regmap* %13, %struct.regmap** %7, align 8
  %14 = load %struct.regmap*, %struct.regmap** %7, align 8
  %15 = load i32, i32* @CSI_CH_INT_STA_REG, align 4
  %16 = call i32 @regmap_read(%struct.regmap* %14, i32 %15, i32* %8)
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, 255
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %73

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @CSI_CH_INT_STA_FIFO0_OF_PD, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @CSI_CH_INT_STA_FIFO1_OF_PD, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @CSI_CH_INT_STA_FIFO2_OF_PD, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @CSI_CH_INT_STA_HB_OF_PD, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %37, %32, %27, %22
  %43 = load %struct.regmap*, %struct.regmap** %7, align 8
  %44 = load i32, i32* @CSI_CH_INT_STA_REG, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @regmap_write(%struct.regmap* %43, i32 %44, i32 %45)
  %47 = load %struct.regmap*, %struct.regmap** %7, align 8
  %48 = load i32, i32* @CSI_EN_REG, align 4
  %49 = load i32, i32* @CSI_EN_CSI_EN, align 4
  %50 = call i32 @regmap_update_bits(%struct.regmap* %47, i32 %48, i32 %49, i32 0)
  %51 = load %struct.regmap*, %struct.regmap** %7, align 8
  %52 = load i32, i32* @CSI_EN_REG, align 4
  %53 = load i32, i32* @CSI_EN_CSI_EN, align 4
  %54 = load i32, i32* @CSI_EN_CSI_EN, align 4
  %55 = call i32 @regmap_update_bits(%struct.regmap* %51, i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %56, i32* %3, align 4
  br label %73

57:                                               ; preds = %37
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @CSI_CH_INT_STA_FD_PD, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %6, align 8
  %64 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @sun6i_video_frame_done(i32* %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.regmap*, %struct.regmap** %7, align 8
  %69 = load i32, i32* @CSI_CH_INT_STA_REG, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @regmap_write(%struct.regmap* %68, i32 %69, i32 %70)
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %67, %42, %20
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @sun6i_video_frame_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
