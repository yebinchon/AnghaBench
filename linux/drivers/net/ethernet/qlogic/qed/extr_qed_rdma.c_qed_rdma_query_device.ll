; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_query_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_rdma_device = type { i32 }
%struct.qed_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qed_rdma_device* }

@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Query device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qed_rdma_device* (i8*)* @qed_rdma_query_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qed_rdma_device* @qed_rdma_query_device(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.qed_hwfn*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.qed_hwfn*
  store %struct.qed_hwfn* %5, %struct.qed_hwfn** %3, align 8
  %6 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %7 = load i32, i32* @QED_MSG_RDMA, align 4
  %8 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %6, i32 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %10 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.qed_rdma_device*, %struct.qed_rdma_device** %12, align 8
  ret %struct.qed_rdma_device* %13
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
