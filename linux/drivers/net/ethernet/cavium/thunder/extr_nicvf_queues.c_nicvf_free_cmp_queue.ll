; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_free_cmp_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_free_cmp_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32 }
%struct.cmp_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*, %struct.cmp_queue*)* @nicvf_free_cmp_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_free_cmp_queue(%struct.nicvf* %0, %struct.cmp_queue* %1) #0 {
  %3 = alloca %struct.nicvf*, align 8
  %4 = alloca %struct.cmp_queue*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %3, align 8
  store %struct.cmp_queue* %1, %struct.cmp_queue** %4, align 8
  %5 = load %struct.cmp_queue*, %struct.cmp_queue** %4, align 8
  %6 = icmp ne %struct.cmp_queue* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %20

8:                                                ; preds = %2
  %9 = load %struct.cmp_queue*, %struct.cmp_queue** %4, align 8
  %10 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  br label %20

15:                                               ; preds = %8
  %16 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %17 = load %struct.cmp_queue*, %struct.cmp_queue** %4, align 8
  %18 = getelementptr inbounds %struct.cmp_queue, %struct.cmp_queue* %17, i32 0, i32 0
  %19 = call i32 @nicvf_free_q_desc_mem(%struct.nicvf* %16, %struct.TYPE_2__* %18)
  br label %20

20:                                               ; preds = %15, %14, %7
  ret void
}

declare dso_local i32 @nicvf_free_q_desc_mem(%struct.nicvf*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
