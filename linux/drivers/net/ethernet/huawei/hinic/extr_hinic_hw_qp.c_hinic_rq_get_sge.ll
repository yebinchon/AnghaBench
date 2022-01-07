; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_qp.c_hinic_rq_get_sge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_qp.c_hinic_rq_get_sge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_rq = type { %struct.hinic_rq_cqe** }
%struct.hinic_rq_cqe = type { i32 }
%struct.hinic_rq_wqe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hinic_sge = type { i32, i8*, i8* }

@LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hinic_rq_get_sge(%struct.hinic_rq* %0, %struct.hinic_rq_wqe* %1, i64 %2, %struct.hinic_sge* %3) #0 {
  %5 = alloca %struct.hinic_rq*, align 8
  %6 = alloca %struct.hinic_rq_wqe*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hinic_sge*, align 8
  %9 = alloca %struct.hinic_rq_cqe*, align 8
  %10 = alloca i8*, align 8
  store %struct.hinic_rq* %0, %struct.hinic_rq** %5, align 8
  store %struct.hinic_rq_wqe* %1, %struct.hinic_rq_wqe** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.hinic_sge* %3, %struct.hinic_sge** %8, align 8
  %11 = load %struct.hinic_rq*, %struct.hinic_rq** %5, align 8
  %12 = getelementptr inbounds %struct.hinic_rq, %struct.hinic_rq* %11, i32 0, i32 0
  %13 = load %struct.hinic_rq_cqe**, %struct.hinic_rq_cqe*** %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds %struct.hinic_rq_cqe*, %struct.hinic_rq_cqe** %13, i64 %14
  %16 = load %struct.hinic_rq_cqe*, %struct.hinic_rq_cqe** %15, align 8
  store %struct.hinic_rq_cqe* %16, %struct.hinic_rq_cqe** %9, align 8
  %17 = load %struct.hinic_rq_cqe*, %struct.hinic_rq_cqe** %9, align 8
  %18 = getelementptr inbounds %struct.hinic_rq_cqe, %struct.hinic_rq_cqe* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @be32_to_cpu(i32 %19)
  store i8* %20, i8** %10, align 8
  %21 = load %struct.hinic_rq_wqe*, %struct.hinic_rq_wqe** %6, align 8
  %22 = getelementptr inbounds %struct.hinic_rq_wqe, %struct.hinic_rq_wqe* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @be32_to_cpu(i32 %24)
  %26 = load %struct.hinic_sge*, %struct.hinic_sge** %8, align 8
  %27 = getelementptr inbounds %struct.hinic_sge, %struct.hinic_sge* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.hinic_rq_wqe*, %struct.hinic_rq_wqe** %6, align 8
  %29 = getelementptr inbounds %struct.hinic_rq_wqe, %struct.hinic_rq_wqe* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @be32_to_cpu(i32 %31)
  %33 = load %struct.hinic_sge*, %struct.hinic_sge** %8, align 8
  %34 = getelementptr inbounds %struct.hinic_sge, %struct.hinic_sge* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* @LEN, align 4
  %37 = call i32 @HINIC_RQ_CQE_SGE_GET(i8* %35, i32 %36)
  %38 = load %struct.hinic_sge*, %struct.hinic_sge** %8, align 8
  %39 = getelementptr inbounds %struct.hinic_sge, %struct.hinic_sge* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  ret void
}

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @HINIC_RQ_CQE_SGE_GET(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
