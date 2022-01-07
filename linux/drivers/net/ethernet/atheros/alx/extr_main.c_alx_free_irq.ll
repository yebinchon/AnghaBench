; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_free_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_priv = type { i32, %struct.alx_priv**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alx_priv*)* @alx_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alx_free_irq(%struct.alx_priv* %0) #0 {
  %2 = alloca %struct.alx_priv*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.alx_priv* %0, %struct.alx_priv** %2, align 8
  %5 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %6 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %3, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = call i32 @pci_irq_vector(%struct.pci_dev* %9, i32 0)
  %11 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %12 = call i32 @free_irq(i32 %10, %struct.alx_priv* %11)
  %13 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %14 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %40, %20
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %24 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %21
  %28 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i32 @pci_irq_vector(%struct.pci_dev* %28, i32 %30)
  %32 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %33 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %32, i32 0, i32 1
  %34 = load %struct.alx_priv**, %struct.alx_priv*** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.alx_priv*, %struct.alx_priv** %34, i64 %36
  %38 = load %struct.alx_priv*, %struct.alx_priv** %37, align 8
  %39 = call i32 @free_irq(i32 %31, %struct.alx_priv* %38)
  br label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %21

43:                                               ; preds = %21
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %46 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %45)
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.alx_priv*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
