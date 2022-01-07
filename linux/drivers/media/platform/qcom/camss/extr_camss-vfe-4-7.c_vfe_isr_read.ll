; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-7.c_vfe_isr_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-7.c_vfe_isr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { i64 }

@VFE_0_IRQ_STATUS_0 = common dso_local global i64 0, align 8
@VFE_0_IRQ_STATUS_1 = common dso_local global i64 0, align 8
@VFE_0_IRQ_CLEAR_0 = common dso_local global i64 0, align 8
@VFE_0_IRQ_CLEAR_1 = common dso_local global i64 0, align 8
@VFE_0_IRQ_CMD_GLOBAL_CLEAR = common dso_local global i32 0, align 4
@VFE_0_IRQ_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*, i32*, i32*)* @vfe_isr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_isr_read(%struct.vfe_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.vfe_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.vfe_device* %0, %struct.vfe_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %8 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VFE_0_IRQ_STATUS_0, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl_relaxed(i64 %11)
  %13 = load i32*, i32** %5, align 8
  store i32 %12, i32* %13, align 4
  %14 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %15 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VFE_0_IRQ_STATUS_1, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl_relaxed(i64 %18)
  %20 = load i32*, i32** %6, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %24 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VFE_0_IRQ_CLEAR_0, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel_relaxed(i32 %22, i64 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %32 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VFE_0_IRQ_CLEAR_1, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel_relaxed(i32 %30, i64 %35)
  %37 = call i32 (...) @wmb()
  %38 = load i32, i32* @VFE_0_IRQ_CMD_GLOBAL_CLEAR, align 4
  %39 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %40 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VFE_0_IRQ_CMD, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel_relaxed(i32 %38, i64 %43)
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
