; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_card_get_next_tx_descr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_card_get_next_tx_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gelic_descr = type { i64 }
%struct.gelic_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.gelic_descr* }

@GELIC_DESCR_DMA_NOT_IN_USE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gelic_descr* (%struct.gelic_card*)* @gelic_card_get_next_tx_descr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gelic_descr* @gelic_card_get_next_tx_descr(%struct.gelic_card* %0) #0 {
  %2 = alloca %struct.gelic_descr*, align 8
  %3 = alloca %struct.gelic_card*, align 8
  store %struct.gelic_card* %0, %struct.gelic_card** %3, align 8
  %4 = load %struct.gelic_card*, %struct.gelic_card** %3, align 8
  %5 = getelementptr inbounds %struct.gelic_card, %struct.gelic_card* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load %struct.gelic_descr*, %struct.gelic_descr** %6, align 8
  %8 = icmp ne %struct.gelic_descr* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.gelic_descr* null, %struct.gelic_descr** %2, align 8
  br label %36

10:                                               ; preds = %1
  %11 = load %struct.gelic_card*, %struct.gelic_card** %3, align 8
  %12 = getelementptr inbounds %struct.gelic_card, %struct.gelic_card* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.gelic_card*, %struct.gelic_card** %3, align 8
  %16 = getelementptr inbounds %struct.gelic_card, %struct.gelic_card* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.gelic_descr*, %struct.gelic_descr** %17, align 8
  %19 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %14, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %10
  %23 = load %struct.gelic_card*, %struct.gelic_card** %3, align 8
  %24 = getelementptr inbounds %struct.gelic_card, %struct.gelic_card* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.gelic_descr*, %struct.gelic_descr** %25, align 8
  %27 = call i64 @gelic_descr_get_status(%struct.gelic_descr* %26)
  %28 = load i64, i64* @GELIC_DESCR_DMA_NOT_IN_USE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.gelic_card*, %struct.gelic_card** %3, align 8
  %32 = getelementptr inbounds %struct.gelic_card, %struct.gelic_card* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load %struct.gelic_descr*, %struct.gelic_descr** %33, align 8
  store %struct.gelic_descr* %34, %struct.gelic_descr** %2, align 8
  br label %36

35:                                               ; preds = %22, %10
  store %struct.gelic_descr* null, %struct.gelic_descr** %2, align 8
  br label %36

36:                                               ; preds = %35, %30, %9
  %37 = load %struct.gelic_descr*, %struct.gelic_descr** %2, align 8
  ret %struct.gelic_descr* %37
}

declare dso_local i64 @gelic_descr_get_status(%struct.gelic_descr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
