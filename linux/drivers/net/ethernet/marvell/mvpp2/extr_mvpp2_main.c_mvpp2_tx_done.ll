; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32 }
%struct.mvpp2_tx_queue = type { i32, i32 }
%struct.mvpp2_txq_pcpu = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2_port*, i32, i32)* @mvpp2_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_tx_done(%struct.mvpp2_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mvpp2_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mvpp2_tx_queue*, align 8
  %8 = alloca %struct.mvpp2_txq_pcpu*, align 8
  %9 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %42, %3
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %10
  %14 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.mvpp2_tx_queue* @mvpp2_get_tx_queue(%struct.mvpp2_port* %14, i32 %15)
  store %struct.mvpp2_tx_queue* %16, %struct.mvpp2_tx_queue** %7, align 8
  %17 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %7, align 8
  %18 = icmp ne %struct.mvpp2_tx_queue* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %50

20:                                               ; preds = %13
  %21 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %7, align 8
  %22 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.mvpp2_txq_pcpu* @per_cpu_ptr(i32 %23, i32 %24)
  store %struct.mvpp2_txq_pcpu* %25, %struct.mvpp2_txq_pcpu** %8, align 8
  %26 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %8, align 8
  %27 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %20
  %31 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %32 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %7, align 8
  %33 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %8, align 8
  %34 = call i32 @mvpp2_txq_done(%struct.mvpp2_port* %31, %struct.mvpp2_tx_queue* %32, %struct.mvpp2_txq_pcpu* %33)
  %35 = load %struct.mvpp2_txq_pcpu*, %struct.mvpp2_txq_pcpu** %8, align 8
  %36 = getelementptr inbounds %struct.mvpp2_txq_pcpu, %struct.mvpp2_txq_pcpu* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %30, %20
  %43 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %7, align 8
  %44 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 1, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %10

50:                                               ; preds = %19, %10
  %51 = load i32, i32* %9, align 4
  ret i32 %51
}

declare dso_local %struct.mvpp2_tx_queue* @mvpp2_get_tx_queue(%struct.mvpp2_port*, i32) #1

declare dso_local %struct.mvpp2_txq_pcpu* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @mvpp2_txq_done(%struct.mvpp2_port*, %struct.mvpp2_tx_queue*, %struct.mvpp2_txq_pcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
