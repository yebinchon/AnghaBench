; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_ring_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_ring_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_q_vector = type { i32, %struct.TYPE_2__, %struct.igc_adapter* }
%struct.TYPE_2__ = type { i64 }
%struct.igc_adapter = type { i32, i32, i32, i64, i32, %struct.igc_hw }
%struct.igc_hw = type { i32 }

@__IGC_DOWN = common dso_local global i32 0, align 4
@IGC_EIMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igc_q_vector*)* @igc_ring_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igc_ring_irq_enable(%struct.igc_q_vector* %0) #0 {
  %2 = alloca %struct.igc_q_vector*, align 8
  %3 = alloca %struct.igc_adapter*, align 8
  %4 = alloca %struct.igc_hw*, align 8
  store %struct.igc_q_vector* %0, %struct.igc_q_vector** %2, align 8
  %5 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %6 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %5, i32 0, i32 2
  %7 = load %struct.igc_adapter*, %struct.igc_adapter** %6, align 8
  store %struct.igc_adapter* %7, %struct.igc_adapter** %3, align 8
  %8 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %8, i32 0, i32 5
  store %struct.igc_hw* %9, %struct.igc_hw** %4, align 8
  %10 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %11 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 3
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %23 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %21
  %28 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 3
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %27, %15
  %34 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %40 = call i32 @igc_set_itr(%struct.igc_q_vector* %39)
  br label %44

41:                                               ; preds = %33
  %42 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %43 = call i32 @igc_update_ring_itr(%struct.igc_q_vector* %42)
  br label %44

44:                                               ; preds = %41, %38
  br label %45

45:                                               ; preds = %44, %27, %21
  %46 = load i32, i32* @__IGC_DOWN, align 4
  %47 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %47, i32 0, i32 4
  %49 = call i32 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %45
  %52 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i32, i32* @IGC_EIMS, align 4
  %58 = load %struct.igc_q_vector*, %struct.igc_q_vector** %2, align 8
  %59 = getelementptr inbounds %struct.igc_q_vector, %struct.igc_q_vector* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @wr32(i32 %57, i32 %60)
  br label %65

62:                                               ; preds = %51
  %63 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %64 = call i32 @igc_irq_enable(%struct.igc_adapter* %63)
  br label %65

65:                                               ; preds = %62, %56
  br label %66

66:                                               ; preds = %65, %45
  ret void
}

declare dso_local i32 @igc_set_itr(%struct.igc_q_vector*) #1

declare dso_local i32 @igc_update_ring_itr(%struct.igc_q_vector*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @igc_irq_enable(%struct.igc_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
