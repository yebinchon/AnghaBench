; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_mbox_rx_fetch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_mbox_rx_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_sdio = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_sdio_mbox_rx_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_mbox_rx_fetch(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_sdio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %8 = call %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k* %7)
  store %struct.ath10k_sdio* %8, %struct.ath10k_sdio** %4, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %28, %1
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %4, align 8
  %12 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %17 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %4, align 8
  %18 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i32 @ath10k_sdio_mbox_rx_packet(%struct.ath10k* %16, i32* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %32

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %9

31:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %52

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %47, %32
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %4, align 8
  %36 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %4, align 8
  %41 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call i32 @ath10k_sdio_mbox_free_rx_pkt(i32* %45)
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %33

50:                                               ; preds = %33
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %31
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k*) #1

declare dso_local i32 @ath10k_sdio_mbox_rx_packet(%struct.ath10k*, i32*) #1

declare dso_local i32 @ath10k_sdio_mbox_free_rx_pkt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
