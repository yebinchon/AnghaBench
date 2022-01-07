; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_next_crq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_next_crq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ibmvnic_crq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ibmvnic_adapter = type { %struct.ibmvnic_crq_queue }
%struct.ibmvnic_crq_queue = type { i64, i64, %union.ibmvnic_crq* }

@IBMVNIC_CRQ_CMD_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.ibmvnic_crq* (%struct.ibmvnic_adapter*)* @ibmvnic_next_crq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.ibmvnic_crq* @ibmvnic_next_crq(%struct.ibmvnic_adapter* %0) #0 {
  %2 = alloca %struct.ibmvnic_adapter*, align 8
  %3 = alloca %struct.ibmvnic_crq_queue*, align 8
  %4 = alloca %union.ibmvnic_crq*, align 8
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %2, align 8
  %5 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %5, i32 0, i32 0
  store %struct.ibmvnic_crq_queue* %6, %struct.ibmvnic_crq_queue** %3, align 8
  %7 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %3, align 8
  %8 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %7, i32 0, i32 2
  %9 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %8, align 8
  %10 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %3, align 8
  %11 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %union.ibmvnic_crq, %union.ibmvnic_crq* %9, i64 %12
  store %union.ibmvnic_crq* %13, %union.ibmvnic_crq** %4, align 8
  %14 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %4, align 8
  %15 = bitcast %union.ibmvnic_crq* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IBMVNIC_CRQ_CMD_RSP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %1
  %22 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %3, align 8
  %23 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %3, align 8
  %27 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %3, align 8
  %32 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %30, %21
  br label %35

34:                                               ; preds = %1
  store %union.ibmvnic_crq* null, %union.ibmvnic_crq** %4, align 8
  br label %35

35:                                               ; preds = %34, %33
  %36 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %4, align 8
  ret %union.ibmvnic_crq* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
