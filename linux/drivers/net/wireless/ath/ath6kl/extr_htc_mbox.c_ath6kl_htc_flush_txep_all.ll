; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_flush_txep_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_flush_txep_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { %struct.htc_endpoint* }
%struct.htc_endpoint = type { i64 }

@ENDPOINT_0 = common dso_local global i32 0, align 4
@ENDPOINT_MAX = common dso_local global i32 0, align 4
@HTC_TX_PACKET_TAG_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_target*)* @ath6kl_htc_flush_txep_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_htc_flush_txep_all(%struct.htc_target* %0) #0 {
  %2 = alloca %struct.htc_target*, align 8
  %3 = alloca %struct.htc_endpoint*, align 8
  %4 = alloca i32, align 4
  store %struct.htc_target* %0, %struct.htc_target** %2, align 8
  %5 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %6 = call i32 @dump_cred_dist_stats(%struct.htc_target* %5)
  %7 = load i32, i32* @ENDPOINT_0, align 4
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %29, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @ENDPOINT_MAX, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %14 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %13, i32 0, i32 0
  %15 = load %struct.htc_endpoint*, %struct.htc_endpoint** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %15, i64 %17
  store %struct.htc_endpoint* %18, %struct.htc_endpoint** %3, align 8
  %19 = load %struct.htc_endpoint*, %struct.htc_endpoint** %3, align 8
  %20 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %29

24:                                               ; preds = %12
  %25 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @HTC_TX_PACKET_TAG_ALL, align 4
  %28 = call i32 @ath6kl_htc_mbox_flush_txep(%struct.htc_target* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %23
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %8

32:                                               ; preds = %8
  ret void
}

declare dso_local i32 @dump_cred_dist_stats(%struct.htc_target*) #1

declare dso_local i32 @ath6kl_htc_mbox_flush_txep(%struct.htc_target*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
