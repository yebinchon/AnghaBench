; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_assign_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_assign_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_q_vector = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_7__, %struct.igc_adapter* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.igc_adapter = type { i32, %struct.igc_hw }
%struct.igc_hw = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@IGC_N0_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Wrong MAC type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igc_q_vector*, i32)* @igc_assign_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igc_assign_vector(%struct.igc_q_vector* %0, i32 %1) #0 {
  %3 = alloca %struct.igc_q_vector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.igc_adapter*, align 8
  %6 = alloca %struct.igc_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.igc_q_vector* %0, %struct.igc_q_vector** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.igc_q_vector*, %struct.igc_q_vector** %3, align 8
  %10 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %9, i32 0, i32 4
  %11 = load %struct.igc_adapter*, %struct.igc_adapter** %10, align 8
  store %struct.igc_adapter* %11, %struct.igc_adapter** %5, align 8
  %12 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %12, i32 0, i32 1
  store %struct.igc_hw* %13, %struct.igc_hw** %6, align 8
  %14 = load i32, i32* @IGC_N0_QUEUE, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @IGC_N0_QUEUE, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.igc_q_vector*, %struct.igc_q_vector** %3, align 8
  %17 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.igc_q_vector*, %struct.igc_q_vector** %3, align 8
  %23 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %21, %2
  %29 = load %struct.igc_q_vector*, %struct.igc_q_vector** %3, align 8
  %30 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = icmp ne %struct.TYPE_8__* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.igc_q_vector*, %struct.igc_q_vector** %3, align 8
  %36 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %34, %28
  %42 = load %struct.igc_hw*, %struct.igc_hw** %6, align 8
  %43 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %78 [
    i32 128, label %46
  ]

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @IGC_N0_QUEUE, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load %struct.igc_hw*, %struct.igc_hw** %6, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %7, align 4
  %54 = ashr i32 %53, 1
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 1
  %57 = shl i32 %56, 4
  %58 = call i32 @igc_write_ivar(%struct.igc_hw* %51, i32 %52, i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %50, %46
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @IGC_N0_QUEUE, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load %struct.igc_hw*, %struct.igc_hw** %6, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %8, align 4
  %67 = ashr i32 %66, 1
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, 1
  %70 = shl i32 %69, 4
  %71 = add nsw i32 %70, 8
  %72 = call i32 @igc_write_ivar(%struct.igc_hw* %64, i32 %65, i32 %67, i32 %71)
  br label %73

73:                                               ; preds = %63, %59
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @BIT(i32 %74)
  %76 = load %struct.igc_q_vector*, %struct.igc_q_vector** %3, align 8
  %77 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %86

78:                                               ; preds = %41
  %79 = load %struct.igc_hw*, %struct.igc_hw** %6, align 8
  %80 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 128
  %84 = zext i1 %83 to i32
  %85 = call i32 @WARN_ONCE(i32 %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %78, %73
  %87 = load %struct.igc_q_vector*, %struct.igc_q_vector** %3, align 8
  %88 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.igc_adapter*, %struct.igc_adapter** %5, align 8
  %91 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load %struct.igc_q_vector*, %struct.igc_q_vector** %3, align 8
  %95 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  ret void
}

declare dso_local i32 @igc_write_ivar(%struct.igc_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
