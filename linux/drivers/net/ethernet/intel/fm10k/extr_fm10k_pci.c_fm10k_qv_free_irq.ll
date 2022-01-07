; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_qv_free_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_qv_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32, %struct.fm10k_q_vector**, %struct.msix_entry* }
%struct.fm10k_q_vector = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.msix_entry = type { i32 }

@NON_Q_VECTORS = common dso_local global i32 0, align 4
@FM10K_ITR_MASK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fm10k_qv_free_irq(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca %struct.fm10k_intfc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.msix_entry*, align 8
  %5 = alloca %struct.fm10k_q_vector*, align 8
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %2, align 8
  %6 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %7 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %10 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %9, i32 0, i32 2
  %11 = load %struct.msix_entry*, %struct.msix_entry** %10, align 8
  %12 = load i32, i32* @NON_Q_VECTORS, align 4
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %11, i64 %15
  store %struct.msix_entry* %16, %struct.msix_entry** %4, align 8
  br label %17

17:                                               ; preds = %44, %43, %1
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %3, align 4
  %23 = load %struct.msix_entry*, %struct.msix_entry** %4, align 8
  %24 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %23, i32 -1
  store %struct.msix_entry* %24, %struct.msix_entry** %4, align 8
  %25 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %26 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %25, i32 0, i32 1
  %27 = load %struct.fm10k_q_vector**, %struct.fm10k_q_vector*** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %27, i64 %29
  %31 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %30, align 8
  store %struct.fm10k_q_vector* %31, %struct.fm10k_q_vector** %5, align 8
  %32 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %5, align 8
  %33 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %20
  %38 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %5, align 8
  %39 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %17

44:                                               ; preds = %37, %20
  %45 = load %struct.msix_entry*, %struct.msix_entry** %4, align 8
  %46 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @irq_set_affinity_hint(i32 %47, i32* null)
  %49 = load i32, i32* @FM10K_ITR_MASK_SET, align 4
  %50 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %5, align 8
  %51 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @writel(i32 %49, i32 %52)
  %54 = load %struct.msix_entry*, %struct.msix_entry** %4, align 8
  %55 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %5, align 8
  %58 = call i32 @free_irq(i32 %56, %struct.fm10k_q_vector* %57)
  br label %17

59:                                               ; preds = %17
  ret void
}

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.fm10k_q_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
