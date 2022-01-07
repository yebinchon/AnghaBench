; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_htc_connect_svc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_htc_connect_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32 }
%struct.sk_buff = type opaque
%struct.htc_service_connreq = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { void (i8*, %struct.sk_buff.0*, i32, i32)*, i32, %struct.ath9k_htc_priv* }
%struct.sk_buff.0 = type opaque

@ath9k_htc_rxep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath9k_htc_priv*, i32, void (i8*, %struct.sk_buff*, i32, i32)*, i32*)* @ath9k_htc_connect_svc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_htc_connect_svc(%struct.ath9k_htc_priv* %0, i32 %1, void (i8*, %struct.sk_buff*, i32, i32)* %2, i32* %3) #0 {
  %5 = alloca %struct.ath9k_htc_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca void (i8*, %struct.sk_buff*, i32, i32)*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.htc_service_connreq, align 8
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store void (i8*, %struct.sk_buff*, i32, i32)* %2, void (i8*, %struct.sk_buff*, i32, i32)** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = call i32 @memset(%struct.htc_service_connreq* %9, i32 0, i32 32)
  %11 = load i32, i32* %6, align 4
  %12 = getelementptr inbounds %struct.htc_service_connreq, %struct.htc_service_connreq* %9, i32 0, i32 1
  store i32 %11, i32* %12, align 8
  %13 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %14 = getelementptr inbounds %struct.htc_service_connreq, %struct.htc_service_connreq* %9, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store %struct.ath9k_htc_priv* %13, %struct.ath9k_htc_priv** %15, align 8
  %16 = load i32, i32* @ath9k_htc_rxep, align 4
  %17 = getelementptr inbounds %struct.htc_service_connreq, %struct.htc_service_connreq* %9, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load void (i8*, %struct.sk_buff*, i32, i32)*, void (i8*, %struct.sk_buff*, i32, i32)** %7, align 8
  %20 = bitcast void (i8*, %struct.sk_buff*, i32, i32)* %19 to void (i8*, %struct.sk_buff.0*, i32, i32)*
  %21 = getelementptr inbounds %struct.htc_service_connreq, %struct.htc_service_connreq* %9, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store void (i8*, %struct.sk_buff.0*, i32, i32)* %20, void (i8*, %struct.sk_buff.0*, i32, i32)** %22, align 8
  %23 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %5, align 8
  %24 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @htc_connect_service(i32 %25, %struct.htc_service_connreq* %9, i32* %26)
  ret i32 %27
}

declare dso_local i32 @memset(%struct.htc_service_connreq*, i32, i32) #1

declare dso_local i32 @htc_connect_service(i32, %struct.htc_service_connreq*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
