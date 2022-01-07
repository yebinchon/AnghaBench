; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_priv = type { i32, %struct.alx_hw, i32 }
%struct.alx_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ALX_ISR = common dso_local global i32 0, align 4
@ALX_IMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alx_priv*)* @alx_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alx_irq_enable(%struct.alx_priv* %0) #0 {
  %2 = alloca %struct.alx_priv*, align 8
  %3 = alloca %struct.alx_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.alx_priv* %0, %struct.alx_priv** %2, align 8
  %5 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %6 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %5, i32 0, i32 1
  store %struct.alx_hw* %6, %struct.alx_hw** %3, align 8
  %7 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %8 = load i32, i32* @ALX_ISR, align 4
  %9 = call i32 @alx_write_mem32(%struct.alx_hw* %7, i32 %8, i32 0)
  %10 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %11 = load i32, i32* @ALX_IMR, align 4
  %12 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %13 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @alx_write_mem32(%struct.alx_hw* %10, i32 %11, i32 %14)
  %16 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %17 = call i32 @alx_post_write(%struct.alx_hw* %16)
  %18 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %19 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %36, %25
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %29 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @alx_mask_msix(%struct.alx_hw* %33, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %26

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39, %1
  ret void
}

declare dso_local i32 @alx_write_mem32(%struct.alx_hw*, i32, i32) #1

declare dso_local i32 @alx_post_write(%struct.alx_hw*) #1

declare dso_local i32 @alx_mask_msix(%struct.alx_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
