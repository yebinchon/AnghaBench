; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_irq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_priv = type { i32, %struct.alx_hw }
%struct.alx_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ALX_ISR = common dso_local global i32 0, align 4
@ALX_ISR_DIS = common dso_local global i32 0, align 4
@ALX_IMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alx_priv*)* @alx_irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alx_irq_disable(%struct.alx_priv* %0) #0 {
  %2 = alloca %struct.alx_priv*, align 8
  %3 = alloca %struct.alx_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.alx_priv* %0, %struct.alx_priv** %2, align 8
  %5 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %6 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %5, i32 0, i32 1
  store %struct.alx_hw* %6, %struct.alx_hw** %3, align 8
  %7 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %8 = load i32, i32* @ALX_ISR, align 4
  %9 = load i32, i32* @ALX_ISR_DIS, align 4
  %10 = call i32 @alx_write_mem32(%struct.alx_hw* %7, i32 %8, i32 %9)
  %11 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %12 = load i32, i32* @ALX_IMR, align 4
  %13 = call i32 @alx_write_mem32(%struct.alx_hw* %11, i32 %12, i32 0)
  %14 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %15 = call i32 @alx_post_write(%struct.alx_hw* %14)
  %16 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %17 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %41, %23
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %27 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @alx_mask_msix(%struct.alx_hw* %31, i32 %32, i32 1)
  %34 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %35 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @pci_irq_vector(%struct.TYPE_2__* %37, i32 %38)
  %40 = call i32 @synchronize_irq(i32 %39)
  br label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %24

44:                                               ; preds = %24
  br label %52

45:                                               ; preds = %1
  %46 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %47 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = call i32 @pci_irq_vector(%struct.TYPE_2__* %49, i32 0)
  %51 = call i32 @synchronize_irq(i32 %50)
  br label %52

52:                                               ; preds = %45, %44
  ret void
}

declare dso_local i32 @alx_write_mem32(%struct.alx_hw*, i32, i32) #1

declare dso_local i32 @alx_post_write(%struct.alx_hw*) #1

declare dso_local i32 @alx_mask_msix(%struct.alx_hw*, i32, i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @pci_irq_vector(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
