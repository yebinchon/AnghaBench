; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_free_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_priv = type { i32, i64, i64, i32*, %struct.TYPE_2__*, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myri10ge_priv*)* @myri10ge_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myri10ge_free_irq(%struct.myri10ge_priv* %0) #0 {
  %2 = alloca %struct.myri10ge_priv*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.myri10ge_priv* %0, %struct.myri10ge_priv** %2, align 8
  %5 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %6 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %5, i32 0, i32 5
  %7 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %7, %struct.pci_dev** %3, align 8
  %8 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %9 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %35, %12
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %16 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %13
  %20 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %21 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %20, i32 0, i32 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %29 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @free_irq(i32 %27, i32* %33)
  br label %35

35:                                               ; preds = %19
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %13

38:                                               ; preds = %13
  br label %48

39:                                               ; preds = %1
  %40 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %44 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = call i32 @free_irq(i32 %42, i32* %46)
  br label %48

48:                                               ; preds = %39, %38
  %49 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %50 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %55 = call i32 @pci_disable_msi(%struct.pci_dev* %54)
  br label %56

56:                                               ; preds = %53, %48
  %57 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %58 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %63 = call i32 @pci_disable_msix(%struct.pci_dev* %62)
  br label %64

64:                                               ; preds = %61, %56
  ret void
}

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_msix(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
