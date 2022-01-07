; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_qp.c_hinic_rq_write_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_qp.c_hinic_rq_write_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_rq = type { i32, %struct.sk_buff** }
%struct.hinic_rq_wqe = type { i32 }
%struct.sk_buff = type { i32 }
%struct.hinic_hw_wqe = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hinic_rq_write_wqe(%struct.hinic_rq* %0, i64 %1, %struct.hinic_rq_wqe* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.hinic_rq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hinic_rq_wqe*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.hinic_hw_wqe*, align 8
  store %struct.hinic_rq* %0, %struct.hinic_rq** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.hinic_rq_wqe* %2, %struct.hinic_rq_wqe** %7, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %10 = load %struct.hinic_rq_wqe*, %struct.hinic_rq_wqe** %7, align 8
  %11 = bitcast %struct.hinic_rq_wqe* %10 to %struct.hinic_hw_wqe*
  store %struct.hinic_hw_wqe* %11, %struct.hinic_hw_wqe** %9, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %13 = load %struct.hinic_rq*, %struct.hinic_rq** %5, align 8
  %14 = getelementptr inbounds %struct.hinic_rq, %struct.hinic_rq* %13, i32 0, i32 1
  %15 = load %struct.sk_buff**, %struct.sk_buff*** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %15, i64 %16
  store %struct.sk_buff* %12, %struct.sk_buff** %17, align 8
  %18 = load %struct.hinic_rq_wqe*, %struct.hinic_rq_wqe** %7, align 8
  %19 = call i32 @hinic_cpu_to_be32(%struct.hinic_rq_wqe* %18, i32 4)
  %20 = load %struct.hinic_rq*, %struct.hinic_rq** %5, align 8
  %21 = getelementptr inbounds %struct.hinic_rq, %struct.hinic_rq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.hinic_hw_wqe*, %struct.hinic_hw_wqe** %9, align 8
  %24 = call i32 @hinic_write_wqe(i32 %22, %struct.hinic_hw_wqe* %23, i32 4)
  ret void
}

declare dso_local i32 @hinic_cpu_to_be32(%struct.hinic_rq_wqe*, i32) #1

declare dso_local i32 @hinic_write_wqe(i32, %struct.hinic_hw_wqe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
