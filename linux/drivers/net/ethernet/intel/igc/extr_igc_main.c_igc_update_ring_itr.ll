; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_update_ring_itr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_update_ring_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_q_vector = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.igc_adapter* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.igc_adapter = type { i32, i32, i32 }

@IGC_4K_ITR = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@IGC_20K_ITR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igc_q_vector*)* @igc_update_ring_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igc_update_ring_itr(%struct.igc_q_vector* %0) #0 {
  %2 = alloca %struct.igc_q_vector*, align 8
  %3 = alloca %struct.igc_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.igc_q_vector* %0, %struct.igc_q_vector** %2, align 8
  %7 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %8 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %7, i32 0, i32 4
  %9 = load %struct.igc_adapter*, %struct.igc_adapter** %8, align 8
  store %struct.igc_adapter* %9, %struct.igc_adapter** %3, align 8
  %10 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %11 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %13 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %18 [
    i32 129, label %16
    i32 128, label %16
  ]

16:                                               ; preds = %1, %1
  %17 = load i32, i32* @IGC_4K_ITR, align 4
  store i32 %17, i32* %4, align 4
  br label %99

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %21 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %28 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = udiv i32 %30, %31
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %26, %19
  %34 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %35 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = load i32, i32* @u32, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %44 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = udiv i32 %46, %47
  %49 = call i32 @max_t(i32 %41, i32 %42, i32 %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %40, %33
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  br label %112

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 24
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @min(i32 %57, i32 3000)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp sgt i32 %59, 300
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 1200
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = sdiv i32 %65, 3
  store i32 %66, i32* %4, align 4
  br label %70

67:                                               ; preds = %61, %54
  %68 = load i32, i32* %5, align 4
  %69 = sdiv i32 %68, 2
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @IGC_20K_ITR, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %98

74:                                               ; preds = %70
  %75 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %76 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 3
  br i1 %84, label %96, label %85

85:                                               ; preds = %80, %74
  %86 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %87 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %85
  %92 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %93 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 3
  br i1 %95, label %96, label %98

96:                                               ; preds = %91, %80
  %97 = load i32, i32* @IGC_20K_ITR, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %91, %85, %70
  br label %99

99:                                               ; preds = %98, %16
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %102 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %100, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load i32, i32* %4, align 4
  %107 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %108 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %110 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %109, i32 0, i32 1
  store i32 1, i32* %110, align 4
  br label %111

111:                                              ; preds = %105, %99
  br label %112

112:                                              ; preds = %111, %53
  %113 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %114 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  store i32 0, i32* %115, align 4
  %116 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %117 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  %119 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %120 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  store i32 0, i32* %121, align 4
  %122 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %123 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  store i32 0, i32* %124, align 8
  ret void
}

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
