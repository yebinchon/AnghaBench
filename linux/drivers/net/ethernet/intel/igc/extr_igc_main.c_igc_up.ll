; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_adapter = type { i32, i32, i32, %struct.TYPE_4__**, i64, i32, %struct.igc_hw }
%struct.TYPE_4__ = type { i32 }
%struct.igc_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@__IGC_DOWN = common dso_local global i32 0, align 4
@IGC_ICR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igc_up(%struct.igc_adapter* %0) #0 {
  %2 = alloca %struct.igc_adapter*, align 8
  %3 = alloca %struct.igc_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.igc_adapter* %0, %struct.igc_adapter** %2, align 8
  %5 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %5, i32 0, i32 6
  store %struct.igc_hw* %6, %struct.igc_hw** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %8 = call i32 @igc_configure(%struct.igc_adapter* %7)
  %9 = load i32, i32* @__IGC_DOWN, align 4
  %10 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %10, i32 0, i32 5
  %12 = call i32 @clear_bit(i32 %9, i32* %11)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %29, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %22, i64 %24
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @napi_enable(i32* %27)
  br label %29

29:                                               ; preds = %19
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %13

32:                                               ; preds = %13
  %33 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %39 = call i32 @igc_configure_msix(%struct.igc_adapter* %38)
  br label %47

40:                                               ; preds = %32
  %41 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %41, i32 0, i32 3
  %43 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %43, i64 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = call i32 @igc_assign_vector(%struct.TYPE_4__* %45, i32 0)
  br label %47

47:                                               ; preds = %40, %37
  %48 = load i32, i32* @IGC_ICR, align 4
  %49 = call i32 @rd32(i32 %48)
  %50 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %51 = call i32 @igc_irq_enable(%struct.igc_adapter* %50)
  %52 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @netif_tx_start_all_queues(i32 %54)
  %56 = load %struct.igc_hw*, %struct.igc_hw** %3, align 8
  %57 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  %59 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %60 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %59, i32 0, i32 1
  %61 = call i32 @schedule_work(i32* %60)
  ret void
}

declare dso_local i32 @igc_configure(%struct.igc_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @igc_configure_msix(%struct.igc_adapter*) #1

declare dso_local i32 @igc_assign_vector(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @igc_irq_enable(%struct.igc_adapter*) #1

declare dso_local i32 @netif_tx_start_all_queues(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
