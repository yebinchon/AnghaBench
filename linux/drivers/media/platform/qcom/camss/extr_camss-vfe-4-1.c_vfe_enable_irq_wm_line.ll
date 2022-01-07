; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-1.c_vfe_enable_irq_wm_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-1.c_vfe_enable_irq_wm_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { i32 }

@VFE_0_IRQ_MASK_0 = common dso_local global i32 0, align 4
@VFE_0_IRQ_MASK_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*, i64, i32, i64)* @vfe_enable_irq_wm_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_enable_irq_wm_line(%struct.vfe_device* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.vfe_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vfe_device* %0, %struct.vfe_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @VFE_0_IRQ_MASK_0_IMAGE_MASTER_n_PING_PONG(i64 %11)
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @VFE_0_IRQ_MASK_0_line_n_REG_UPDATE(i32 %13)
  %15 = or i32 %12, %14
  store i32 %15, i32* %9, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @VFE_0_IRQ_MASK_1_IMAGE_MASTER_n_BUS_OVERFLOW(i64 %16)
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @VFE_0_IRQ_MASK_1_RDIn_SOF(i32 %18)
  %20 = or i32 %17, %19
  store i32 %20, i32* %10, align 4
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %4
  %24 = load %struct.vfe_device*, %struct.vfe_device** %5, align 8
  %25 = load i32, i32* @VFE_0_IRQ_MASK_0, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @vfe_reg_set(%struct.vfe_device* %24, i32 %25, i32 %26)
  %28 = load %struct.vfe_device*, %struct.vfe_device** %5, align 8
  %29 = load i32, i32* @VFE_0_IRQ_MASK_1, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @vfe_reg_set(%struct.vfe_device* %28, i32 %29, i32 %30)
  br label %41

32:                                               ; preds = %4
  %33 = load %struct.vfe_device*, %struct.vfe_device** %5, align 8
  %34 = load i32, i32* @VFE_0_IRQ_MASK_0, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @vfe_reg_clr(%struct.vfe_device* %33, i32 %34, i32 %35)
  %37 = load %struct.vfe_device*, %struct.vfe_device** %5, align 8
  %38 = load i32, i32* @VFE_0_IRQ_MASK_1, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @vfe_reg_clr(%struct.vfe_device* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %32, %23
  ret void
}

declare dso_local i32 @VFE_0_IRQ_MASK_0_IMAGE_MASTER_n_PING_PONG(i64) #1

declare dso_local i32 @VFE_0_IRQ_MASK_0_line_n_REG_UPDATE(i32) #1

declare dso_local i32 @VFE_0_IRQ_MASK_1_IMAGE_MASTER_n_BUS_OVERFLOW(i64) #1

declare dso_local i32 @VFE_0_IRQ_MASK_1_RDIn_SOF(i32) #1

declare dso_local i32 @vfe_reg_set(%struct.vfe_device*, i32, i32) #1

declare dso_local i32 @vfe_reg_clr(%struct.vfe_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
