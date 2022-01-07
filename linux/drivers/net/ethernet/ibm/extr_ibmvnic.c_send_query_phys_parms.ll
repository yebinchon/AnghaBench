; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_send_query_phys_parms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_send_query_phys_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i64, i32 }
%union.ibmvnic_crq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@IBMVNIC_CRQ_CMD = common dso_local global i32 0, align 4
@QUERY_PHYS_PARMS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvnic_adapter*)* @send_query_phys_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_query_phys_parms(%struct.ibmvnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibmvnic_adapter*, align 8
  %4 = alloca %union.ibmvnic_crq, align 4
  %5 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %3, align 8
  %6 = call i32 @memset(%union.ibmvnic_crq* %4, i32 0, i32 8)
  %7 = load i32, i32* @IBMVNIC_CRQ_CMD, align 4
  %8 = bitcast %union.ibmvnic_crq* %4 to %struct.TYPE_2__*
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @QUERY_PHYS_PARMS, align 4
  %11 = bitcast %union.ibmvnic_crq* %4 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %13, i32 0, i32 1
  %15 = call i32 @init_completion(i32* %14)
  %16 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %17 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %16, %union.ibmvnic_crq* %4)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %36

22:                                               ; preds = %1
  %23 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %23, i32 0, i32 1
  %25 = call i32 @wait_for_completion(i32* %24)
  %26 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  br label %34

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i32 [ %32, %30 ], [ 0, %33 ]
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %20
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @memset(%union.ibmvnic_crq*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter*, %union.ibmvnic_crq*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
