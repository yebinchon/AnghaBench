; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pasemi/extr_pasemi_mac.c_pasemi_mac_pause_rxint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pasemi/extr_pasemi_mac.c_pasemi_mac_pause_rxint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasemi_mac = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAS_DMA_RXINT_RCMDSTA_ST = common dso_local global i32 0, align 4
@MAX_RETRIES = common dso_local global i32 0, align 4
@PAS_DMA_RXINT_RCMDSTA_ACT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to stop rx interface, rcmdsta %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pasemi_mac*)* @pasemi_mac_pause_rxint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pasemi_mac_pause_rxint(%struct.pasemi_mac* %0) #0 {
  %2 = alloca %struct.pasemi_mac*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pasemi_mac* %0, %struct.pasemi_mac** %2, align 8
  %5 = load %struct.pasemi_mac*, %struct.pasemi_mac** %2, align 8
  %6 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @PAS_DMA_RXINT_RCMDSTA(i32 %7)
  %9 = load i32, i32* @PAS_DMA_RXINT_RCMDSTA_ST, align 4
  %10 = call i32 @write_dma_reg(i32 %8, i32 %9)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %28, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MAX_RETRIES, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load %struct.pasemi_mac*, %struct.pasemi_mac** %2, align 8
  %17 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @PAS_DMA_RXINT_RCMDSTA(i32 %18)
  %20 = call i32 @read_dma_reg(i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @PAS_DMA_RXINT_RCMDSTA_ACT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  br label %31

26:                                               ; preds = %15
  %27 = call i32 (...) @cond_resched()
  br label %28

28:                                               ; preds = %26
  %29 = load i32, i32* %4, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %11

31:                                               ; preds = %25, %11
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @PAS_DMA_RXINT_RCMDSTA_ACT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.pasemi_mac*, %struct.pasemi_mac** %2, align 8
  %38 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %36, %31
  %44 = load %struct.pasemi_mac*, %struct.pasemi_mac** %2, align 8
  %45 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @PAS_DMA_RXINT_RCMDSTA(i32 %46)
  %48 = call i32 @write_dma_reg(i32 %47, i32 0)
  ret void
}

declare dso_local i32 @write_dma_reg(i32, i32) #1

declare dso_local i32 @PAS_DMA_RXINT_RCMDSTA(i32) #1

declare dso_local i32 @read_dma_reg(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
