; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_txq_inc_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_txq_inc_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32 }
%struct.mvpp2_txq_pcpu = type { i32, i64, %struct.mvpp2_txq_pcpu_buf* }
%struct.mvpp2_txq_pcpu_buf = type { i64, i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.mvpp2_tx_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*, %struct.mvpp2_txq_pcpu*, %struct.sk_buff*, %struct.mvpp2_tx_desc*)* @mvpp2_txq_inc_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_txq_inc_put(%struct.mvpp2_port* %0, %struct.mvpp2_txq_pcpu* %1, %struct.sk_buff* %2, %struct.mvpp2_tx_desc* %3) #0 {
  %5 = alloca %struct.mvpp2_port*, align 8
  %6 = alloca %struct.mvpp2_txq_pcpu*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.mvpp2_tx_desc*, align 8
  %9 = alloca %struct.mvpp2_txq_pcpu_buf*, align 8
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %5, align 8
  store %struct.mvpp2_txq_pcpu* %1, %struct.mvpp2_txq_pcpu** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.mvpp2_tx_desc* %3, %struct.mvpp2_tx_desc** %8, align 8
  %10 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %6, align 8
  %11 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %10, i32 0, i32 2
  %12 = load %struct.mvpp2_txq_pcpu_buf*, %struct.mvpp2_txq_pcpu_buf** %11, align 8
  %13 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %6, align 8
  %14 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.mvpp2_txq_pcpu_buf, %struct.mvpp2_txq_pcpu_buf* %12, i64 %16
  store %struct.mvpp2_txq_pcpu_buf* %17, %struct.mvpp2_txq_pcpu_buf** %9, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = load %struct.mvpp2_txq_pcpu_buf*, %struct.mvpp2_txq_pcpu_buf** %9, align 8
  %20 = getelementptr inbounds %struct.mvpp2_txq_pcpu_buf, %struct.mvpp2_txq_pcpu_buf* %19, i32 0, i32 2
  store %struct.sk_buff* %18, %struct.sk_buff** %20, align 8
  %21 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %22 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %8, align 8
  %23 = call i32 @mvpp2_txdesc_size_get(%struct.mvpp2_port* %21, %struct.mvpp2_tx_desc* %22)
  %24 = load %struct.mvpp2_txq_pcpu_buf*, %struct.mvpp2_txq_pcpu_buf** %9, align 8
  %25 = getelementptr inbounds %struct.mvpp2_txq_pcpu_buf, %struct.mvpp2_txq_pcpu_buf* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %27 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %8, align 8
  %28 = call i64 @mvpp2_txdesc_dma_addr_get(%struct.mvpp2_port* %26, %struct.mvpp2_tx_desc* %27)
  %29 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %30 = load %struct.mvpp2_tx_desc*, %struct.mvpp2_tx_desc** %8, align 8
  %31 = call i64 @mvpp2_txdesc_offset_get(%struct.mvpp2_port* %29, %struct.mvpp2_tx_desc* %30)
  %32 = add nsw i64 %28, %31
  %33 = load %struct.mvpp2_txq_pcpu_buf*, %struct.mvpp2_txq_pcpu_buf** %9, align 8
  %34 = getelementptr inbounds %struct.mvpp2_txq_pcpu_buf, %struct.mvpp2_txq_pcpu_buf* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %6, align 8
  %36 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  %39 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %6, align 8
  %40 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %6, align 8
  %44 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %4
  %48 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %6, align 8
  %49 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %4
  ret void
}

declare dso_local i32 @mvpp2_txdesc_size_get(%struct.mvpp2_port*, %struct.mvpp2_tx_desc*) #1

declare dso_local i64 @mvpp2_txdesc_dma_addr_get(%struct.mvpp2_port*, %struct.mvpp2_tx_desc*) #1

declare dso_local i64 @mvpp2_txdesc_offset_get(%struct.mvpp2_port*, %struct.mvpp2_tx_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
