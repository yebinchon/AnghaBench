; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_map_rings_to_vectors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_map_rings_to_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, i32, i64, %struct.i40e_q_vector** }
%struct.i40e_q_vector = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_4__ = type { i32*, i64 }
%struct.TYPE_3__ = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vsi*)* @i40e_vsi_map_rings_to_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_vsi_map_rings_to_vectors(%struct.i40e_vsi* %0) #0 {
  %2 = alloca %struct.i40e_vsi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40e_q_vector*, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %2, align 8
  %9 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %10 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %3, align 4
  %12 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %13 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %71, %1
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %74

19:                                               ; preds = %15
  %20 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %21 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %20, i32 0, i32 3
  %22 = load %struct.i40e_q_vector**, %struct.i40e_q_vector*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.i40e_q_vector*, %struct.i40e_q_vector** %22, i64 %24
  %26 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %25, align 8
  store %struct.i40e_q_vector* %26, %struct.i40e_q_vector** %8, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %28, %29
  %31 = call i32 @DIV_ROUND_UP(i32 %27, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %8, align 8
  %34 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %8, align 8
  %36 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %39 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = sub nsw i64 %41, 1
  %43 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %8, align 8
  %44 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %43, i32 0, i32 4
  store i64 %42, i64* %44, align 8
  %45 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %8, align 8
  %46 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %8, align 8
  %49 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %8, align 8
  %52 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  %54 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %8, align 8
  %55 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  br label %57

57:                                               ; preds = %61, %19
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %5, align 4
  %60 = icmp ne i32 %58, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @i40e_map_vector_to_qp(%struct.i40e_vsi* %62, i32 %63, i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %3, align 4
  br label %57

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %15

74:                                               ; preds = %15
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @i40e_map_vector_to_qp(%struct.i40e_vsi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
