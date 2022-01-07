; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec.c_meson_ao_cec_adap_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec.c_meson_ao_cec_adap_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { %struct.meson_ao_cec_device* }
%struct.meson_ao_cec_device = type { i64 }

@CEC_GEN_CNTL_RESET = common dso_local global i32 0, align 4
@CEC_GEN_CNTL_REG = common dso_local global i64 0, align 8
@CEC_GEN_CNTL_CLK_CTRL_MASK = common dso_local global i32 0, align 4
@CEC_GEN_CNTL_CLK_ENABLE = common dso_local global i32 0, align 4
@CEC_SIGNAL_FREE_TIME_RETRY = common dso_local global i32 0, align 4
@CEC_SIGNAL_FREE_TIME_NEW_INITIATOR = common dso_local global i32 0, align 4
@CEC_SIGNAL_FREE_TIME_NEXT_XFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32)* @meson_ao_cec_adap_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_ao_cec_adap_enable(%struct.cec_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cec_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.meson_ao_cec_device*, align 8
  %7 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %8, i32 0, i32 0
  %10 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %9, align 8
  store %struct.meson_ao_cec_device* %10, %struct.meson_ao_cec_device** %6, align 8
  %11 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %6, align 8
  %12 = call i32 @meson_ao_cec_irq_setup(%struct.meson_ao_cec_device* %11, i32 0)
  %13 = load i32, i32* @CEC_GEN_CNTL_RESET, align 4
  %14 = load i32, i32* @CEC_GEN_CNTL_RESET, align 4
  %15 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %6, align 8
  %16 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CEC_GEN_CNTL_REG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel_bits_relaxed(i32 %13, i32 %14, i64 %19)
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

24:                                               ; preds = %2
  %25 = load i32, i32* @CEC_GEN_CNTL_CLK_CTRL_MASK, align 4
  %26 = load i32, i32* @CEC_GEN_CNTL_CLK_CTRL_MASK, align 4
  %27 = load i32, i32* @CEC_GEN_CNTL_CLK_ENABLE, align 4
  %28 = call i32 @FIELD_PREP(i32 %26, i32 %27)
  %29 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %6, align 8
  %30 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CEC_GEN_CNTL_REG, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel_bits_relaxed(i32 %25, i32 %28, i64 %33)
  %35 = call i32 @udelay(i32 100)
  %36 = load i32, i32* @CEC_GEN_CNTL_RESET, align 4
  %37 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %6, align 8
  %38 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CEC_GEN_CNTL_REG, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel_bits_relaxed(i32 %36, i32 0, i64 %41)
  %43 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %6, align 8
  %44 = call i32 @meson_ao_cec_clear(%struct.meson_ao_cec_device* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %24
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %76

49:                                               ; preds = %24
  %50 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %6, align 8
  %51 = load i32, i32* @CEC_SIGNAL_FREE_TIME_RETRY, align 4
  %52 = call i32 @meson_ao_cec_arbit_bit_time_set(%struct.meson_ao_cec_device* %50, i32 %51, i32 280)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %76

57:                                               ; preds = %49
  %58 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %6, align 8
  %59 = load i32, i32* @CEC_SIGNAL_FREE_TIME_NEW_INITIATOR, align 4
  %60 = call i32 @meson_ao_cec_arbit_bit_time_set(%struct.meson_ao_cec_device* %58, i32 %59, i32 0)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %76

65:                                               ; preds = %57
  %66 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %6, align 8
  %67 = load i32, i32* @CEC_SIGNAL_FREE_TIME_NEXT_XFER, align 4
  %68 = call i32 @meson_ao_cec_arbit_bit_time_set(%struct.meson_ao_cec_device* %66, i32 %67, i32 682)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %76

73:                                               ; preds = %65
  %74 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %6, align 8
  %75 = call i32 @meson_ao_cec_irq_setup(%struct.meson_ao_cec_device* %74, i32 1)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %73, %71, %63, %55, %47, %23
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @meson_ao_cec_irq_setup(%struct.meson_ao_cec_device*, i32) #1

declare dso_local i32 @writel_bits_relaxed(i32, i32, i64) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @meson_ao_cec_clear(%struct.meson_ao_cec_device*) #1

declare dso_local i32 @meson_ao_cec_arbit_bit_time_set(%struct.meson_ao_cec_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
