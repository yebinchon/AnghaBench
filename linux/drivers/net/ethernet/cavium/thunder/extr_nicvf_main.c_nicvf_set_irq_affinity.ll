; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_set_irq_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_set_irq_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32, i32*, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NICVF_INTR_ID_SQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*)* @nicvf_set_irq_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_set_irq_affinity(%struct.nicvf* %0) #0 {
  %2 = alloca %struct.nicvf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %69, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %8 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %72

11:                                               ; preds = %5
  %12 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %13 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  br label %69

21:                                               ; preds = %11
  %22 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %23 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32 @zalloc_cpumask_var(i32* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  br label %72

32:                                               ; preds = %21
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @NICVF_INTR_ID_SQ, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @nicvf_netdev_qidx(%struct.nicvf* %37, i32 %38)
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %42

41:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %36
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %45 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cpumask_local_spread(i32 %43, i32 %46)
  %48 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %49 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cpumask_set_cpu(i32 %47, i32 %54)
  %56 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %57 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @pci_irq_vector(i32 %58, i32 %59)
  %61 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %62 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @irq_set_affinity_hint(i32 %60, i32 %67)
  br label %69

69:                                               ; preds = %42, %20
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %5

72:                                               ; preds = %31, %5
  ret void
}

declare dso_local i32 @zalloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @nicvf_netdev_qidx(%struct.nicvf*, i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @cpumask_local_spread(i32, i32) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
