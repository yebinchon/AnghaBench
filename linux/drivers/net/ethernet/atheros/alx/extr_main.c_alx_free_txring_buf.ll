; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_free_txring_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_free_txring_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_tx_queue = type { i32, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alx_tx_queue*)* @alx_free_txring_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alx_free_txring_buf(%struct.alx_tx_queue* %0) #0 {
  %2 = alloca %struct.alx_tx_queue*, align 8
  %3 = alloca i32, align 4
  store %struct.alx_tx_queue* %0, %struct.alx_tx_queue** %2, align 8
  %4 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %2, align 8
  %5 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %51

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %20, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %2, align 8
  %13 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @alx_free_txbuf(%struct.alx_tx_queue* %17, i32 %18)
  br label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %10

23:                                               ; preds = %10
  %24 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %2, align 8
  %25 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %2, align 8
  %28 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memset(i32 %26, i32 0, i32 %32)
  %34 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %2, align 8
  %35 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %2, align 8
  %38 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memset(i32 %36, i32 0, i32 %42)
  %44 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %2, align 8
  %45 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %2, align 8
  %47 = getelementptr inbounds %struct.alx_tx_queue, %struct.alx_tx_queue* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.alx_tx_queue*, %struct.alx_tx_queue** %2, align 8
  %49 = call i32 @alx_get_tx_queue(%struct.alx_tx_queue* %48)
  %50 = call i32 @netdev_tx_reset_queue(i32 %49)
  br label %51

51:                                               ; preds = %23, %8
  ret void
}

declare dso_local i32 @alx_free_txbuf(%struct.alx_tx_queue*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @netdev_tx_reset_queue(i32) #1

declare dso_local i32 @alx_get_tx_queue(%struct.alx_tx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
