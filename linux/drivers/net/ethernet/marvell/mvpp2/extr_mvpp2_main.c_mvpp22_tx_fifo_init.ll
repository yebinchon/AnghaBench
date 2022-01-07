; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp22_tx_fifo_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp22_tx_fifo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }

@MVPP2_MAX_PORTS = common dso_local global i32 0, align 4
@MVPP22_TX_FIFO_DATA_SIZE_10KB = common dso_local global i32 0, align 4
@MVPP2_TX_FIFO_THRESHOLD_10KB = common dso_local global i32 0, align 4
@MVPP22_TX_FIFO_DATA_SIZE_3KB = common dso_local global i32 0, align 4
@MVPP2_TX_FIFO_THRESHOLD_3KB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2*)* @mvpp22_tx_fifo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp22_tx_fifo_init(%struct.mvpp2* %0) #0 {
  %2 = alloca %struct.mvpp2*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %30, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @MVPP2_MAX_PORTS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @MVPP22_TX_FIFO_DATA_SIZE_10KB, align 4
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @MVPP2_TX_FIFO_THRESHOLD_10KB, align 4
  store i32 %15, i32* %5, align 4
  br label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @MVPP22_TX_FIFO_DATA_SIZE_3KB, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @MVPP2_TX_FIFO_THRESHOLD_3KB, align 4
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @MVPP22_TX_FIFO_SIZE_REG(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @mvpp2_write(%struct.mvpp2* %20, i32 %22, i32 %23)
  %25 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @MVPP22_TX_FIFO_THRESH_REG(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @mvpp2_write(%struct.mvpp2* %25, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %6

33:                                               ; preds = %6
  ret void
}

declare dso_local i32 @mvpp2_write(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @MVPP22_TX_FIFO_SIZE_REG(i32) #1

declare dso_local i32 @MVPP22_TX_FIFO_THRESH_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
