; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_map_vector_to_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_map_vector_to_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.i40e_ring**, %struct.i40e_ring**, %struct.i40e_ring**, %struct.i40e_q_vector** }
%struct.i40e_ring = type { %struct.i40e_ring*, %struct.i40e_q_vector* }
%struct.i40e_q_vector = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.i40e_ring* }
%struct.TYPE_3__ = type { i32, %struct.i40e_ring* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vsi*, i32, i32)* @i40e_map_vector_to_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_map_vector_to_qp(%struct.i40e_vsi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i40e_vsi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_q_vector*, align 8
  %8 = alloca %struct.i40e_ring*, align 8
  %9 = alloca %struct.i40e_ring*, align 8
  %10 = alloca %struct.i40e_ring*, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %12 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %11, i32 0, i32 3
  %13 = load %struct.i40e_q_vector**, %struct.i40e_q_vector*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.i40e_q_vector*, %struct.i40e_q_vector** %13, i64 %15
  %17 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %16, align 8
  store %struct.i40e_q_vector* %17, %struct.i40e_q_vector** %7, align 8
  %18 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %19 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %18, i32 0, i32 2
  %20 = load %struct.i40e_ring**, %struct.i40e_ring*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.i40e_ring*, %struct.i40e_ring** %20, i64 %22
  %24 = load %struct.i40e_ring*, %struct.i40e_ring** %23, align 8
  store %struct.i40e_ring* %24, %struct.i40e_ring** %8, align 8
  %25 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %26 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %25, i32 0, i32 1
  %27 = load %struct.i40e_ring**, %struct.i40e_ring*** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.i40e_ring*, %struct.i40e_ring** %27, i64 %29
  %31 = load %struct.i40e_ring*, %struct.i40e_ring** %30, align 8
  store %struct.i40e_ring* %31, %struct.i40e_ring** %9, align 8
  %32 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %7, align 8
  %33 = load %struct.i40e_ring*, %struct.i40e_ring** %8, align 8
  %34 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %33, i32 0, i32 1
  store %struct.i40e_q_vector* %32, %struct.i40e_q_vector** %34, align 8
  %35 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %7, align 8
  %36 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load %struct.i40e_ring*, %struct.i40e_ring** %37, align 8
  %39 = load %struct.i40e_ring*, %struct.i40e_ring** %8, align 8
  %40 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %39, i32 0, i32 0
  store %struct.i40e_ring* %38, %struct.i40e_ring** %40, align 8
  %41 = load %struct.i40e_ring*, %struct.i40e_ring** %8, align 8
  %42 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %7, align 8
  %43 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store %struct.i40e_ring* %41, %struct.i40e_ring** %44, align 8
  %45 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %7, align 8
  %46 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %51 = call i64 @i40e_enabled_xdp_vsi(%struct.i40e_vsi* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %79

53:                                               ; preds = %3
  %54 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %55 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %54, i32 0, i32 0
  %56 = load %struct.i40e_ring**, %struct.i40e_ring*** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.i40e_ring*, %struct.i40e_ring** %56, i64 %58
  %60 = load %struct.i40e_ring*, %struct.i40e_ring** %59, align 8
  store %struct.i40e_ring* %60, %struct.i40e_ring** %10, align 8
  %61 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %7, align 8
  %62 = load %struct.i40e_ring*, %struct.i40e_ring** %10, align 8
  %63 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %62, i32 0, i32 1
  store %struct.i40e_q_vector* %61, %struct.i40e_q_vector** %63, align 8
  %64 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %7, align 8
  %65 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load %struct.i40e_ring*, %struct.i40e_ring** %66, align 8
  %68 = load %struct.i40e_ring*, %struct.i40e_ring** %10, align 8
  %69 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %68, i32 0, i32 0
  store %struct.i40e_ring* %67, %struct.i40e_ring** %69, align 8
  %70 = load %struct.i40e_ring*, %struct.i40e_ring** %10, align 8
  %71 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %7, align 8
  %72 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store %struct.i40e_ring* %70, %struct.i40e_ring** %73, align 8
  %74 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %7, align 8
  %75 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %53, %3
  %80 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %7, align 8
  %81 = load %struct.i40e_ring*, %struct.i40e_ring** %9, align 8
  %82 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %81, i32 0, i32 1
  store %struct.i40e_q_vector* %80, %struct.i40e_q_vector** %82, align 8
  %83 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %7, align 8
  %84 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load %struct.i40e_ring*, %struct.i40e_ring** %85, align 8
  %87 = load %struct.i40e_ring*, %struct.i40e_ring** %9, align 8
  %88 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %87, i32 0, i32 0
  store %struct.i40e_ring* %86, %struct.i40e_ring** %88, align 8
  %89 = load %struct.i40e_ring*, %struct.i40e_ring** %9, align 8
  %90 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %7, align 8
  %91 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store %struct.i40e_ring* %89, %struct.i40e_ring** %92, align 8
  %93 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %7, align 8
  %94 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  ret void
}

declare dso_local i64 @i40e_enabled_xdp_vsi(%struct.i40e_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
