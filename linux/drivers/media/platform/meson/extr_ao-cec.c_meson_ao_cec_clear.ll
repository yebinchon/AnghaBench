; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec.c_meson_ao_cec_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec.c_meson_ao_cec_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_ao_cec_device = type { i32 }

@CEC_RX_MSG_CMD = common dso_local global i32 0, align 4
@RX_DISABLE = common dso_local global i32 0, align 4
@CEC_TX_MSG_CMD = common dso_local global i32 0, align 4
@TX_ABORT = common dso_local global i32 0, align 4
@CEC_RX_CLEAR_BUF = common dso_local global i32 0, align 4
@CEC_TX_CLEAR_BUF = common dso_local global i32 0, align 4
@RX_NO_OP = common dso_local global i32 0, align 4
@TX_NO_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_ao_cec_device*)* @meson_ao_cec_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_ao_cec_clear(%struct.meson_ao_cec_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.meson_ao_cec_device*, align 8
  %4 = alloca i32, align 4
  store %struct.meson_ao_cec_device* %0, %struct.meson_ao_cec_device** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %3, align 8
  %6 = load i32, i32* @CEC_RX_MSG_CMD, align 4
  %7 = load i32, i32* @RX_DISABLE, align 4
  %8 = call i32 @meson_ao_cec_write(%struct.meson_ao_cec_device* %5, i32 %6, i32 %7, i32* %4)
  %9 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %3, align 8
  %10 = load i32, i32* @CEC_TX_MSG_CMD, align 4
  %11 = load i32, i32* @TX_ABORT, align 4
  %12 = call i32 @meson_ao_cec_write(%struct.meson_ao_cec_device* %9, i32 %10, i32 %11, i32* %4)
  %13 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %3, align 8
  %14 = load i32, i32* @CEC_RX_CLEAR_BUF, align 4
  %15 = call i32 @meson_ao_cec_write(%struct.meson_ao_cec_device* %13, i32 %14, i32 1, i32* %4)
  %16 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %3, align 8
  %17 = load i32, i32* @CEC_TX_CLEAR_BUF, align 4
  %18 = call i32 @meson_ao_cec_write(%struct.meson_ao_cec_device* %16, i32 %17, i32 1, i32* %4)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %46

23:                                               ; preds = %1
  %24 = call i32 @udelay(i32 100)
  %25 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %3, align 8
  %26 = load i32, i32* @CEC_RX_CLEAR_BUF, align 4
  %27 = call i32 @meson_ao_cec_write(%struct.meson_ao_cec_device* %25, i32 %26, i32 0, i32* %4)
  %28 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %3, align 8
  %29 = load i32, i32* @CEC_TX_CLEAR_BUF, align 4
  %30 = call i32 @meson_ao_cec_write(%struct.meson_ao_cec_device* %28, i32 %29, i32 0, i32* %4)
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %46

35:                                               ; preds = %23
  %36 = call i32 @udelay(i32 100)
  %37 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %3, align 8
  %38 = load i32, i32* @CEC_RX_MSG_CMD, align 4
  %39 = load i32, i32* @RX_NO_OP, align 4
  %40 = call i32 @meson_ao_cec_write(%struct.meson_ao_cec_device* %37, i32 %38, i32 %39, i32* %4)
  %41 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %3, align 8
  %42 = load i32, i32* @CEC_TX_MSG_CMD, align 4
  %43 = load i32, i32* @TX_NO_OP, align 4
  %44 = call i32 @meson_ao_cec_write(%struct.meson_ao_cec_device* %41, i32 %42, i32 %43, i32* %4)
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %35, %33, %21
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @meson_ao_cec_write(%struct.meson_ao_cec_device*, i32, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
