; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_unregister_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_unregister_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32, i32*, %struct.nicvf**, i32*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@NICVF_INTR_ID_SQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*)* @nicvf_unregister_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_unregister_interrupts(%struct.nicvf* %0) #0 {
  %2 = alloca %struct.nicvf*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %2, align 8
  %5 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %6 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %5, i32 0, i32 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %7, %struct.pci_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %65, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %11 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %68

14:                                               ; preds = %8
  %15 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %16 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  br label %65

24:                                               ; preds = %14
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @pci_irq_vector(%struct.pci_dev* %25, i32 %26)
  %28 = call i32 @irq_set_affinity_hint(i32 %27, i32* null)
  %29 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %30 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @free_cpumask_var(i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @NICVF_INTR_ID_SQ, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %24
  %41 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @pci_irq_vector(%struct.pci_dev* %41, i32 %42)
  %44 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %45 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %44, i32 0, i32 2
  %46 = load %struct.nicvf**, %struct.nicvf*** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.nicvf*, %struct.nicvf** %46, i64 %48
  %50 = load %struct.nicvf*, %struct.nicvf** %49, align 8
  %51 = call i32 @free_irq(i32 %43, %struct.nicvf* %50)
  br label %58

52:                                               ; preds = %24
  %53 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @pci_irq_vector(%struct.pci_dev* %53, i32 %54)
  %56 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %57 = call i32 @free_irq(i32 %55, %struct.nicvf* %56)
  br label %58

58:                                               ; preds = %52, %40
  %59 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %60 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %58, %23
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %8

68:                                               ; preds = %8
  %69 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %70 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %69)
  %71 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %72 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  ret void
}

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @free_cpumask_var(i32) #1

declare dso_local i32 @free_irq(i32, %struct.nicvf*) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
