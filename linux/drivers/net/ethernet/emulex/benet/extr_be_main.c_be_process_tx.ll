; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_process_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_process_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32 }
%struct.be_tx_obj = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.be_tx_compl_info = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*, %struct.be_tx_obj*, i32)* @be_process_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_process_tx(%struct.be_adapter* %0, %struct.be_tx_obj* %1, i32 %2) #0 {
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca %struct.be_tx_obj*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.be_tx_compl_info*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store %struct.be_tx_obj* %1, %struct.be_tx_obj** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %15, %3
  %11 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %12 = load %struct.be_tx_obj*, %struct.be_tx_obj** %5, align 8
  %13 = call %struct.be_tx_compl_info* @be_tx_compl_get(%struct.be_adapter* %11, %struct.be_tx_obj* %12)
  store %struct.be_tx_compl_info* %13, %struct.be_tx_compl_info** %9, align 8
  %14 = icmp ne %struct.be_tx_compl_info* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %17 = load %struct.be_tx_obj*, %struct.be_tx_obj** %5, align 8
  %18 = load %struct.be_tx_compl_info*, %struct.be_tx_compl_info** %9, align 8
  %19 = getelementptr inbounds %struct.be_tx_compl_info, %struct.be_tx_compl_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @be_tx_compl_process(%struct.be_adapter* %16, %struct.be_tx_obj* %17, i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  br label %10

28:                                               ; preds = %10
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %75

31:                                               ; preds = %28
  %32 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %33 = load %struct.be_tx_obj*, %struct.be_tx_obj** %5, align 8
  %34 = getelementptr inbounds %struct.be_tx_obj, %struct.be_tx_obj* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @be_cq_notify(%struct.be_adapter* %32, i32 %36, i32 1, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.be_tx_obj*, %struct.be_tx_obj** %5, align 8
  %41 = getelementptr inbounds %struct.be_tx_obj, %struct.be_tx_obj* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = call i32 @atomic_sub(i32 %39, i32* %42)
  %44 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %45 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @__netif_subqueue_stopped(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %31
  %51 = load %struct.be_tx_obj*, %struct.be_tx_obj** %5, align 8
  %52 = call i64 @be_can_txq_wake(%struct.be_tx_obj* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %56 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @netif_wake_subqueue(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %50, %31
  %61 = load %struct.be_tx_obj*, %struct.be_tx_obj** %5, align 8
  %62 = call %struct.TYPE_6__* @tx_stats(%struct.be_tx_obj* %61)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = call i32 @u64_stats_update_begin(i32* %63)
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.be_tx_obj*, %struct.be_tx_obj** %5, align 8
  %67 = call %struct.TYPE_6__* @tx_stats(%struct.be_tx_obj* %66)
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %65
  store i32 %70, i32* %68, align 4
  %71 = load %struct.be_tx_obj*, %struct.be_tx_obj** %5, align 8
  %72 = call %struct.TYPE_6__* @tx_stats(%struct.be_tx_obj* %71)
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = call i32 @u64_stats_update_end(i32* %73)
  br label %75

75:                                               ; preds = %60, %28
  ret void
}

declare dso_local %struct.be_tx_compl_info* @be_tx_compl_get(%struct.be_adapter*, %struct.be_tx_obj*) #1

declare dso_local i64 @be_tx_compl_process(%struct.be_adapter*, %struct.be_tx_obj*, i32) #1

declare dso_local i32 @be_cq_notify(%struct.be_adapter*, i32, i32, i32) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i64 @__netif_subqueue_stopped(i32, i32) #1

declare dso_local i64 @be_can_txq_wake(%struct.be_tx_obj*) #1

declare dso_local i32 @netif_wake_subqueue(i32, i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local %struct.TYPE_6__* @tx_stats(%struct.be_tx_obj*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
