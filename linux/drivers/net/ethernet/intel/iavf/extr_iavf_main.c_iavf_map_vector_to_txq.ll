; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_map_vector_to_txq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_map_vector_to_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i32, %struct.iavf_hw, %struct.iavf_ring*, %struct.iavf_q_vector* }
%struct.iavf_hw = type { i32 }
%struct.iavf_ring = type { i32, i32*, %struct.iavf_ring*, %struct.iavf_q_vector* }
%struct.iavf_q_vector = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i32, %struct.iavf_ring* }

@jiffies = common dso_local global i64 0, align 8
@IAVF_TX_ITR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_adapter*, i32, i32)* @iavf_map_vector_to_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_map_vector_to_txq(%struct.iavf_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iavf_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iavf_q_vector*, align 8
  %8 = alloca %struct.iavf_ring*, align 8
  %9 = alloca %struct.iavf_hw*, align 8
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %10, i32 0, i32 3
  %12 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %12, i64 %14
  store %struct.iavf_q_vector* %15, %struct.iavf_q_vector** %7, align 8
  %16 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %16, i32 0, i32 2
  %18 = load %struct.iavf_ring*, %struct.iavf_ring** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %18, i64 %20
  store %struct.iavf_ring* %21, %struct.iavf_ring** %8, align 8
  %22 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %22, i32 0, i32 1
  store %struct.iavf_hw* %23, %struct.iavf_hw** %9, align 8
  %24 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %7, align 8
  %25 = load %struct.iavf_ring*, %struct.iavf_ring** %8, align 8
  %26 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %25, i32 0, i32 3
  store %struct.iavf_q_vector* %24, %struct.iavf_q_vector** %26, align 8
  %27 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %7, align 8
  %28 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  %30 = load %struct.iavf_ring*, %struct.iavf_ring** %29, align 8
  %31 = load %struct.iavf_ring*, %struct.iavf_ring** %8, align 8
  %32 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %31, i32 0, i32 2
  store %struct.iavf_ring* %30, %struct.iavf_ring** %32, align 8
  %33 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %34 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %33, i32 0, i32 0
  %35 = load %struct.iavf_ring*, %struct.iavf_ring** %8, align 8
  %36 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load %struct.iavf_ring*, %struct.iavf_ring** %8, align 8
  %38 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %7, align 8
  %39 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  store %struct.iavf_ring* %37, %struct.iavf_ring** %40, align 8
  %41 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %7, align 8
  %42 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = load i64, i64* @jiffies, align 8
  %47 = add nsw i64 %46, 1
  %48 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %7, align 8
  %49 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store i64 %47, i64* %50, align 8
  %51 = load %struct.iavf_ring*, %struct.iavf_ring** %8, align 8
  %52 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ITR_TO_REG(i32 %53)
  %55 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %7, align 8
  %56 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %7, align 8
  %59 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.iavf_hw*, %struct.iavf_hw** %9, align 8
  %63 = load i32, i32* @IAVF_TX_ITR, align 4
  %64 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %7, align 8
  %65 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @IAVF_VFINT_ITRN1(i32 %63, i32 %66)
  %68 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %7, align 8
  %69 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = ashr i32 %71, 1
  %73 = call i32 @wr32(%struct.iavf_hw* %62, i32 %67, i32 %72)
  %74 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %7, align 8
  %75 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %7, align 8
  %79 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  ret void
}

declare dso_local i32 @ITR_TO_REG(i32) #1

declare dso_local i32 @wr32(%struct.iavf_hw*, i32, i32) #1

declare dso_local i32 @IAVF_VFINT_ITRN1(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
