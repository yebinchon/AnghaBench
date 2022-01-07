; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_tpd_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_tpd_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_tx_queue = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alx_tx_queue*)* @alx_tpd_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_tpd_avail(%struct.alx_tx_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.alx_tx_queue*, align 8
  store %struct.alx_tx_queue* %0, %struct.alx_tx_queue** %3, align 8
  %4 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %3, align 8
  %5 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %3, align 8
  %8 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %6, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %3, align 8
  %13 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %3, align 8
  %17 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %3, align 8
  %21 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  %24 = sub nsw i64 %23, 1
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %2, align 4
  br label %36

26:                                               ; preds = %1
  %27 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %3, align 8
  %28 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %3, align 8
  %31 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  %34 = sub nsw i64 %33, 1
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %26, %11
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
