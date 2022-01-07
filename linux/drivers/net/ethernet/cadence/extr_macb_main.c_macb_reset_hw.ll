; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_reset_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_reset_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { i32, i32, %struct.macb_queue* }
%struct.macb_queue = type { i32 }

@NCR = common dso_local global i32 0, align 4
@RE = common dso_local global i32 0, align 4
@TE = common dso_local global i32 0, align 4
@CLRSTAT = common dso_local global i32 0, align 4
@TSR = common dso_local global i32 0, align 4
@RSR = common dso_local global i32 0, align 4
@IDR = common dso_local global i32 0, align 4
@ISR = common dso_local global i32 0, align 4
@MACB_CAPS_ISR_CLEAR_ON_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macb*)* @macb_reset_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macb_reset_hw(%struct.macb* %0) #0 {
  %2 = alloca %struct.macb*, align 8
  %3 = alloca %struct.macb_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.macb* %0, %struct.macb** %2, align 8
  %6 = load %struct.macb*, %struct.macb** %2, align 8
  %7 = load i32, i32* @NCR, align 4
  %8 = call i32 @macb_readl(%struct.macb* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @RE, align 4
  %10 = call i32 @MACB_BIT(i32 %9)
  %11 = load i32, i32* @TE, align 4
  %12 = call i32 @MACB_BIT(i32 %11)
  %13 = or i32 %10, %12
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @CLRSTAT, align 4
  %18 = call i32 @MACB_BIT(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.macb*, %struct.macb** %2, align 8
  %22 = load i32, i32* @NCR, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @macb_writel(%struct.macb* %21, i32 %22, i32 %23)
  %25 = load %struct.macb*, %struct.macb** %2, align 8
  %26 = load i32, i32* @TSR, align 4
  %27 = call i32 @macb_writel(%struct.macb* %25, i32 %26, i32 -1)
  %28 = load %struct.macb*, %struct.macb** %2, align 8
  %29 = load i32, i32* @RSR, align 4
  %30 = call i32 @macb_writel(%struct.macb* %28, i32 %29, i32 -1)
  store i32 0, i32* %4, align 4
  %31 = load %struct.macb*, %struct.macb** %2, align 8
  %32 = getelementptr inbounds %struct.macb, %struct.macb* %31, i32 0, i32 2
  %33 = load %struct.macb_queue*, %struct.macb_queue** %32, align 8
  store %struct.macb_queue* %33, %struct.macb_queue** %3, align 8
  br label %34

34:                                               ; preds = %58, %1
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.macb*, %struct.macb** %2, align 8
  %37 = getelementptr inbounds %struct.macb, %struct.macb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %34
  %41 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %42 = load i32, i32* @IDR, align 4
  %43 = call i32 @queue_writel(%struct.macb_queue* %41, i32 %42, i32 -1)
  %44 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %45 = load i32, i32* @ISR, align 4
  %46 = call i32 @queue_readl(%struct.macb_queue* %44, i32 %45)
  %47 = load %struct.macb*, %struct.macb** %2, align 8
  %48 = getelementptr inbounds %struct.macb, %struct.macb* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MACB_CAPS_ISR_CLEAR_ON_WRITE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %40
  %54 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %55 = load i32, i32* @ISR, align 4
  %56 = call i32 @queue_writel(%struct.macb_queue* %54, i32 %55, i32 -1)
  br label %57

57:                                               ; preds = %53, %40
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %4, align 4
  %61 = load %struct.macb_queue*, %struct.macb_queue** %3, align 8
  %62 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %61, i32 1
  store %struct.macb_queue* %62, %struct.macb_queue** %3, align 8
  br label %34

63:                                               ; preds = %34
  ret void
}

declare dso_local i32 @macb_readl(%struct.macb*, i32) #1

declare dso_local i32 @MACB_BIT(i32) #1

declare dso_local i32 @macb_writel(%struct.macb*, i32, i32) #1

declare dso_local i32 @queue_writel(%struct.macb_queue*, i32, i32) #1

declare dso_local i32 @queue_readl(%struct.macb_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
