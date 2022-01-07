; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_ctrl_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_ctrl_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32* }
%struct.htc_packet = type { i64, i64, i64, i32 }

@ENDPOINT_0 = common dso_local global i64 0, align 8
@ECANCELED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"htc_ctrl_rx, got message with len:%zu\0A\00", align 1
@HTC_HDR_LENGTH = common dso_local global i64 0, align 8
@ATH6KL_DBG_HTC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"htc rx unexpected endpoint 0 message\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_target*, %struct.htc_packet*)* @htc_ctrl_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htc_ctrl_rx(%struct.htc_target* %0, %struct.htc_packet* %1) #0 {
  %3 = alloca %struct.htc_target*, align 8
  %4 = alloca %struct.htc_packet*, align 8
  store %struct.htc_target* %0, %struct.htc_target** %3, align 8
  store %struct.htc_packet* %1, %struct.htc_packet** %4, align 8
  %5 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %6 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ENDPOINT_0, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @WARN_ON(i32 1)
  br label %55

12:                                               ; preds = %2
  %13 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %14 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ECANCELED, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %21 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %22 = call i32 @reclaim_rx_ctrl_buf(%struct.htc_target* %20, %struct.htc_packet* %21)
  br label %55

23:                                               ; preds = %12
  %24 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %25 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %23
  %29 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %30 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @HTC_HDR_LENGTH, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @ath6kl_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %36 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %37 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HTC_HDR_LENGTH, align 8
  %40 = sub nsw i64 %38, %39
  %41 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %42 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @HTC_HDR_LENGTH, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @ath6kl_dbg_dump(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i64 %40, i64 %45)
  br label %47

47:                                               ; preds = %28, %23
  %48 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %49 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %50 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %51 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = call i32 @htc_reclaim_rxbuf(%struct.htc_target* %48, %struct.htc_packet* %49, i32* %53)
  br label %55

55:                                               ; preds = %47, %19, %10
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @reclaim_rx_ctrl_buf(%struct.htc_target*, %struct.htc_packet*) #1

declare dso_local i32 @ath6kl_err(i8*, i64) #1

declare dso_local i32 @ath6kl_dbg_dump(i32, i8*, i8*, i64, i64) #1

declare dso_local i32 @htc_reclaim_rxbuf(%struct.htc_target*, %struct.htc_packet*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
