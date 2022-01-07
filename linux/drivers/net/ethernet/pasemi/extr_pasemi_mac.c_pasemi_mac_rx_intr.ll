; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pasemi/extr_pasemi_mac.c_pasemi_mac_rx_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pasemi/extr_pasemi_mac.c_pasemi_mac_rx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasemi_mac_rxring = type { %struct.pasemi_dmachan, %struct.pasemi_mac* }
%struct.pasemi_dmachan = type { i32*, i32 }
%struct.pasemi_mac = type { i32 }

@PAS_STATUS_CAUSE_M = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@PAS_STATUS_SOFT = common dso_local global i32 0, align 4
@PAS_IOB_DMA_RXCH_RESET_SINTC = common dso_local global i32 0, align 4
@PAS_STATUS_ERROR = common dso_local global i32 0, align 4
@PAS_IOB_DMA_RXCH_RESET_DINTC = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pasemi_mac_rx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pasemi_mac_rx_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pasemi_mac_rxring*, align 8
  %7 = alloca %struct.pasemi_mac*, align 8
  %8 = alloca %struct.pasemi_dmachan*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.pasemi_mac_rxring*
  store %struct.pasemi_mac_rxring* %11, %struct.pasemi_mac_rxring** %6, align 8
  %12 = load %struct.pasemi_mac_rxring*, %struct.pasemi_mac_rxring** %6, align 8
  %13 = getelementptr inbounds %struct.pasemi_mac_rxring, %struct.pasemi_mac_rxring* %12, i32 0, i32 1
  %14 = load %struct.pasemi_mac*, %struct.pasemi_mac** %13, align 8
  store %struct.pasemi_mac* %14, %struct.pasemi_mac** %7, align 8
  %15 = load %struct.pasemi_mac_rxring*, %struct.pasemi_mac_rxring** %6, align 8
  %16 = getelementptr inbounds %struct.pasemi_mac_rxring, %struct.pasemi_mac_rxring* %15, i32 0, i32 0
  store %struct.pasemi_dmachan* %16, %struct.pasemi_dmachan** %8, align 8
  %17 = load %struct.pasemi_dmachan*, %struct.pasemi_dmachan** %8, align 8
  %18 = getelementptr inbounds %struct.pasemi_dmachan, %struct.pasemi_dmachan* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PAS_STATUS_CAUSE_M, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %61

26:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  %27 = load %struct.pasemi_dmachan*, %struct.pasemi_dmachan** %8, align 8
  %28 = getelementptr inbounds %struct.pasemi_dmachan, %struct.pasemi_dmachan* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PAS_STATUS_SOFT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i32, i32* @PAS_IOB_DMA_RXCH_RESET_SINTC, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %34, %26
  %39 = load %struct.pasemi_dmachan*, %struct.pasemi_dmachan** %8, align 8
  %40 = getelementptr inbounds %struct.pasemi_dmachan, %struct.pasemi_dmachan* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @PAS_STATUS_ERROR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* @PAS_IOB_DMA_RXCH_RESET_DINTC, align 4
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %46, %38
  %51 = load %struct.pasemi_mac*, %struct.pasemi_mac** %7, align 8
  %52 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %51, i32 0, i32 0
  %53 = call i32 @napi_schedule(i32* %52)
  %54 = load %struct.pasemi_dmachan*, %struct.pasemi_dmachan** %8, align 8
  %55 = getelementptr inbounds %struct.pasemi_dmachan, %struct.pasemi_dmachan* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @PAS_IOB_DMA_RXCH_RESET(i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @write_iob_reg(i32 %57, i32 %58)
  %60 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %50, %24
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @write_iob_reg(i32, i32) #1

declare dso_local i32 @PAS_IOB_DMA_RXCH_RESET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
