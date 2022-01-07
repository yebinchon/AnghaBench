; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_tx_comp_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_tx_comp_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32, i32, i32 }
%struct.htc_endpoint = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.htc_packet = type { %struct.TYPE_5__, i32, i32, i32, i32, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@HTC_HDR_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"req failed (status:%d, ep:%d, len:%d creds:%d)\0A\00", align 1
@ATH6KL_DBG_HTC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"htc tx ctxt 0x%p dist 0x%p\0A\00", align 1
@HTC_CREDIT_DIST_SEND_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_target*, %struct.htc_endpoint*, %struct.htc_packet*)* @htc_tx_comp_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htc_tx_comp_update(%struct.htc_target* %0, %struct.htc_endpoint* %1, %struct.htc_packet* %2) #0 {
  %4 = alloca %struct.htc_target*, align 8
  %5 = alloca %struct.htc_endpoint*, align 8
  %6 = alloca %struct.htc_packet*, align 8
  store %struct.htc_target* %0, %struct.htc_target** %4, align 8
  store %struct.htc_endpoint* %1, %struct.htc_endpoint** %5, align 8
  store %struct.htc_packet* %2, %struct.htc_packet** %6, align 8
  %7 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %8 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %7, i32 0, i32 5
  store i32* null, i32** %8, align 8
  %9 = load i64, i64* @HTC_HDR_LENGTH, align 8
  %10 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %11 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %9
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 4
  %16 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %17 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %75

21:                                               ; preds = %3
  %22 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %23 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %26 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %29 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %32 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @ath6kl_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %30, i64 %35)
  %37 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %38 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %37, i32 0, i32 0
  %39 = call i32 @spin_lock_bh(i32* %38)
  %40 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %41 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.htc_endpoint*, %struct.htc_endpoint** %5, align 8
  %46 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %44
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  %52 = load %struct.htc_endpoint*, %struct.htc_endpoint** %5, align 8
  %53 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %52, i32 0, i32 0
  %54 = call i32 @get_queue_depth(i32* %53)
  %55 = load %struct.htc_endpoint*, %struct.htc_endpoint** %5, align 8
  %56 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %59 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %60 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %63 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %62, i32 0, i32 1
  %64 = call i32 @ath6kl_dbg(i32 %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32* %63)
  %65 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %66 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %69 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %68, i32 0, i32 1
  %70 = load i32, i32* @HTC_CREDIT_DIST_SEND_COMPLETE, align 4
  %71 = call i32 @ath6kl_credit_distribute(i32 %67, i32* %69, i32 %70)
  %72 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %73 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock_bh(i32* %73)
  br label %75

75:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @ath6kl_err(i8*, i32, i32, i32, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @get_queue_depth(i32*) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32*) #1

declare dso_local i32 @ath6kl_credit_distribute(i32, i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
