; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec.c_meson_ao_cec_arbit_bit_time_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec.c_meson_ao_cec_arbit_bit_time_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_ao_cec_device = type { i32 }

@CEC_TXTIME_4BIT_BIT7_0 = common dso_local global i32 0, align 4
@CEC_TXTIME_4BIT_BIT10_8 = common dso_local global i32 0, align 4
@CEC_TXTIME_2BIT_BIT7_0 = common dso_local global i32 0, align 4
@CEC_TXTIME_2BIT_BIT10_8 = common dso_local global i32 0, align 4
@CEC_TXTIME_17MS_BIT7_0 = common dso_local global i32 0, align 4
@CEC_TXTIME_17MS_BIT10_8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_ao_cec_device*, i32, i32)* @meson_ao_cec_arbit_bit_time_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_ao_cec_arbit_bit_time_set(%struct.meson_ao_cec_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.meson_ao_cec_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.meson_ao_cec_device* %0, %struct.meson_ao_cec_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %45 [
    i32 128, label %9
    i32 130, label %21
    i32 129, label %33
  ]

9:                                                ; preds = %3
  %10 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %11 = load i32, i32* @CEC_TXTIME_4BIT_BIT7_0, align 4
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 255
  %14 = call i32 @meson_ao_cec_write(%struct.meson_ao_cec_device* %10, i32 %11, i32 %13, i32* %7)
  %15 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %16 = load i32, i32* @CEC_TXTIME_4BIT_BIT10_8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = lshr i32 %17, 8
  %19 = and i32 %18, 7
  %20 = call i32 @meson_ao_cec_write(%struct.meson_ao_cec_device* %15, i32 %16, i32 %19, i32* %7)
  br label %45

21:                                               ; preds = %3
  %22 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %23 = load i32, i32* @CEC_TXTIME_2BIT_BIT7_0, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 255
  %26 = call i32 @meson_ao_cec_write(%struct.meson_ao_cec_device* %22, i32 %23, i32 %25, i32* %7)
  %27 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %28 = load i32, i32* @CEC_TXTIME_2BIT_BIT10_8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = lshr i32 %29, 8
  %31 = and i32 %30, 7
  %32 = call i32 @meson_ao_cec_write(%struct.meson_ao_cec_device* %27, i32 %28, i32 %31, i32* %7)
  br label %45

33:                                               ; preds = %3
  %34 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %35 = load i32, i32* @CEC_TXTIME_17MS_BIT7_0, align 4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 255
  %38 = call i32 @meson_ao_cec_write(%struct.meson_ao_cec_device* %34, i32 %35, i32 %37, i32* %7)
  %39 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %4, align 8
  %40 = load i32, i32* @CEC_TXTIME_17MS_BIT10_8, align 4
  %41 = load i32, i32* %6, align 4
  %42 = lshr i32 %41, 8
  %43 = and i32 %42, 7
  %44 = call i32 @meson_ao_cec_write(%struct.meson_ao_cec_device* %39, i32 %40, i32 %43, i32* %7)
  br label %45

45:                                               ; preds = %3, %33, %21, %9
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @meson_ao_cec_write(%struct.meson_ao_cec_device*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
