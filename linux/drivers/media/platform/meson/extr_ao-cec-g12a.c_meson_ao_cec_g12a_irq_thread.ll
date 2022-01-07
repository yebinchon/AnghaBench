; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec-g12a.c_meson_ao_cec_g12a_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec-g12a.c_meson_ao_cec_g12a_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_ao_cec_g12a_device = type { i32, i32, i32 }

@CECB_INTR_STAT_REG = common dso_local global i32 0, align 4
@CECB_INTR_CLR_REG = common dso_local global i32 0, align 4
@CECB_INTR_DONE = common dso_local global i32 0, align 4
@CEC_TX_STATUS_OK = common dso_local global i32 0, align 4
@CECB_INTR_EOM = common dso_local global i32 0, align 4
@CECB_INTR_NACK = common dso_local global i32 0, align 4
@CEC_TX_STATUS_NACK = common dso_local global i32 0, align 4
@CECB_INTR_ARB_LOSS = common dso_local global i32 0, align 4
@CECB_TX_CNT = common dso_local global i32 0, align 4
@CECB_CTRL = common dso_local global i32 0, align 4
@CECB_CTRL_SEND = common dso_local global i32 0, align 4
@CECB_CTRL_TYPE = common dso_local global i32 0, align 4
@CEC_TX_STATUS_ARB_LOST = common dso_local global i32 0, align 4
@CECB_INTR_INITIATOR_ERR = common dso_local global i32 0, align 4
@CEC_TX_STATUS_ERROR = common dso_local global i32 0, align 4
@CECB_INTR_FOLLOWER_ERR = common dso_local global i32 0, align 4
@CECB_LOCK_BUF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @meson_ao_cec_g12a_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_ao_cec_g12a_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.meson_ao_cec_g12a_device*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.meson_ao_cec_g12a_device*
  store %struct.meson_ao_cec_g12a_device* %8, %struct.meson_ao_cec_g12a_device** %5, align 8
  %9 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %5, align 8
  %10 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CECB_INTR_STAT_REG, align 4
  %13 = call i32 @regmap_read(i32 %11, i32 %12, i32* %6)
  %14 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %5, align 8
  %15 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CECB_INTR_CLR_REG, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @regmap_write(i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @CECB_INTR_DONE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %5, align 8
  %26 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CEC_TX_STATUS_OK, align 4
  %29 = call i32 @cec_transmit_attempt_done(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %2
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @CECB_INTR_EOM, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %5, align 8
  %37 = call i32 @meson_ao_cec_g12a_irq_rx(%struct.meson_ao_cec_g12a_device* %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @CECB_INTR_NACK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %5, align 8
  %45 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CEC_TX_STATUS_NACK, align 4
  %48 = call i32 @cec_transmit_attempt_done(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %38
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @CECB_INTR_ARB_LOSS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %49
  %55 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %5, align 8
  %56 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CECB_TX_CNT, align 4
  %59 = call i32 @regmap_write(i32 %57, i32 %58, i32 0)
  %60 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %5, align 8
  %61 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @CECB_CTRL, align 4
  %64 = load i32, i32* @CECB_CTRL_SEND, align 4
  %65 = load i32, i32* @CECB_CTRL_TYPE, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @regmap_update_bits(i32 %62, i32 %63, i32 %66, i32 0)
  %68 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %5, align 8
  %69 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @CEC_TX_STATUS_ARB_LOST, align 4
  %72 = call i32 @cec_transmit_attempt_done(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %54, %49
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @CECB_INTR_INITIATOR_ERR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %5, align 8
  %80 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @CEC_TX_STATUS_ERROR, align 4
  %83 = call i32 @cec_transmit_attempt_done(i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %78, %73
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @CECB_INTR_FOLLOWER_ERR, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.meson_ao_cec_g12a_device*, %struct.meson_ao_cec_g12a_device** %5, align 8
  %91 = getelementptr inbounds %struct.meson_ao_cec_g12a_device, %struct.meson_ao_cec_g12a_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @CECB_LOCK_BUF, align 4
  %94 = call i32 @regmap_write(i32 %92, i32 %93, i32 0)
  br label %95

95:                                               ; preds = %89, %84
  %96 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %96
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @cec_transmit_attempt_done(i32, i32) #1

declare dso_local i32 @meson_ao_cec_g12a_irq_rx(%struct.meson_ao_cec_g12a_device*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
