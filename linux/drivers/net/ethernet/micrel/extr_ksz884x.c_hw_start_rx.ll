; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_start_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_hw_start_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i32, i64, i32, i32 }

@KS_DMA_RX_CTRL = common dso_local global i64 0, align 8
@KS884X_INT_RX_STOPPED = common dso_local global i32 0, align 4
@DMA_START = common dso_local global i32 0, align 4
@KS_DMA_RX_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*)* @hw_start_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_start_rx(%struct.ksz_hw* %0) #0 {
  %2 = alloca %struct.ksz_hw*, align 8
  store %struct.ksz_hw* %0, %struct.ksz_hw** %2, align 8
  %3 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %4 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @KS_DMA_RX_CTRL, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 %5, i64 %10)
  %12 = load i32, i32* @KS884X_INT_RX_STOPPED, align 4
  %13 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %14 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load i32, i32* @DMA_START, align 4
  %18 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %19 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @KS_DMA_RX_START, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  %24 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %25 = load i32, i32* @KS884X_INT_RX_STOPPED, align 4
  %26 = call i32 @hw_ack_intr(%struct.ksz_hw* %24, i32 %25)
  %27 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %28 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %32 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 0, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %37 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %36, i32 0, i32 0
  store i32 2, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %1
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @hw_ack_intr(%struct.ksz_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
