; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec.c_meson_ao_cec_irq_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec.c_meson_ao_cec_irq_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_ao_cec_device = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@CEC_RX_MSG_STATUS = common dso_local global i64 0, align 8
@RX_DONE = common dso_local global i32 0, align 4
@CEC_RX_NUM_MSG = common dso_local global i64 0, align 8
@CEC_RX_MSG_LENGTH = common dso_local global i64 0, align 8
@CEC_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@CEC_RX_MSG_0_HEADER = common dso_local global i64 0, align 8
@CEC_INTR_RX = common dso_local global i32 0, align 4
@CEC_INTR_CLR_REG = common dso_local global i64 0, align 8
@CEC_RX_MSG_CMD = common dso_local global i32 0, align 4
@RX_ACK_CURRENT = common dso_local global i32 0, align 4
@RX_NO_OP = common dso_local global i32 0, align 4
@CEC_RX_CLEAR_BUF = common dso_local global i32 0, align 4
@CLEAR_START = common dso_local global i32 0, align 4
@CLEAR_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_ao_cec_device*)* @meson_ao_cec_irq_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_ao_cec_irq_rx(%struct.meson_ao_cec_device* %0) #0 {
  %2 = alloca %struct.meson_ao_cec_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.meson_ao_cec_device* %0, %struct.meson_ao_cec_device** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %2, align 8
  %8 = load i64, i64* @CEC_RX_MSG_STATUS, align 8
  %9 = call i32 @meson_ao_cec_read(%struct.meson_ao_cec_device* %7, i64 %8, i32* %5, i32* %4)
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @RX_DONE, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %78

14:                                               ; preds = %1
  %15 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %2, align 8
  %16 = load i64, i64* @CEC_RX_NUM_MSG, align 8
  %17 = call i32 @meson_ao_cec_read(%struct.meson_ao_cec_device* %15, i64 %16, i32* %5, i32* %4)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %78

21:                                               ; preds = %14
  %22 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %2, align 8
  %23 = load i64, i64* @CEC_RX_MSG_LENGTH, align 8
  %24 = call i32 @meson_ao_cec_read(%struct.meson_ao_cec_device* %22, i64 %23, i32* %5, i32* %4)
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  %27 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %2, align 8
  %28 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %2, align 8
  %31 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CEC_MAX_MSG_SIZE, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load i32, i32* @CEC_MAX_MSG_SIZE, align 4
  %38 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %2, align 8
  %39 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  br label %41

41:                                               ; preds = %36, %21
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %64, %41
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %2, align 8
  %45 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %42
  %50 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %2, align 8
  %51 = load i64, i64* @CEC_RX_MSG_0_HEADER, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = call i32 @meson_ao_cec_read(%struct.meson_ao_cec_device* %50, i64 %54, i32* %6, i32* %4)
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %2, align 8
  %58 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %56, i32* %63, align 4
  br label %64

64:                                               ; preds = %49
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %42

67:                                               ; preds = %42
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %78

71:                                               ; preds = %67
  %72 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %2, align 8
  %73 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %2, align 8
  %76 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %75, i32 0, i32 1
  %77 = call i32 @cec_received_msg(i32 %74, %struct.TYPE_2__* %76)
  br label %78

78:                                               ; preds = %71, %70, %20, %13
  %79 = load i32, i32* @CEC_INTR_RX, align 4
  %80 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %2, align 8
  %81 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @CEC_INTR_CLR_REG, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writel_relaxed(i32 %79, i64 %84)
  %86 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %2, align 8
  %87 = load i32, i32* @CEC_RX_MSG_CMD, align 4
  %88 = load i32, i32* @RX_ACK_CURRENT, align 4
  %89 = call i32 @meson_ao_cec_write(%struct.meson_ao_cec_device* %86, i32 %87, i32 %88, i32* %4)
  %90 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %2, align 8
  %91 = load i32, i32* @CEC_RX_MSG_CMD, align 4
  %92 = load i32, i32* @RX_NO_OP, align 4
  %93 = call i32 @meson_ao_cec_write(%struct.meson_ao_cec_device* %90, i32 %91, i32 %92, i32* %4)
  %94 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %2, align 8
  %95 = load i32, i32* @CEC_RX_CLEAR_BUF, align 4
  %96 = load i32, i32* @CLEAR_START, align 4
  %97 = call i32 @meson_ao_cec_write(%struct.meson_ao_cec_device* %94, i32 %95, i32 %96, i32* %4)
  %98 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %2, align 8
  %99 = load i32, i32* @CEC_RX_CLEAR_BUF, align 4
  %100 = load i32, i32* @CLEAR_STOP, align 4
  %101 = call i32 @meson_ao_cec_write(%struct.meson_ao_cec_device* %98, i32 %99, i32 %100, i32* %4)
  ret void
}

declare dso_local i32 @meson_ao_cec_read(%struct.meson_ao_cec_device*, i64, i32*, i32*) #1

declare dso_local i32 @cec_received_msg(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @meson_ao_cec_write(%struct.meson_ao_cec_device*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
