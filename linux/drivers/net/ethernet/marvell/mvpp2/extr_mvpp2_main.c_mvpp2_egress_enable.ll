; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_egress_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_egress_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, i32, %struct.mvpp2_tx_queue** }
%struct.mvpp2_tx_queue = type { i64 }

@MVPP2_TXP_SCHED_PORT_INDEX_REG = common dso_local global i32 0, align 4
@MVPP2_TXP_SCHED_Q_CMD_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*)* @mvpp2_egress_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_egress_enable(%struct.mvpp2_port* %0) #0 {
  %2 = alloca %struct.mvpp2_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mvpp2_tx_queue*, align 8
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %2, align 8
  %7 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %8 = call i32 @mvpp2_egress_port(%struct.mvpp2_port* %7)
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %33, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %12 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %9
  %16 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %17 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %16, i32 0, i32 2
  %18 = load %struct.mvpp2_tx_queue**, %struct.mvpp2_tx_queue*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %18, i64 %20
  %22 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %21, align 8
  store %struct.mvpp2_tx_queue* %22, %struct.mvpp2_tx_queue** %6, align 8
  %23 = load %struct.mvpp2_tx_queue*, %struct.mvpp2_tx_queue** %6, align 8
  %24 = getelementptr inbounds %struct.mvpp2_tx_queue, %struct.mvpp2_tx_queue* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %15
  %28 = load i32, i32* %4, align 4
  %29 = shl i32 1, %28
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %27, %15
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %9

36:                                               ; preds = %9
  %37 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %38 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MVPP2_TXP_SCHED_PORT_INDEX_REG, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @mvpp2_write(i32 %39, i32 %40, i32 %41)
  %43 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %44 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MVPP2_TXP_SCHED_Q_CMD_REG, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @mvpp2_write(i32 %45, i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @mvpp2_egress_port(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
