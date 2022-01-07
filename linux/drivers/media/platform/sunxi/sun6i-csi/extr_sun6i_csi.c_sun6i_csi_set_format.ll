; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_sun6i_csi_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun6i-csi/extr_sun6i_csi.c_sun6i_csi_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_csi_dev = type { i32, %struct.sun6i_csi }
%struct.sun6i_csi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@CSI_CH_CFG_REG = common dso_local global i32 0, align 4
@CSI_CH_CFG_INPUT_FMT_MASK = common dso_local global i32 0, align 4
@CSI_CH_CFG_OUTPUT_FMT_MASK = common dso_local global i32 0, align 4
@CSI_CH_CFG_VFLIP_EN = common dso_local global i32 0, align 4
@CSI_CH_CFG_HFLIP_EN = common dso_local global i32 0, align 4
@CSI_CH_CFG_FIELD_SEL_MASK = common dso_local global i32 0, align 4
@CSI_CH_CFG_INPUT_SEQ_MASK = common dso_local global i32 0, align 4
@V4L2_FIELD_TOP = common dso_local global i64 0, align 8
@CSI_CH_CFG_FIELD_SEL_FIELD0 = common dso_local global i32 0, align 4
@V4L2_FIELD_BOTTOM = common dso_local global i64 0, align 8
@CSI_CH_CFG_FIELD_SEL_FIELD1 = common dso_local global i32 0, align 4
@CSI_CH_CFG_FIELD_SEL_BOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun6i_csi_dev*)* @sun6i_csi_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun6i_csi_set_format(%struct.sun6i_csi_dev* %0) #0 {
  %2 = alloca %struct.sun6i_csi_dev*, align 8
  %3 = alloca %struct.sun6i_csi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sun6i_csi_dev* %0, %struct.sun6i_csi_dev** %2, align 8
  %6 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %2, align 8
  %7 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %6, i32 0, i32 1
  store %struct.sun6i_csi* %7, %struct.sun6i_csi** %3, align 8
  %8 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %2, align 8
  %9 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @CSI_CH_CFG_REG, align 4
  %12 = call i32 @regmap_read(i32 %10, i32 %11, i32* %4)
  %13 = load i32, i32* @CSI_CH_CFG_INPUT_FMT_MASK, align 4
  %14 = load i32, i32* @CSI_CH_CFG_OUTPUT_FMT_MASK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CSI_CH_CFG_VFLIP_EN, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @CSI_CH_CFG_HFLIP_EN, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @CSI_CH_CFG_FIELD_SEL_MASK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @CSI_CH_CFG_INPUT_SEQ_MASK, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %2, align 8
  %28 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %29 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %33 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @get_csi_input_format(%struct.sun6i_csi_dev* %27, i32 %31, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @CSI_CH_CFG_INPUT_FMT(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %2, align 8
  %42 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %43 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %47 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @get_csi_output_format(%struct.sun6i_csi_dev* %41, i32 %45, i64 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @CSI_CH_CFG_OUTPUT_FMT(i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %2, align 8
  %56 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %57 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %61 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @get_csi_input_seq(%struct.sun6i_csi_dev* %55, i32 %59, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @CSI_CH_CFG_INPUT_SEQ(i32 %65)
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %70 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @V4L2_FIELD_TOP, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %1
  %76 = load i32, i32* @CSI_CH_CFG_FIELD_SEL_FIELD0, align 4
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %4, align 4
  br label %95

79:                                               ; preds = %1
  %80 = load %struct.sun6i_csi*, %struct.sun6i_csi** %3, align 8
  %81 = getelementptr inbounds %struct.sun6i_csi, %struct.sun6i_csi* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @V4L2_FIELD_BOTTOM, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load i32, i32* @CSI_CH_CFG_FIELD_SEL_FIELD1, align 4
  %88 = load i32, i32* %4, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %4, align 4
  br label %94

90:                                               ; preds = %79
  %91 = load i32, i32* @CSI_CH_CFG_FIELD_SEL_BOTH, align 4
  %92 = load i32, i32* %4, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %90, %86
  br label %95

95:                                               ; preds = %94, %75
  %96 = load %struct.sun6i_csi_dev*, %struct.sun6i_csi_dev** %2, align 8
  %97 = getelementptr inbounds %struct.sun6i_csi_dev, %struct.sun6i_csi_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @CSI_CH_CFG_REG, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @regmap_write(i32 %98, i32 %99, i32 %100)
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @get_csi_input_format(%struct.sun6i_csi_dev*, i32, i32) #1

declare dso_local i32 @CSI_CH_CFG_INPUT_FMT(i32) #1

declare dso_local i32 @get_csi_output_format(%struct.sun6i_csi_dev*, i32, i64) #1

declare dso_local i32 @CSI_CH_CFG_OUTPUT_FMT(i32) #1

declare dso_local i32 @get_csi_input_seq(%struct.sun6i_csi_dev*, i32, i32) #1

declare dso_local i32 @CSI_CH_CFG_INPUT_SEQ(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
