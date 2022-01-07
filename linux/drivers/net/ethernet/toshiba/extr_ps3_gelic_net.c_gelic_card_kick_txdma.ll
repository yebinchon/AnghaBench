; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_card_kick_txdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_card_kick_txdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gelic_card = type { i32 }
%struct.gelic_descr = type { i32 }

@GELIC_DESCR_DMA_CARDOWNED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"lv1_net_start_txdma failed,status=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gelic_card*, %struct.gelic_descr*)* @gelic_card_kick_txdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gelic_card_kick_txdma(%struct.gelic_card* %0, %struct.gelic_descr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gelic_card*, align 8
  %5 = alloca %struct.gelic_descr*, align 8
  %6 = alloca i32, align 4
  store %struct.gelic_card* %0, %struct.gelic_card** %4, align 8
  store %struct.gelic_descr* %1, %struct.gelic_descr** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.gelic_card*, %struct.gelic_card** %4, align 8
  %8 = getelementptr inbounds %struct.gelic_card, %struct.gelic_card* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

12:                                               ; preds = %2
  %13 = load %struct.gelic_descr*, %struct.gelic_descr** %5, align 8
  %14 = call i64 @gelic_descr_get_status(%struct.gelic_descr* %13)
  %15 = load i64, i64* @GELIC_DESCR_DMA_CARDOWNED, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %12
  %18 = load %struct.gelic_card*, %struct.gelic_card** %4, align 8
  %19 = getelementptr inbounds %struct.gelic_card, %struct.gelic_card* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.gelic_card*, %struct.gelic_card** %4, align 8
  %21 = call i32 @bus_id(%struct.gelic_card* %20)
  %22 = load %struct.gelic_card*, %struct.gelic_card** %4, align 8
  %23 = call i32 @dev_id(%struct.gelic_card* %22)
  %24 = load %struct.gelic_descr*, %struct.gelic_descr** %5, align 8
  %25 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @lv1_net_start_tx_dma(i32 %21, i32 %23, i32 %26, i32 0)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %17
  %31 = load %struct.gelic_card*, %struct.gelic_card** %4, align 8
  %32 = getelementptr inbounds %struct.gelic_card, %struct.gelic_card* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = load %struct.gelic_card*, %struct.gelic_card** %4, align 8
  %34 = call i32 @ctodev(%struct.gelic_card* %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @dev_info(i32 %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %30, %17
  br label %38

38:                                               ; preds = %37, %12
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %11
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @gelic_descr_get_status(%struct.gelic_descr*) #1

declare dso_local i32 @lv1_net_start_tx_dma(i32, i32, i32, i32) #1

declare dso_local i32 @bus_id(%struct.gelic_card*) #1

declare dso_local i32 @dev_id(%struct.gelic_card*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @ctodev(%struct.gelic_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
