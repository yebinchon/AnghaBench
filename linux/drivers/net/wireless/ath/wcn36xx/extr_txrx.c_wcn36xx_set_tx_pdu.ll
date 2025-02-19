; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_txrx.c_wcn36xx_set_tx_pdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_txrx.c_wcn36xx_set_tx_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx_tx_bd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i8*, i8*, i8* }

@WCN36XX_TXBD_SSN_FILL_DPU_QOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wcn36xx_tx_bd*, i8*, i8*, i32)* @wcn36xx_set_tx_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcn36xx_set_tx_pdu(%struct.wcn36xx_tx_bd* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.wcn36xx_tx_bd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.wcn36xx_tx_bd* %0, %struct.wcn36xx_tx_bd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %5, align 8
  %11 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 4
  store i8* %9, i8** %12, align 8
  %13 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %5, align 8
  %14 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 40, i32* %15, align 8
  %16 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %5, align 8
  %17 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %5, align 8
  %21 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr i8, i8* %19, i64 %24
  %26 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %5, align 8
  %27 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 5
  store i8* %25, i8** %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %5, align 8
  %31 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  store i8* %29, i8** %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %5, align 8
  %35 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 8
  %37 = load i32, i32* @WCN36XX_TXBD_SSN_FILL_DPU_QOS, align 4
  %38 = load %struct.wcn36xx_tx_bd*, %struct.wcn36xx_tx_bd** %5, align 8
  %39 = getelementptr inbounds %struct.wcn36xx_tx_bd, %struct.wcn36xx_tx_bd* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
