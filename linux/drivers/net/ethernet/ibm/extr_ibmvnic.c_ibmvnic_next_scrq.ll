; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_next_scrq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_next_scrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sub_crq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ibmvnic_adapter = type { i32 }
%struct.ibmvnic_sub_crq_queue = type { i64, i64, i32, %union.sub_crq* }

@IBMVNIC_CRQ_CMD_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.sub_crq* (%struct.ibmvnic_adapter*, %struct.ibmvnic_sub_crq_queue*)* @ibmvnic_next_scrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.sub_crq* @ibmvnic_next_scrq(%struct.ibmvnic_adapter* %0, %struct.ibmvnic_sub_crq_queue* %1) #0 {
  %3 = alloca %struct.ibmvnic_adapter*, align 8
  %4 = alloca %struct.ibmvnic_sub_crq_queue*, align 8
  %5 = alloca %union.sub_crq*, align 8
  %6 = alloca i64, align 8
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %3, align 8
  store %struct.ibmvnic_sub_crq_queue* %1, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %7 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %8 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %7, i32 0, i32 2
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %12 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %11, i32 0, i32 3
  %13 = load %union.sub_crq*, %union.sub_crq** %12, align 8
  %14 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %15 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %union.sub_crq, %union.sub_crq* %13, i64 %16
  store %union.sub_crq* %17, %union.sub_crq** %5, align 8
  %18 = load %union.sub_crq*, %union.sub_crq** %5, align 8
  %19 = bitcast %union.sub_crq* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IBMVNIC_CRQ_CMD_RSP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %2
  %26 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %27 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %31 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %36 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %34, %25
  br label %39

38:                                               ; preds = %2
  store %union.sub_crq* null, %union.sub_crq** %5, align 8
  br label %39

39:                                               ; preds = %38, %37
  %40 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %41 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %40, i32 0, i32 2
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %union.sub_crq*, %union.sub_crq** %5, align 8
  ret %union.sub_crq* %44
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
