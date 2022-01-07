; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.h_il_need_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.h_il_need_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.il_rx_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@SEQ_RX_FRAME = common dso_local global i32 0, align 4
@N_STATS = common dso_local global i64 0, align 8
@C_TX = common dso_local global i64 0, align 8
@N_RX_PHY = common dso_local global i64 0, align 8
@N_RX = common dso_local global i64 0, align 8
@N_RX_MPDU = common dso_local global i64 0, align 8
@N_COMPRESSED_BA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.il_rx_pkt*)* @il_need_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il_need_reclaim(%struct.il_priv* %0, %struct.il_rx_pkt* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_rx_pkt*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_rx_pkt* %1, %struct.il_rx_pkt** %4, align 8
  %5 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %4, align 8
  %6 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @SEQ_RX_FRAME, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %54, label %12

12:                                               ; preds = %2
  %13 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %4, align 8
  %14 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @N_STATS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %12
  %20 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %4, align 8
  %21 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @C_TX, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %19
  %27 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %4, align 8
  %28 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @N_RX_PHY, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %26
  %34 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %4, align 8
  %35 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @N_RX, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %33
  %41 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %4, align 8
  %42 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @N_RX_MPDU, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %4, align 8
  %49 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @N_COMPRESSED_BA, align 8
  %53 = icmp ne i64 %51, %52
  br label %54

54:                                               ; preds = %47, %40, %33, %26, %19, %12, %2
  %55 = phi i1 [ false, %40 ], [ false, %33 ], [ false, %26 ], [ false, %19 ], [ false, %12 ], [ false, %2 ], [ %53, %47 ]
  %56 = zext i1 %55 to i32
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
