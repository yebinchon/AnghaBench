; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_rx_fifo_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_rx_fifo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }

@MVPP2_MAX_PORTS = common dso_local global i32 0, align 4
@MVPP2_RX_FIFO_PORT_DATA_SIZE_4KB = common dso_local global i32 0, align 4
@MVPP2_RX_FIFO_PORT_ATTR_SIZE_4KB = common dso_local global i32 0, align 4
@MVPP2_RX_MIN_PKT_SIZE_REG = common dso_local global i32 0, align 4
@MVPP2_RX_FIFO_PORT_MIN_PKT = common dso_local global i32 0, align 4
@MVPP2_RX_FIFO_INIT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2*)* @mvpp2_rx_fifo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_rx_fifo_init(%struct.mvpp2* %0) #0 {
  %2 = alloca %struct.mvpp2*, align 8
  %3 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MVPP2_MAX_PORTS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @MVPP2_RX_DATA_FIFO_SIZE_REG(i32 %10)
  %12 = load i32, i32* @MVPP2_RX_FIFO_PORT_DATA_SIZE_4KB, align 4
  %13 = call i32 @mvpp2_write(%struct.mvpp2* %9, i32 %11, i32 %12)
  %14 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @MVPP2_RX_ATTR_FIFO_SIZE_REG(i32 %15)
  %17 = load i32, i32* @MVPP2_RX_FIFO_PORT_ATTR_SIZE_4KB, align 4
  %18 = call i32 @mvpp2_write(%struct.mvpp2* %14, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %8
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %4

22:                                               ; preds = %4
  %23 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %24 = load i32, i32* @MVPP2_RX_MIN_PKT_SIZE_REG, align 4
  %25 = load i32, i32* @MVPP2_RX_FIFO_PORT_MIN_PKT, align 4
  %26 = call i32 @mvpp2_write(%struct.mvpp2* %23, i32 %24, i32 %25)
  %27 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %28 = load i32, i32* @MVPP2_RX_FIFO_INIT_REG, align 4
  %29 = call i32 @mvpp2_write(%struct.mvpp2* %27, i32 %28, i32 1)
  ret void
}

declare dso_local i32 @mvpp2_write(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @MVPP2_RX_DATA_FIFO_SIZE_REG(i32) #1

declare dso_local i32 @MVPP2_RX_ATTR_FIFO_SIZE_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
