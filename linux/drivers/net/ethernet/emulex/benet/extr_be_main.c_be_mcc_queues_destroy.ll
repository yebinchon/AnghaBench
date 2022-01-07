; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_mcc_queues_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_mcc_queues_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.be_queue_info, %struct.be_queue_info }
%struct.be_queue_info = type { i64 }

@QTYPE_MCCQ = common dso_local global i32 0, align 4
@QTYPE_CQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*)* @be_mcc_queues_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_mcc_queues_destroy(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  %3 = alloca %struct.be_queue_info*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  %4 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  store %struct.be_queue_info* %6, %struct.be_queue_info** %3, align 8
  %7 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %8 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %13 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %14 = load i32, i32* @QTYPE_MCCQ, align 4
  %15 = call i32 @be_cmd_q_destroy(%struct.be_adapter* %12, %struct.be_queue_info* %13, i32 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %18 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %19 = call i32 @be_queue_free(%struct.be_adapter* %17, %struct.be_queue_info* %18)
  %20 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.be_queue_info* %22, %struct.be_queue_info** %3, align 8
  %23 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %24 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %29 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %30 = load i32, i32* @QTYPE_CQ, align 4
  %31 = call i32 @be_cmd_q_destroy(%struct.be_adapter* %28, %struct.be_queue_info* %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %16
  %33 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %34 = load %struct.be_queue_info*, %struct.be_queue_info** %3, align 8
  %35 = call i32 @be_queue_free(%struct.be_adapter* %33, %struct.be_queue_info* %34)
  ret void
}

declare dso_local i32 @be_cmd_q_destroy(%struct.be_adapter*, %struct.be_queue_info*, i32) #1

declare dso_local i32 @be_queue_free(%struct.be_adapter*, %struct.be_queue_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
