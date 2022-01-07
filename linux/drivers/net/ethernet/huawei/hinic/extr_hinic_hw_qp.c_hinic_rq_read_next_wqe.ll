; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_qp.c_hinic_rq_read_next_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_qp.c_hinic_rq_read_next_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_rq_wqe = type { i32 }
%struct.hinic_rq = type { %struct.sk_buff**, %struct.hinic_wq* }
%struct.hinic_wq = type { i32 }
%struct.sk_buff = type { i32 }
%struct.hinic_hw_wqe = type { %struct.hinic_rq_wqe }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hinic_rq_wqe* @hinic_rq_read_next_wqe(%struct.hinic_rq* %0, i32 %1, %struct.sk_buff** %2, i64* %3) #0 {
  %5 = alloca %struct.hinic_rq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.hinic_wq*, align 8
  %10 = alloca %struct.hinic_hw_wqe*, align 8
  %11 = alloca i32, align 4
  store %struct.hinic_rq* %0, %struct.hinic_rq** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff** %2, %struct.sk_buff*** %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = load %struct.hinic_rq*, %struct.hinic_rq** %5, align 8
  %13 = getelementptr inbounds %struct.hinic_rq, %struct.hinic_rq* %12, i32 0, i32 1
  %14 = load %struct.hinic_wq*, %struct.hinic_wq** %13, align 8
  store %struct.hinic_wq* %14, %struct.hinic_wq** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.hinic_wq*, %struct.hinic_wq** %9, align 8
  %17 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ALIGN(i32 %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.hinic_wq*, %struct.hinic_wq** %9, align 8
  %22 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = udiv i32 %20, %23
  store i32 %24, i32* %11, align 4
  %25 = load %struct.hinic_rq*, %struct.hinic_rq** %5, align 8
  %26 = load i64*, i64** %8, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = zext i32 %28 to i64
  %30 = add i64 %27, %29
  %31 = trunc i64 %30 to i32
  %32 = call i64 @RQ_MASKED_IDX(%struct.hinic_rq* %25, i32 %31)
  %33 = load i64*, i64** %8, align 8
  store i64 %32, i64* %33, align 8
  %34 = load %struct.hinic_rq*, %struct.hinic_rq** %5, align 8
  %35 = getelementptr inbounds %struct.hinic_rq, %struct.hinic_rq* %34, i32 0, i32 0
  %36 = load %struct.sk_buff**, %struct.sk_buff*** %35, align 8
  %37 = load i64*, i64** %8, align 8
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %36, i64 %38
  %40 = load %struct.sk_buff*, %struct.sk_buff** %39, align 8
  %41 = load %struct.sk_buff**, %struct.sk_buff*** %7, align 8
  store %struct.sk_buff* %40, %struct.sk_buff** %41, align 8
  %42 = load %struct.hinic_wq*, %struct.hinic_wq** %9, align 8
  %43 = load i64*, i64** %8, align 8
  %44 = load i64, i64* %43, align 8
  %45 = call %struct.hinic_hw_wqe* @hinic_read_wqe_direct(%struct.hinic_wq* %42, i64 %44)
  store %struct.hinic_hw_wqe* %45, %struct.hinic_hw_wqe** %10, align 8
  %46 = load %struct.hinic_hw_wqe*, %struct.hinic_hw_wqe** %10, align 8
  %47 = getelementptr inbounds %struct.hinic_hw_wqe, %struct.hinic_hw_wqe* %46, i32 0, i32 0
  ret %struct.hinic_rq_wqe* %47
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @RQ_MASKED_IDX(%struct.hinic_rq*, i32) #1

declare dso_local %struct.hinic_hw_wqe* @hinic_read_wqe_direct(%struct.hinic_wq*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
