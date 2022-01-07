; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec-g12a.c_meson_ao_cec_g12a_adap_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec-g12a.c_meson_ao_cec_g12a_adap_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { %struct.meson_ao_cec_g12a_device* }
%struct.meson_ao_cec_g12a_device = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@CECB_GEN_CNTL_REG = common dso_local global i32 0, align 4
@CECB_GEN_CNTL_RESET = common dso_local global i32 0, align 4
@CECB_GEN_CNTL_FILTER_TICK_SEL = common dso_local global i32 0, align 4
@CECB_GEN_CNTL_FILTER_DEL = common dso_local global i32 0, align 4
@CECB_GEN_CNTL_FILTER_TICK_1US = common dso_local global i32 0, align 4
@CECB_GEN_CNTL_SYS_CLK_EN = common dso_local global i32 0, align 4
@CECB_GEN_CNTL_CLK_CTRL_MASK = common dso_local global i32 0, align 4
@CECB_GEN_CNTL_CLK_ENABLE = common dso_local global i32 0, align 4
@CECB_CTRL2 = common dso_local global i32 0, align 4
@CECB_CTRL2_RISE_DEL_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32)* @meson_ao_cec_g12a_adap_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_ao_cec_g12a_adap_enable(%struct.cec_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cec_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.meson_ao_cec_g12a_device*, align 8
  store %struct.cec_adapter* %0, %struct.cec_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %8 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %7, i32 0, i32 0
  %9 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %8, align 8
  store %struct.meson_ao_cec_g12a_device* %9, %struct.meson_ao_cec_g12a_device** %6, align 8
  %10 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %6, align 8
  %11 = call i32 @meson_ao_cec_g12a_irq_setup(%struct.meson_ao_cec_g12a_device* %10, i32 0)
  %12 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %6, align 8
  %13 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CECB_GEN_CNTL_REG, align 4
  %16 = load i32, i32* @CECB_GEN_CNTL_RESET, align 4
  %17 = load i32, i32* @CECB_GEN_CNTL_RESET, align 4
  %18 = call i32 @regmap_update_bits(i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

22:                                               ; preds = %2
  %23 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %6, align 8
  %24 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @CECB_GEN_CNTL_REG, align 4
  %27 = load i32, i32* @CECB_GEN_CNTL_FILTER_TICK_SEL, align 4
  %28 = load i32, i32* @CECB_GEN_CNTL_FILTER_DEL, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @CECB_GEN_CNTL_FILTER_TICK_SEL, align 4
  %31 = load i32, i32* @CECB_GEN_CNTL_FILTER_TICK_1US, align 4
  %32 = call i32 @FIELD_PREP(i32 %30, i32 %31)
  %33 = load i32, i32* @CECB_GEN_CNTL_FILTER_DEL, align 4
  %34 = call i32 @FIELD_PREP(i32 %33, i32 7)
  %35 = or i32 %32, %34
  %36 = call i32 @regmap_update_bits(i32 %25, i32 %26, i32 %29, i32 %35)
  %37 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %6, align 8
  %38 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @CECB_GEN_CNTL_REG, align 4
  %41 = load i32, i32* @CECB_GEN_CNTL_SYS_CLK_EN, align 4
  %42 = load i32, i32* @CECB_GEN_CNTL_SYS_CLK_EN, align 4
  %43 = call i32 @regmap_update_bits(i32 %39, i32 %40, i32 %41, i32 %42)
  %44 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %6, align 8
  %45 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @CECB_GEN_CNTL_REG, align 4
  %48 = load i32, i32* @CECB_GEN_CNTL_CLK_CTRL_MASK, align 4
  %49 = load i32, i32* @CECB_GEN_CNTL_CLK_CTRL_MASK, align 4
  %50 = load i32, i32* @CECB_GEN_CNTL_CLK_ENABLE, align 4
  %51 = call i32 @FIELD_PREP(i32 %49, i32 %50)
  %52 = call i32 @regmap_update_bits(i32 %46, i32 %47, i32 %48, i32 %51)
  %53 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %6, align 8
  %54 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @CECB_GEN_CNTL_REG, align 4
  %57 = load i32, i32* @CECB_GEN_CNTL_RESET, align 4
  %58 = call i32 @regmap_update_bits(i32 %55, i32 %56, i32 %57, i32 0)
  %59 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %6, align 8
  %60 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %22
  %66 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %6, align 8
  %67 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @CECB_CTRL2, align 4
  %70 = load i32, i32* @CECB_CTRL2_RISE_DEL_MAX, align 4
  %71 = call i32 @FIELD_PREP(i32 %70, i32 2)
  %72 = call i32 @regmap_write(i32 %68, i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %65, %22
  %74 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %6, align 8
  %75 = call i32 @meson_ao_cec_g12a_irq_setup(%struct.meson_ao_cec_g12a_device* %74, i32 1)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %73, %21
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @meson_ao_cec_g12a_irq_setup(%struct.meson_ao_cec_g12a_device*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
