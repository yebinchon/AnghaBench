; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_handle_query_map_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_handle_query_map_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ibmvnic_crq = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.ibmvnic_adapter = type { %struct.TYPE_4__*, %struct.net_device* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Error %ld in QUERY_MAP_RSP\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"page_size = %d\0Atot_pages = %d\0Afree_pages = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ibmvnic_crq*, %struct.ibmvnic_adapter*)* @handle_query_map_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_query_map_rsp(%union.ibmvnic_crq* %0, %struct.ibmvnic_adapter* %1) #0 {
  %3 = alloca %union.ibmvnic_crq*, align 8
  %4 = alloca %struct.ibmvnic_adapter*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  store %union.ibmvnic_crq* %0, %union.ibmvnic_crq** %3, align 8
  store %struct.ibmvnic_adapter* %1, %struct.ibmvnic_adapter** %4, align 8
  %8 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %8, i32 0, i32 1
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %16 = bitcast %union.ibmvnic_crq* %15 to %struct.TYPE_6__*
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %24)
  br label %41

26:                                               ; preds = %2
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %29 = bitcast %union.ibmvnic_crq* %28 to %struct.TYPE_6__*
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %33 = bitcast %union.ibmvnic_crq* %32 to %struct.TYPE_6__*
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %37 = bitcast %union.ibmvnic_crq* %36 to %struct.TYPE_6__*
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @netdev_dbg(%struct.net_device* %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %26, %22
  ret void
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
