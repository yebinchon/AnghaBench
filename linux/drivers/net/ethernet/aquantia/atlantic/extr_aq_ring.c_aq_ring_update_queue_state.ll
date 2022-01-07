; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ring.c_aq_ring_update_queue_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ring.c_aq_ring_update_queue_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_ring_s = type { i32 }

@AQ_CFG_SKB_FRAGS_MAX = common dso_local global i64 0, align 8
@AQ_CFG_RESTART_DESC_THRES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aq_ring_update_queue_state(%struct.aq_ring_s* %0) #0 {
  %2 = alloca %struct.aq_ring_s*, align 8
  store %struct.aq_ring_s* %0, %struct.aq_ring_s** %2, align 8
  %3 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %4 = call i64 @aq_ring_avail_dx(%struct.aq_ring_s* %3)
  %5 = load i64, i64* @AQ_CFG_SKB_FRAGS_MAX, align 8
  %6 = icmp sle i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %9 = call i32 @aq_ring_queue_stop(%struct.aq_ring_s* %8)
  br label %19

10:                                               ; preds = %1
  %11 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %12 = call i64 @aq_ring_avail_dx(%struct.aq_ring_s* %11)
  %13 = load i64, i64* @AQ_CFG_RESTART_DESC_THRES, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.aq_ring_s*, %struct.aq_ring_s** %2, align 8
  %17 = call i32 @aq_ring_queue_wake(%struct.aq_ring_s* %16)
  br label %18

18:                                               ; preds = %15, %10
  br label %19

19:                                               ; preds = %18, %7
  ret void
}

declare dso_local i64 @aq_ring_avail_dx(%struct.aq_ring_s*) #1

declare dso_local i32 @aq_ring_queue_stop(%struct.aq_ring_s*) #1

declare dso_local i32 @aq_ring_queue_wake(%struct.aq_ring_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
