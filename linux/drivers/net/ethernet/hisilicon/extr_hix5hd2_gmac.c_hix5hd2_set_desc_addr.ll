; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_set_desc_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_set_desc_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hix5hd2_priv = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hix5hd2_priv*)* @hix5hd2_set_desc_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hix5hd2_set_desc_addr(%struct.hix5hd2_priv* %0) #0 {
  %2 = alloca %struct.hix5hd2_priv*, align 8
  store %struct.hix5hd2_priv* %0, %struct.hix5hd2_priv** %2, align 8
  %3 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %4 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %5 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @hix5hd2_set_rx_fq(%struct.hix5hd2_priv* %3, i32 %7)
  %9 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %10 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %11 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @hix5hd2_set_rx_bq(%struct.hix5hd2_priv* %9, i32 %13)
  %15 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %16 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %17 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @hix5hd2_set_tx_rq(%struct.hix5hd2_priv* %15, i32 %19)
  %21 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %22 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %2, align 8
  %23 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @hix5hd2_set_tx_bq(%struct.hix5hd2_priv* %21, i32 %25)
  ret void
}

declare dso_local i32 @hix5hd2_set_rx_fq(%struct.hix5hd2_priv*, i32) #1

declare dso_local i32 @hix5hd2_set_rx_bq(%struct.hix5hd2_priv*, i32) #1

declare dso_local i32 @hix5hd2_set_tx_rq(%struct.hix5hd2_priv*, i32) #1

declare dso_local i32 @hix5hd2_set_tx_bq(%struct.hix5hd2_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
