; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_free_notify_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_free_notify_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_priv = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.gve_priv*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.gve_notify_block = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.gve_notify_block*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gve_priv*)* @gve_free_notify_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gve_free_notify_blocks(%struct.gve_priv* %0) #0 {
  %2 = alloca %struct.gve_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gve_notify_block*, align 8
  %5 = alloca i32, align 4
  store %struct.gve_priv* %0, %struct.gve_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %41, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %9 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %6
  %13 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %14 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %13, i32 0, i32 4
  %15 = load %struct.gve_priv*, %struct.gve_priv** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %15, i64 %17
  %19 = bitcast %struct.gve_priv* %18 to %struct.gve_notify_block*
  store %struct.gve_notify_block* %19, %struct.gve_notify_block** %4, align 8
  %20 = load i32, i32* %3, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %22 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @irq_set_affinity_hint(i32 %28, i32* null)
  %30 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %31 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.gve_notify_block*, %struct.gve_notify_block** %4, align 8
  %39 = bitcast %struct.gve_notify_block* %38 to %struct.gve_priv*
  %40 = call i32 @free_irq(i32 %37, %struct.gve_priv* %39)
  br label %41

41:                                               ; preds = %12
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %6

44:                                               ; preds = %6
  %45 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %46 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %45, i32 0, i32 3
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %50 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 48
  %54 = trunc i64 %53 to i32
  %55 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %56 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %55, i32 0, i32 4
  %57 = load %struct.gve_priv*, %struct.gve_priv** %56, align 8
  %58 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %59 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dma_free_coherent(i32* %48, i32 %54, %struct.gve_priv* %57, i32 %60)
  %62 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %63 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %62, i32 0, i32 4
  store %struct.gve_priv* null, %struct.gve_priv** %63, align 8
  %64 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %65 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %68 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %74 = call i32 @free_irq(i32 %72, %struct.gve_priv* %73)
  %75 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %76 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %75, i32 0, i32 3
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = call i32 @pci_disable_msix(%struct.TYPE_3__* %77)
  %79 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %80 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %79, i32 0, i32 2
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = call i32 @kvfree(%struct.TYPE_4__* %81)
  %83 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %84 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %83, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %84, align 8
  ret void
}

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.gve_priv*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.gve_priv*, i32) #1

declare dso_local i32 @pci_disable_msix(%struct.TYPE_3__*) #1

declare dso_local i32 @kvfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
