; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_mbox_rxmsg_pending_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_mbox_rxmsg_pending_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_sdio = type { i32 }

@ATH10K_SDIO_MAX_RX_MSGS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SDIO_MBOX_PROCESSING_TIMEOUT_HZ = common dso_local global i64 0, align 8
@ECANCELED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to get pending recv messages: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, i32*)* @ath10k_sdio_mbox_rxmsg_pending_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_mbox_rxmsg_pending_handler(%struct.ath10k* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ath10k_sdio*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %13 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %14 = call %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k* %13)
  store %struct.ath10k_sdio* %14, %struct.ath10k_sdio** %7, align 8
  %15 = load i32, i32* @ATH10K_SDIO_MAX_RX_MSGS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  store i32 1, i32* %10, align 4
  %19 = load i32*, i32** %6, align 8
  store i32 1, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %20, i32* %21, align 16
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i64, i64* @SDIO_MBOX_PROCESSING_TIMEOUT_HZ, align 8
  %24 = add i64 %22, %23
  store i64 %24, i64* %11, align 8
  br label %25

25:                                               ; preds = %52, %3
  %26 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @ath10k_sdio_mbox_rx_alloc(%struct.ath10k* %26, i32* %18, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %57

32:                                               ; preds = %25
  %33 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %7, align 8
  %34 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %35, 2
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32*, i32** %6, align 8
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %32
  %40 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %41 = call i32 @ath10k_sdio_mbox_rx_fetch(%struct.ath10k* %40)
  store i32 %41, i32* %12, align 4
  store i32 0, i32* %10, align 4
  %42 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %43 = call i32 @ath10k_sdio_mbox_rx_process_packets(%struct.ath10k* %42, i32* %18, i32* %10)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %39
  br label %57

50:                                               ; preds = %46
  %51 = load i32*, i32** %6, align 8
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %50
  %53 = load i64, i64* @jiffies, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i64 @time_before(i64 %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %25, label %57

57:                                               ; preds = %52, %49, %31
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @ECANCELED, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @ath10k_warn(%struct.ath10k* %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %65, %60, %57
  %70 = load i32, i32* %12, align 4
  %71 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %71)
  ret i32 %70
}

declare dso_local %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ath10k_sdio_mbox_rx_alloc(%struct.ath10k*, i32*, i32) #1

declare dso_local i32 @ath10k_sdio_mbox_rx_fetch(%struct.ath10k*) #1

declare dso_local i32 @ath10k_sdio_mbox_rx_process_packets(%struct.ath10k*, i32*, i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
