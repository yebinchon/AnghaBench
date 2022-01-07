; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pasemi/extr_pasemi_mac.c_pasemi_mac_pause_rxchan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pasemi/extr_pasemi_mac.c_pasemi_mac_pause_rxchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasemi_mac = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PAS_DMA_RXCHAN_CCMDSTA_ST = common dso_local global i32 0, align 4
@MAX_RETRIES = common dso_local global i32 0, align 4
@PAS_DMA_RXCHAN_CCMDSTA_ACT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to stop rx channel, ccmdsta 08%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pasemi_mac*)* @pasemi_mac_pause_rxchan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pasemi_mac_pause_rxchan(%struct.pasemi_mac* %0) #0 {
  %2 = alloca %struct.pasemi_mac*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pasemi_mac* %0, %struct.pasemi_mac** %2, align 8
  %6 = load %struct.pasemi_mac*, %struct.pasemi_mac** %2, align 8
  %7 = call %struct.TYPE_6__* @rx_ring(%struct.pasemi_mac* %6)
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @PAS_DMA_RXCHAN_CCMDSTA(i32 %11)
  %13 = load i32, i32* @PAS_DMA_RXCHAN_CCMDSTA_ST, align 4
  %14 = call i32 @write_dma_reg(i32 %12, i32 %13)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %30, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MAX_RETRIES, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @PAS_DMA_RXCHAN_CCMDSTA(i32 %20)
  %22 = call i32 @read_dma_reg(i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @PAS_DMA_RXCHAN_CCMDSTA_ACT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %33

28:                                               ; preds = %19
  %29 = call i32 (...) @cond_resched()
  br label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %4, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %15

33:                                               ; preds = %27, %15
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @PAS_DMA_RXCHAN_CCMDSTA_ACT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.pasemi_mac*, %struct.pasemi_mac** %2, align 8
  %40 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %38, %33
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @PAS_DMA_RXCHAN_CCMDSTA(i32 %46)
  %48 = call i32 @write_dma_reg(i32 %47, i32 0)
  ret void
}

declare dso_local %struct.TYPE_6__* @rx_ring(%struct.pasemi_mac*) #1

declare dso_local i32 @write_dma_reg(i32, i32) #1

declare dso_local i32 @PAS_DMA_RXCHAN_CCMDSTA(i32) #1

declare dso_local i32 @read_dma_reg(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
