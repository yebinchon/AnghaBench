; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec.c_meson_ao_cec_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec.c_meson_ao_cec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_ao_cec_device = type { i32, i64 }

@CEC_RW_ADDR = common dso_local global i32 0, align 4
@CEC_RW_WR_DATA = common dso_local global i32 0, align 4
@CEC_RW_WRITE_EN = common dso_local global i32 0, align 4
@CEC_RW_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_ao_cec_device*, i64, i64, i32*)* @meson_ao_cec_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_ao_cec_write(%struct.meson_ao_cec_device* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.meson_ao_cec_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.meson_ao_cec_device* %0, %struct.meson_ao_cec_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* @CEC_RW_ADDR, align 4
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @FIELD_PREP(i32 %12, i64 %13)
  %15 = load i32, i32* @CEC_RW_WR_DATA, align 4
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @FIELD_PREP(i32 %15, i64 %16)
  %18 = or i32 %14, %17
  %19 = load i32, i32* @CEC_RW_WRITE_EN, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %56

28:                                               ; preds = %23, %4
  %29 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %5, align 8
  %30 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %29, i32 0, i32 0
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %5, align 8
  %34 = call i32 @meson_ao_cec_wait_busy(%struct.meson_ao_cec_device* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %46

38:                                               ; preds = %28
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %5, align 8
  %41 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CEC_RW_REG, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel_relaxed(i32 %39, i64 %44)
  br label %46

46:                                               ; preds = %38, %37
  %47 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %5, align 8
  %48 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %47, i32 0, i32 0
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load i32*, i32** %8, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* %11, align 4
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %27, %53, %46
  ret void
}

declare dso_local i32 @FIELD_PREP(i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @meson_ao_cec_wait_busy(%struct.meson_ao_cec_device*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
