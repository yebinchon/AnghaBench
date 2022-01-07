; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_egress_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_egress_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, i32 }

@MVPP2_TXP_SCHED_PORT_INDEX_REG = common dso_local global i32 0, align 4
@MVPP2_TXP_SCHED_Q_CMD_REG = common dso_local global i32 0, align 4
@MVPP2_TXP_SCHED_ENQ_MASK = common dso_local global i32 0, align 4
@MVPP2_TXP_SCHED_DISQ_OFFSET = common dso_local global i32 0, align 4
@MVPP2_TX_DISABLE_TIMEOUT_MSEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Tx stop timed out, status=0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*)* @mvpp2_egress_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_egress_disable(%struct.mvpp2_port* %0) #0 {
  %2 = alloca %struct.mvpp2_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %2, align 8
  %6 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %7 = call i32 @mvpp2_egress_port(%struct.mvpp2_port* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %9 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MVPP2_TXP_SCHED_PORT_INDEX_REG, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @mvpp2_write(i32 %10, i32 %11, i32 %12)
  %14 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %15 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MVPP2_TXP_SCHED_Q_CMD_REG, align 4
  %18 = call i32 @mvpp2_read(i32 %16, i32 %17)
  %19 = load i32, i32* @MVPP2_TXP_SCHED_ENQ_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %25 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MVPP2_TXP_SCHED_Q_CMD_REG, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @MVPP2_TXP_SCHED_DISQ_OFFSET, align 4
  %30 = shl i32 %28, %29
  %31 = call i32 @mvpp2_write(i32 %26, i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %23, %1
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %52, %32
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @MVPP2_TX_DISABLE_TIMEOUT_MSEC, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %39 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @netdev_warn(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %57

43:                                               ; preds = %33
  %44 = call i32 @mdelay(i32 1)
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  %47 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %48 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MVPP2_TXP_SCHED_Q_CMD_REG, align 4
  %51 = call i32 @mvpp2_read(i32 %49, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @MVPP2_TXP_SCHED_ENQ_MASK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %33, label %57

57:                                               ; preds = %52, %37
  ret void
}

declare dso_local i32 @mvpp2_egress_port(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_write(i32, i32, i32) #1

declare dso_local i32 @mvpp2_read(i32, i32) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
