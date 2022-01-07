; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_set_itr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_set_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_q_vector = type { i32, i32, %struct.TYPE_2__, %struct.TYPE_2__, %struct.igc_adapter* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.igc_adapter = type { i32, i32, i32 }

@IGC_4K_ITR = common dso_local global i32 0, align 4
@IGC_70K_ITR = common dso_local global i32 0, align 4
@IGC_20K_ITR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igc_q_vector*)* @igc_set_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igc_set_itr(%struct.igc_q_vector* %0) #0 {
  %2 = alloca %struct.igc_q_vector*, align 8
  %3 = alloca %struct.igc_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.igc_q_vector* %0, %struct.igc_q_vector** %2, align 8
  %6 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %7 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %6, i32 0, i32 4
  %8 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  store %struct.igc_adapter* %8, %struct.igc_adapter** %3, align 8
  %9 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %10 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %17 [
    i32 132, label %15
    i32 131, label %15
  ]

15:                                               ; preds = %1, %1
  store i32 0, i32* %5, align 4
  %16 = load i32, i32* @IGC_4K_ITR, align 4
  store i32 %16, i32* %4, align 4
  br label %71

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %20 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %21 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %20, i32 0, i32 3
  %22 = call i32 @igc_update_itr(%struct.igc_q_vector* %19, %struct.TYPE_2__* %21)
  %23 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %24 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %25 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %24, i32 0, i32 2
  %26 = call i32 @igc_update_itr(%struct.igc_q_vector* %23, %struct.TYPE_2__* %25)
  %27 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %28 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %32 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @max(i32 %30, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 128
  br i1 %37, label %38, label %61

38:                                               ; preds = %18
  %39 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %40 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %60, label %49

49:                                               ; preds = %44, %38
  %50 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %51 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %44
  store i32 129, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %55, %49, %18
  %62 = load i32, i32* %5, align 4
  switch i32 %62, label %69 [
    i32 128, label %63
    i32 129, label %65
    i32 130, label %67
  ]

63:                                               ; preds = %61
  %64 = load i32, i32* @IGC_70K_ITR, align 4
  store i32 %64, i32* %4, align 4
  br label %70

65:                                               ; preds = %61
  %66 = load i32, i32* @IGC_20K_ITR, align 4
  store i32 %66, i32* %4, align 4
  br label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @IGC_4K_ITR, align 4
  store i32 %68, i32* %4, align 4
  br label %70

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %67, %65, %63
  br label %71

71:                                               ; preds = %70, %15
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %74 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %72, %75
  br i1 %76, label %77, label %107

77:                                               ; preds = %71
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %80 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %78, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %77
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %86 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = mul nsw i32 %84, %87
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %91 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = ashr i32 %92, 2
  %94 = add nsw i32 %89, %93
  %95 = sdiv i32 %88, %94
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @max(i32 %95, i32 %96)
  br label %100

98:                                               ; preds = %77
  %99 = load i32, i32* %4, align 4
  br label %100

100:                                              ; preds = %98, %83
  %101 = phi i32 [ %97, %83 ], [ %99, %98 ]
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %104 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %106 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %105, i32 0, i32 1
  store i32 1, i32* %106, align 4
  br label %107

107:                                              ; preds = %100, %71
  ret void
}

declare dso_local i32 @igc_update_itr(%struct.igc_q_vector*, %struct.TYPE_2__*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
