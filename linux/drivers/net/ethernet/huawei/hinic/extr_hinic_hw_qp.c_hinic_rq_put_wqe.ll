; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_qp.c_hinic_rq_put_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_qp.c_hinic_rq_put_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_rq = type { i32, %struct.hinic_rq_cqe** }
%struct.hinic_rq_cqe = type { i32 }

@RXDONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hinic_rq_put_wqe(%struct.hinic_rq* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.hinic_rq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hinic_rq_cqe*, align 8
  %8 = alloca i32, align 4
  store %struct.hinic_rq* %0, %struct.hinic_rq** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hinic_rq*, %struct.hinic_rq** %4, align 8
  %10 = getelementptr inbounds %struct.hinic_rq, %struct.hinic_rq* %9, i32 0, i32 1
  %11 = load %struct.hinic_rq_cqe**, %struct.hinic_rq_cqe*** %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.hinic_rq_cqe*, %struct.hinic_rq_cqe** %11, i64 %12
  %14 = load %struct.hinic_rq_cqe*, %struct.hinic_rq_cqe** %13, align 8
  store %struct.hinic_rq_cqe* %14, %struct.hinic_rq_cqe** %7, align 8
  %15 = load %struct.hinic_rq_cqe*, %struct.hinic_rq_cqe** %7, align 8
  %16 = getelementptr inbounds %struct.hinic_rq_cqe, %struct.hinic_rq_cqe* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @be32_to_cpu(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @RXDONE, align 4
  %21 = call i32 @HINIC_RQ_CQE_STATUS_CLEAR(i32 %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @cpu_to_be32(i32 %22)
  %24 = load %struct.hinic_rq_cqe*, %struct.hinic_rq_cqe** %7, align 8
  %25 = getelementptr inbounds %struct.hinic_rq_cqe, %struct.hinic_rq_cqe* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = call i32 (...) @wmb()
  %27 = load %struct.hinic_rq*, %struct.hinic_rq** %4, align 8
  %28 = getelementptr inbounds %struct.hinic_rq, %struct.hinic_rq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @hinic_put_wqe(i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @HINIC_RQ_CQE_STATUS_CLEAR(i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @hinic_put_wqe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
