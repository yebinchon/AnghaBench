; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_free_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, %struct.msix_entry*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.ixgbe_adapter**, %struct.TYPE_4__* }
%struct.msix_entry = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ixgbe_q_vector = type { i32, i32, %struct.msix_entry*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.ixgbe_q_vector**, %struct.TYPE_4__* }

@IXGBE_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_free_irq(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_q_vector*, align 8
  %5 = alloca %struct.msix_entry*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %6 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @IXGBE_FLAG_MSIX_ENABLED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 6
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %19 = bitcast %struct.ixgbe_adapter* %18 to %struct.ixgbe_q_vector*
  %20 = call i32 @free_irq(i32 %17, %struct.ixgbe_q_vector* %19)
  br label %86

21:                                               ; preds = %1
  %22 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %22, i32 0, i32 2
  %24 = load %struct.msix_entry*, %struct.msix_entry** %23, align 8
  %25 = icmp ne %struct.msix_entry* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %86

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %71, %27
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %28
  %35 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %35, i32 0, i32 5
  %37 = load %struct.ixgbe_adapter**, %struct.ixgbe_adapter*** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %37, i64 %39
  %41 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %40, align 8
  %42 = bitcast %struct.ixgbe_adapter* %41 to %struct.ixgbe_q_vector*
  store %struct.ixgbe_q_vector* %42, %struct.ixgbe_q_vector** %4, align 8
  %43 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %43, i32 0, i32 2
  %45 = load %struct.msix_entry*, %struct.msix_entry** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %45, i64 %47
  store %struct.msix_entry* %48, %struct.msix_entry** %5, align 8
  %49 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %4, align 8
  %50 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %34
  %55 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %4, align 8
  %56 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %71

61:                                               ; preds = %54, %34
  %62 = load %struct.msix_entry*, %struct.msix_entry** %5, align 8
  %63 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @irq_set_affinity_hint(i32 %64, i32* null)
  %66 = load %struct.msix_entry*, %struct.msix_entry** %5, align 8
  %67 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %4, align 8
  %70 = call i32 @free_irq(i32 %68, %struct.ixgbe_q_vector* %69)
  br label %71

71:                                               ; preds = %61, %60
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %28

74:                                               ; preds = %28
  %75 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %76 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %75, i32 0, i32 2
  %77 = load %struct.msix_entry*, %struct.msix_entry** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %77, i64 %79
  %81 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %84 = bitcast %struct.ixgbe_adapter* %83 to %struct.ixgbe_q_vector*
  %85 = call i32 @free_irq(i32 %82, %struct.ixgbe_q_vector* %84)
  br label %86

86:                                               ; preds = %74, %26, %12
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.ixgbe_q_vector*) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
