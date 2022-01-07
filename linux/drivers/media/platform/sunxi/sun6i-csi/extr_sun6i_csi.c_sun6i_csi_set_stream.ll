; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_sun6i_csi_set_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_sun6i_csi_set_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_csi = type { i32 }
%struct.sun6i_csi_dev = type { %struct.regmap* }
%struct.regmap = type { i32 }

@CSI_CAP_REG = common dso_local global i32 0, align 4
@CSI_CAP_CH0_VCAP_ON = common dso_local global i32 0, align 4
@CSI_CH_INT_EN_REG = common dso_local global i32 0, align 4
@CSI_CH_INT_STA_REG = common dso_local global i32 0, align 4
@CSI_CH_INT_EN_HB_OF_INT_EN = common dso_local global i32 0, align 4
@CSI_CH_INT_EN_FIFO2_OF_INT_EN = common dso_local global i32 0, align 4
@CSI_CH_INT_EN_FIFO1_OF_INT_EN = common dso_local global i32 0, align 4
@CSI_CH_INT_EN_FIFO0_OF_INT_EN = common dso_local global i32 0, align 4
@CSI_CH_INT_EN_FD_INT_EN = common dso_local global i32 0, align 4
@CSI_CH_INT_EN_CD_INT_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sun6i_csi_set_stream(%struct.sun6i_csi* %0, i32 %1) #0 {
  %3 = alloca %struct.sun6i_csi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sun6i_csi_dev*, align 8
  %6 = alloca %struct.regmap*, align 8
  store %struct.sun6i_csi* %0, %struct.sun6i_csi** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %8 = call %struct.sun6i_csi_dev* @sun6i_csi_to_dev(%struct.sun6i_csi* %7)
  store %struct.sun6i_csi_dev* %8, %struct.sun6i_csi_dev** %5, align 8
  %9 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %5, align 8
  %10 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %9, i32 0, i32 0
  %11 = load %struct.regmap*, %struct.regmap** %10, align 8
  store %struct.regmap* %11, %struct.regmap** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load %struct.regmap*, %struct.regmap** %6, align 8
  %16 = load i32, i32* @CSI_CAP_REG, align 4
  %17 = load i32, i32* @CSI_CAP_CH0_VCAP_ON, align 4
  %18 = call i32 @regmap_update_bits(%struct.regmap* %15, i32 %16, i32 %17, i32 0)
  %19 = load %struct.regmap*, %struct.regmap** %6, align 8
  %20 = load i32, i32* @CSI_CH_INT_EN_REG, align 4
  %21 = call i32 @regmap_write(%struct.regmap* %19, i32 %20, i32 0)
  br label %45

22:                                               ; preds = %2
  %23 = load %struct.regmap*, %struct.regmap** %6, align 8
  %24 = load i32, i32* @CSI_CH_INT_STA_REG, align 4
  %25 = call i32 @regmap_write(%struct.regmap* %23, i32 %24, i32 255)
  %26 = load %struct.regmap*, %struct.regmap** %6, align 8
  %27 = load i32, i32* @CSI_CH_INT_EN_REG, align 4
  %28 = load i32, i32* @CSI_CH_INT_EN_HB_OF_INT_EN, align 4
  %29 = load i32, i32* @CSI_CH_INT_EN_FIFO2_OF_INT_EN, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CSI_CH_INT_EN_FIFO1_OF_INT_EN, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @CSI_CH_INT_EN_FIFO0_OF_INT_EN, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CSI_CH_INT_EN_FD_INT_EN, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @CSI_CH_INT_EN_CD_INT_EN, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @regmap_write(%struct.regmap* %26, i32 %27, i32 %38)
  %40 = load %struct.regmap*, %struct.regmap** %6, align 8
  %41 = load i32, i32* @CSI_CAP_REG, align 4
  %42 = load i32, i32* @CSI_CAP_CH0_VCAP_ON, align 4
  %43 = load i32, i32* @CSI_CAP_CH0_VCAP_ON, align 4
  %44 = call i32 @regmap_update_bits(%struct.regmap* %40, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %22, %14
  ret void
}

declare dso_local %struct.sun6i_csi_dev* @sun6i_csi_to_dev(%struct.sun6i_csi*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
