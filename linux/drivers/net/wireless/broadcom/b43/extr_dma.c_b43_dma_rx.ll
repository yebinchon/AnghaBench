; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_b43_dma_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_b43_dma_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_dmaring = type { i32, i32, i32, %struct.b43_dma_ops* }
%struct.b43_dma_ops = type { i32 (%struct.b43_dmaring*)*, i32 (%struct.b43_dmaring*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_dma_rx(%struct.b43_dmaring* %0) #0 {
  %2 = alloca %struct.b43_dmaring*, align 8
  %3 = alloca %struct.b43_dma_ops*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43_dmaring* %0, %struct.b43_dmaring** %2, align 8
  %7 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %8 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %7, i32 0, i32 3
  %9 = load %struct.b43_dma_ops*, %struct.b43_dma_ops** %8, align 8
  store %struct.b43_dma_ops* %9, %struct.b43_dma_ops** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %11 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @B43_WARN_ON(i32 %12)
  %14 = load %struct.b43_dma_ops*, %struct.b43_dma_ops** %3, align 8
  %15 = getelementptr inbounds %struct.b43_dma_ops, %struct.b43_dma_ops* %14, i32 0, i32 0
  %16 = load i32 (%struct.b43_dmaring*)*, i32 (%struct.b43_dmaring*)** %15, align 8
  %17 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %18 = call i32 %16(%struct.b43_dmaring* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %24 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br label %27

27:                                               ; preds = %21, %1
  %28 = phi i1 [ false, %1 ], [ %26, %21 ]
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @B43_WARN_ON(i32 %30)
  %32 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %33 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %46, %27
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %41 = call i32 @dma_rx(%struct.b43_dmaring* %40, i32* %4)
  %42 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  %45 = call i32 @update_max_used_slots(%struct.b43_dmaring* %42, i32 %44)
  br label %46

46:                                               ; preds = %39
  %47 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @next_slot(%struct.b43_dmaring* %47, i32 %48)
  store i32 %49, i32* %4, align 4
  br label %35

50:                                               ; preds = %35
  %51 = call i32 (...) @wmb()
  %52 = load %struct.b43_dma_ops*, %struct.b43_dma_ops** %3, align 8
  %53 = getelementptr inbounds %struct.b43_dma_ops, %struct.b43_dma_ops* %52, i32 0, i32 1
  %54 = load i32 (%struct.b43_dmaring*, i32)*, i32 (%struct.b43_dmaring*, i32)** %53, align 8
  %55 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 %54(%struct.b43_dmaring* %55, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %60 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @dma_rx(%struct.b43_dmaring*, i32*) #1

declare dso_local i32 @update_max_used_slots(%struct.b43_dmaring*, i32) #1

declare dso_local i32 @next_slot(%struct.b43_dmaring*, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
