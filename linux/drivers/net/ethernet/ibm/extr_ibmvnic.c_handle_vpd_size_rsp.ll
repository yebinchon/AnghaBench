; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_handle_vpd_size_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_handle_vpd_size_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ibmvnic_crq = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ibmvnic_adapter = type { i32, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Error retrieving VPD size, rc=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ibmvnic_crq*, %struct.ibmvnic_adapter*)* @handle_vpd_size_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_vpd_size_rsp(%union.ibmvnic_crq* %0, %struct.ibmvnic_adapter* %1) #0 {
  %3 = alloca %union.ibmvnic_crq*, align 8
  %4 = alloca %struct.ibmvnic_adapter*, align 8
  %5 = alloca %struct.device*, align 8
  store %union.ibmvnic_crq* %0, %union.ibmvnic_crq** %3, align 8
  store %struct.ibmvnic_adapter* %1, %struct.ibmvnic_adapter** %4, align 8
  %6 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %7 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %6, i32 0, i32 2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %11 = bitcast %union.ibmvnic_crq* %10 to %struct.TYPE_8__*
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %19 = bitcast %union.ibmvnic_crq* %18 to %struct.TYPE_8__*
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(%struct.device* %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %24, i32 0, i32 0
  %26 = call i32 @complete(i32* %25)
  br label %40

27:                                               ; preds = %2
  %28 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %29 = bitcast %union.ibmvnic_crq* %28 to %struct.TYPE_8__*
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be64_to_cpu(i32 %31)
  %33 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %34 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %38 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %37, i32 0, i32 0
  %39 = call i32 @complete(i32* %38)
  br label %40

40:                                               ; preds = %27, %16
  ret void
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
