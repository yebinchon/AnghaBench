; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_qp.c_hinic_rq_read_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_qp.c_hinic_rq_read_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_rq_wqe = type { i32 }
%struct.hinic_rq = type { %struct.sk_buff**, %struct.hinic_rq_cqe**, i32 }
%struct.hinic_rq_cqe = type { i32 }
%struct.sk_buff = type { i32 }
%struct.hinic_hw_wqe = type { %struct.hinic_rq_wqe }

@RXDONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hinic_rq_wqe* @hinic_rq_read_wqe(%struct.hinic_rq* %0, i32 %1, %struct.sk_buff** %2, i64* %3) #0 {
  %5 = alloca %struct.hinic_rq_wqe*, align 8
  %6 = alloca %struct.hinic_rq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.hinic_hw_wqe*, align 8
  %11 = alloca %struct.hinic_rq_cqe*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hinic_rq* %0, %struct.hinic_rq** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sk_buff** %2, %struct.sk_buff*** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.hinic_rq*, %struct.hinic_rq** %6, align 8
  %15 = getelementptr inbounds %struct.hinic_rq, %struct.hinic_rq* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i64*, i64** %9, align 8
  %19 = call %struct.hinic_hw_wqe* @hinic_read_wqe(i32 %16, i32 %17, i64* %18)
  store %struct.hinic_hw_wqe* %19, %struct.hinic_hw_wqe** %10, align 8
  %20 = load %struct.hinic_hw_wqe*, %struct.hinic_hw_wqe** %10, align 8
  %21 = call i64 @IS_ERR(%struct.hinic_hw_wqe* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store %struct.hinic_rq_wqe* null, %struct.hinic_rq_wqe** %5, align 8
  br label %53

24:                                               ; preds = %4
  %25 = load %struct.hinic_rq*, %struct.hinic_rq** %6, align 8
  %26 = getelementptr inbounds %struct.hinic_rq, %struct.hinic_rq* %25, i32 0, i32 1
  %27 = load %struct.hinic_rq_cqe**, %struct.hinic_rq_cqe*** %26, align 8
  %28 = load i64*, i64** %9, align 8
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.hinic_rq_cqe*, %struct.hinic_rq_cqe** %27, i64 %29
  %31 = load %struct.hinic_rq_cqe*, %struct.hinic_rq_cqe** %30, align 8
  store %struct.hinic_rq_cqe* %31, %struct.hinic_rq_cqe** %11, align 8
  %32 = load %struct.hinic_rq_cqe*, %struct.hinic_rq_cqe** %11, align 8
  %33 = getelementptr inbounds %struct.hinic_rq_cqe, %struct.hinic_rq_cqe* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @be32_to_cpu(i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @RXDONE, align 4
  %38 = call i32 @HINIC_RQ_CQE_STATUS_GET(i32 %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %24
  store %struct.hinic_rq_wqe* null, %struct.hinic_rq_wqe** %5, align 8
  br label %53

42:                                               ; preds = %24
  %43 = load %struct.hinic_rq*, %struct.hinic_rq** %6, align 8
  %44 = getelementptr inbounds %struct.hinic_rq, %struct.hinic_rq* %43, i32 0, i32 0
  %45 = load %struct.sk_buff**, %struct.sk_buff*** %44, align 8
  %46 = load i64*, i64** %9, align 8
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %45, i64 %47
  %49 = load %struct.sk_buff*, %struct.sk_buff** %48, align 8
  %50 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  store %struct.sk_buff* %49, %struct.sk_buff** %50, align 8
  %51 = load %struct.hinic_hw_wqe*, %struct.hinic_hw_wqe** %10, align 8
  %52 = getelementptr inbounds %struct.hinic_hw_wqe, %struct.hinic_hw_wqe* %51, i32 0, i32 0
  store %struct.hinic_rq_wqe* %52, %struct.hinic_rq_wqe** %5, align 8
  br label %53

53:                                               ; preds = %42, %41, %23
  %54 = load %struct.hinic_rq_wqe*, %struct.hinic_rq_wqe** %5, align 8
  ret %struct.hinic_rq_wqe* %54
}

declare dso_local %struct.hinic_hw_wqe* @hinic_read_wqe(i32, i32, i64*) #1

declare dso_local i64 @IS_ERR(%struct.hinic_hw_wqe*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @HINIC_RQ_CQE_STATUS_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
