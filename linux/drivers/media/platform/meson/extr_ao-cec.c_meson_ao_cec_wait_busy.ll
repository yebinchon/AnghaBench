; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec.c_meson_ao_cec_wait_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec.c_meson_ao_cec_wait_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_ao_cec_device = type { i64 }

@CEC_RW_REG = common dso_local global i64 0, align 8
@CEC_RW_BUS_BUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_ao_cec_device*)* @meson_ao_cec_wait_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_ao_cec_wait_busy(%struct.meson_ao_cec_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.meson_ao_cec_device*, align 8
  %4 = alloca i32, align 4
  store %struct.meson_ao_cec_device* %0, %struct.meson_ao_cec_device** %3, align 8
  %5 = call i32 (...) @ktime_get()
  %6 = call i32 @ktime_add_us(i32 %5, i32 5000)
  store i32 %6, i32* %4, align 4
  br label %7

7:                                                ; preds = %25, %1
  %8 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %3, align 8
  %9 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CEC_RW_REG, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl_relaxed(i64 %12)
  %14 = load i32, i32* @CEC_RW_BUS_BUSY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %7
  %18 = call i32 (...) @ktime_get()
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @ktime_compare(i32 %18, i32 %19)
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @ETIMEDOUT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %27

25:                                               ; preds = %17
  br label %7

26:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %22
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @ktime_add_us(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @ktime_compare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
