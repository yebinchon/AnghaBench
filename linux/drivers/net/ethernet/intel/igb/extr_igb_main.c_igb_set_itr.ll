; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_set_itr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_set_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_q_vector = type { i32, i32, %struct.TYPE_2__, %struct.TYPE_2__, %struct.igb_adapter* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.igb_adapter = type { i64, i32, i32 }

@SPEED_1000 = common dso_local global i64 0, align 8
@IGB_4K_ITR = common dso_local global i32 0, align 4
@IGB_70K_ITR = common dso_local global i32 0, align 4
@IGB_20K_ITR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_q_vector*)* @igb_set_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_set_itr(%struct.igb_q_vector* %0) #0 {
  %2 = alloca %struct.igb_q_vector*, align 8
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.igb_q_vector* %0, %struct.igb_q_vector** %2, align 8
  %6 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %7 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %6, i32 0, i32 4
  %8 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  store %struct.igb_adapter* %8, %struct.igb_adapter** %3, align 8
  %9 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %10 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SPEED_1000, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %18 = load i32, i32* @IGB_4K_ITR, align 4
  store i32 %18, i32* %4, align 4
  br label %72

19:                                               ; preds = %1
  %20 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %21 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %22 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %21, i32 0, i32 3
  %23 = call i32 @igb_update_itr(%struct.igb_q_vector* %20, %struct.TYPE_2__* %22)
  %24 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %25 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %26 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %25, i32 0, i32 2
  %27 = call i32 @igb_update_itr(%struct.igb_q_vector* %24, %struct.TYPE_2__* %26)
  %28 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %29 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %33 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @max(i32 %31, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 128
  br i1 %38, label %39, label %62

39:                                               ; preds = %19
  %40 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %41 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %61, label %50

50:                                               ; preds = %45, %39
  %51 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %52 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %61, label %62

61:                                               ; preds = %56, %45
  store i32 129, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %56, %50, %19
  %63 = load i32, i32* %5, align 4
  switch i32 %63, label %70 [
    i32 128, label %64
    i32 129, label %66
    i32 130, label %68
  ]

64:                                               ; preds = %62
  %65 = load i32, i32* @IGB_70K_ITR, align 4
  store i32 %65, i32* %4, align 4
  br label %71

66:                                               ; preds = %62
  %67 = load i32, i32* @IGB_20K_ITR, align 4
  store i32 %67, i32* %4, align 4
  br label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @IGB_4K_ITR, align 4
  store i32 %69, i32* %4, align 4
  br label %71

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %68, %66, %64
  br label %72

72:                                               ; preds = %71, %17
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %75 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %78, label %108

78:                                               ; preds = %72
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %81 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %79, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %78
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %87 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %85, %88
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %92 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = ashr i32 %93, 2
  %95 = add nsw i32 %90, %94
  %96 = sdiv i32 %89, %95
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @max(i32 %96, i32 %97)
  br label %101

99:                                               ; preds = %78
  %100 = load i32, i32* %4, align 4
  br label %101

101:                                              ; preds = %99, %84
  %102 = phi i32 [ %98, %84 ], [ %100, %99 ]
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %105 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.igb_q_vector*, %struct.igb_q_vector** %2, align 8
  %107 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %106, i32 0, i32 1
  store i32 1, i32* %107, align 4
  br label %108

108:                                              ; preds = %101, %72
  ret void
}

declare dso_local i32 @igb_update_itr(%struct.igb_q_vector*, %struct.TYPE_2__*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
