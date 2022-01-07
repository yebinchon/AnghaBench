; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec.c_meson_ao_cec_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/meson/extr_ao-cec.c_meson_ao_cec_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_ao_cec_device = type { i32, i64 }

@CEC_RW_ADDR = common dso_local global i32 0, align 4
@CEC_RW_REG = common dso_local global i64 0, align 8
@CEC_RW_RD_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_ao_cec_device*, i64, i32*, i32*)* @meson_ao_cec_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_ao_cec_read(%struct.meson_ao_cec_device* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.meson_ao_cec_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.meson_ao_cec_device* %0, %struct.meson_ao_cec_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* @CEC_RW_ADDR, align 4
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @FIELD_PREP(i32 %12, i64 %13)
  store i32 %14, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %65

22:                                               ; preds = %17, %4
  %23 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %5, align 8
  %24 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %23, i32 0, i32 0
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %5, align 8
  %28 = call i32 @meson_ao_cec_wait_busy(%struct.meson_ao_cec_device* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %55

32:                                               ; preds = %22
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %5, align 8
  %35 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CEC_RW_REG, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel_relaxed(i32 %33, i64 %38)
  %40 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %5, align 8
  %41 = call i32 @meson_ao_cec_wait_busy(%struct.meson_ao_cec_device* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %55

45:                                               ; preds = %32
  %46 = load i32, i32* @CEC_RW_RD_DATA, align 4
  %47 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %5, align 8
  %48 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CEC_RW_REG, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @readl_relaxed(i64 %51)
  %53 = call i32 @FIELD_GET(i32 %46, i32 %52)
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %45, %44, %31
  %56 = load %struct.meson_ao_cec_device*, %struct.meson_ao_cec_device** %5, align 8
  %57 = getelementptr inbounds %struct.meson_ao_cec_device, %struct.meson_ao_cec_device* %56, i32 0, i32 0
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load i32*, i32** %8, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* %11, align 4
  %64 = load i32*, i32** %8, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %21, %62, %55
  ret void
}

declare dso_local i32 @FIELD_PREP(i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @meson_ao_cec_wait_busy(%struct.meson_ao_cec_device*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
