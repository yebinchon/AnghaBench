; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_tpd_num_free_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_tpd_num_free_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_tx_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emac_tx_queue*)* @emac_tpd_num_free_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_tpd_num_free_descs(%struct.emac_tx_queue* %0) #0 {
  %2 = alloca %struct.emac_tx_queue*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.emac_tx_queue* %0, %struct.emac_tx_queue** %2, align 8
  %5 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %2, align 8
  %6 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  %9 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %2, align 8
  %10 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %3, align 8
  %19 = sub nsw i64 %17, %18
  %20 = sub nsw i64 %19, 1
  br label %31

21:                                               ; preds = %1
  %22 = load %struct.emac_tx_queue*, %struct.emac_tx_queue** %2, align 8
  %23 = getelementptr inbounds %struct.emac_tx_queue, %struct.emac_tx_queue* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i64, i64* %3, align 8
  %29 = sub nsw i64 %27, %28
  %30 = sub nsw i64 %29, 1
  br label %31

31:                                               ; preds = %21, %16
  %32 = phi i64 [ %20, %16 ], [ %30, %21 ]
  %33 = trunc i64 %32 to i32
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
