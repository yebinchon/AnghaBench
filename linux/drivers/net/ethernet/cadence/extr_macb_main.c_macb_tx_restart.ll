; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_tx_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_tx_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb_queue = type { i32, i32, %struct.macb* }
%struct.macb = type { i32 }

@MACB_CAPS_ISR_CLEAR_ON_WRITE = common dso_local global i32 0, align 4
@ISR = common dso_local global i32 0, align 4
@TXUBR = common dso_local global i32 0, align 4
@NCR = common dso_local global i32 0, align 4
@TSTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macb_queue*)* @macb_tx_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macb_tx_restart(%struct.macb_queue* %0) #0 {
  %2 = alloca %struct.macb_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.macb*, align 8
  store %struct.macb_queue* %0, %struct.macb_queue** %2, align 8
  %6 = load %struct.macb_queue*, %struct.macb_queue** %2, align 8
  %7 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.macb_queue*, %struct.macb_queue** %2, align 8
  %10 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.macb_queue*, %struct.macb_queue** %2, align 8
  %13 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %12, i32 0, i32 2
  %14 = load %struct.macb*, %struct.macb** %13, align 8
  store %struct.macb* %14, %struct.macb** %5, align 8
  %15 = load %struct.macb*, %struct.macb** %5, align 8
  %16 = getelementptr inbounds %struct.macb, %struct.macb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MACB_CAPS_ISR_CLEAR_ON_WRITE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.macb_queue*, %struct.macb_queue** %2, align 8
  %23 = load i32, i32* @ISR, align 4
  %24 = load i32, i32* @TXUBR, align 4
  %25 = call i32 @MACB_BIT(i32 %24)
  %26 = call i32 @queue_writel(%struct.macb_queue* %22, i32 %23, i32 %25)
  br label %27

27:                                               ; preds = %21, %1
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %42

32:                                               ; preds = %27
  %33 = load %struct.macb*, %struct.macb** %5, align 8
  %34 = load i32, i32* @NCR, align 4
  %35 = load %struct.macb*, %struct.macb** %5, align 8
  %36 = load i32, i32* @NCR, align 4
  %37 = call i32 @macb_readl(%struct.macb* %35, i32 %36)
  %38 = load i32, i32* @TSTART, align 4
  %39 = call i32 @MACB_BIT(i32 %38)
  %40 = or i32 %37, %39
  %41 = call i32 @macb_writel(%struct.macb* %33, i32 %34, i32 %40)
  br label %42

42:                                               ; preds = %32, %31
  ret void
}

declare dso_local i32 @queue_writel(%struct.macb_queue*, i32, i32) #1

declare dso_local i32 @MACB_BIT(i32) #1

declare dso_local i32 @macb_writel(%struct.macb*, i32, i32) #1

declare dso_local i32 @macb_readl(%struct.macb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
