; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_enable_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_enable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_ndev_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENETC_RBIER = common dso_local global i32 0, align 4
@ENETC_RBIER_RXTIE = common dso_local global i32 0, align 4
@ENETC_TBIER = common dso_local global i32 0, align 4
@ENETC_TBIER_TXTIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enetc_ndev_priv*)* @enetc_enable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enetc_enable_interrupts(%struct.enetc_ndev_priv* %0) #0 {
  %2 = alloca %struct.enetc_ndev_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.enetc_ndev_priv* %0, %struct.enetc_ndev_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %2, align 8
  %7 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %4
  %11 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %2, align 8
  %12 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @ENETC_RBIER, align 4
  %17 = load i32, i32* @ENETC_RBIER_RXTIE, align 4
  %18 = call i32 @enetc_rxbdr_wr(i32* %14, i32 %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %10
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %4

22:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %38, %22
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %2, align 8
  %26 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %2, align 8
  %31 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @ENETC_TBIER, align 4
  %36 = load i32, i32* @ENETC_TBIER_TXTIE, align 4
  %37 = call i32 @enetc_txbdr_wr(i32* %33, i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %23

41:                                               ; preds = %23
  ret void
}

declare dso_local i32 @enetc_rxbdr_wr(i32*, i32, i32, i32) #1

declare dso_local i32 @enetc_txbdr_wr(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
