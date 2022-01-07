; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_offload_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_offload_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_rspq = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sge_qset = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge_rspq*, %struct.sk_buff*)* @offload_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @offload_enqueue(%struct.sge_rspq* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sge_rspq*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sge_qset*, align 8
  store %struct.sge_rspq* %0, %struct.sge_rspq** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sge_rspq*, %struct.sge_rspq** %3, align 8
  %8 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %7, i32 0, i32 0
  %9 = call i32 @skb_queue_empty(i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.sge_rspq*, %struct.sge_rspq** %3, align 8
  %11 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %10, i32 0, i32 0
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @__skb_queue_tail(i32* %11, %struct.sk_buff* %12)
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.sge_rspq*, %struct.sge_rspq** %3, align 8
  %18 = call %struct.sge_qset* @rspq_to_qset(%struct.sge_rspq* %17)
  store %struct.sge_qset* %18, %struct.sge_qset** %6, align 8
  %19 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %20 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %19, i32 0, i32 0
  %21 = call i32 @napi_schedule(i32* %20)
  br label %22

22:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local %struct.sge_qset* @rspq_to_qset(%struct.sge_rspq*) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
