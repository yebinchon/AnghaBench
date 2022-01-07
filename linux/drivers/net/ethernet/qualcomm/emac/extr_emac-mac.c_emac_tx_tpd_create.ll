; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_tx_tpd_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_tx_tpd_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { i32 }
%struct.emac_tx_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.emac_tpd = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_adapter*, %struct.emac_tx_queue*, %struct.emac_tpd*)* @emac_tx_tpd_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_tx_tpd_create(%struct.emac_adapter* %0, %struct.emac_tx_queue* %1, %struct.emac_tpd* %2) #0 {
  %4 = alloca %struct.emac_adapter*, align 8
  %5 = alloca %struct.emac_tx_queue*, align 8
  %6 = alloca %struct.emac_tpd*, align 8
  %7 = alloca i32*, align 8
  store %struct.emac_adapter* %0, %struct.emac_adapter** %4, align 8
  store %struct.emac_tx_queue* %1, %struct.emac_tx_queue** %5, align 8
  store %struct.emac_tpd* %2, %struct.emac_tpd** %6, align 8
  %8 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %5, align 8
  %9 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %5, align 8
  %13 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i64 %11, i64* %14, align 8
  %15 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %5, align 8
  %16 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %5, align 8
  %20 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32* @EMAC_TPD(%struct.emac_tx_queue* %15, i32 %18, i64 %22)
  store i32* %23, i32** %7, align 8
  %24 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %5, align 8
  %25 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %5, align 8
  %30 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %28, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %5, align 8
  %36 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %34, %3
  %39 = load %struct.emac_tpd*, %struct.emac_tpd** %6, align 8
  %40 = getelementptr inbounds %struct.emac_tpd, %struct.emac_tpd* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  %46 = load %struct.emac_tpd*, %struct.emac_tpd** %6, align 8
  %47 = getelementptr inbounds %struct.emac_tpd, %struct.emac_tpd* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  %53 = load %struct.emac_tpd*, %struct.emac_tpd** %6, align 8
  %54 = getelementptr inbounds %struct.emac_tpd, %struct.emac_tpd* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  %60 = load %struct.emac_tpd*, %struct.emac_tpd** %6, align 8
  %61 = getelementptr inbounds %struct.emac_tpd, %struct.emac_tpd* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  ret void
}

declare dso_local i32* @EMAC_TPD(%struct.emac_tx_queue*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
