; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_fp_cqe_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_fp_cqe_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i64, i32* }
%struct.eth_slow_path_rx_cqe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i64, %struct.eth_slow_path_rx_cqe*)* @qed_fp_cqe_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_fp_cqe_completion(%struct.qed_dev* %0, i64 %1, %struct.eth_slow_path_rx_cqe* %2) #0 {
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.eth_slow_path_rx_cqe*, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.eth_slow_path_rx_cqe* %2, %struct.eth_slow_path_rx_cqe** %6, align 8
  %7 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %8 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %12 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = urem i64 %10, %13
  %15 = getelementptr inbounds i32, i32* %9, i64 %14
  %16 = load %struct.eth_slow_path_rx_cqe*, %struct.eth_slow_path_rx_cqe** %6, align 8
  %17 = call i32 @qed_eth_cqe_completion(i32* %15, %struct.eth_slow_path_rx_cqe* %16)
  ret i32 %17
}

declare dso_local i32 @qed_eth_cqe_completion(i32*, %struct.eth_slow_path_rx_cqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
