; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_tx_try.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_tx_try.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32 }
%struct.htc_endpoint = type { i32, i32, %struct.TYPE_2__, i32, i32, %struct.htc_ep_callbacks }
%struct.TYPE_2__ = type { i32 }
%struct.htc_ep_callbacks = type { i64 (i32, %struct.htc_packet*)* }
%struct.htc_packet = type { i32 }

@ATH6KL_DBG_HTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"htc tx overflow ep %d depth %d max %d\0A\00", align 1
@HTC_SEND_FULL_DROP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.htc_target*, %struct.htc_endpoint*, %struct.htc_packet*)* @ath6kl_htc_tx_try to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_htc_tx_try(%struct.htc_target* %0, %struct.htc_endpoint* %1, %struct.htc_packet* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.htc_target*, align 8
  %6 = alloca %struct.htc_endpoint*, align 8
  %7 = alloca %struct.htc_packet*, align 8
  %8 = alloca %struct.htc_ep_callbacks, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.htc_target* %0, %struct.htc_target** %5, align 8
  store %struct.htc_endpoint* %1, %struct.htc_endpoint** %6, align 8
  store %struct.htc_packet* %2, %struct.htc_packet** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.htc_endpoint*, %struct.htc_endpoint** %6, align 8
  %12 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %11, i32 0, i32 5
  %13 = bitcast %struct.htc_ep_callbacks* %8 to i8*
  %14 = bitcast %struct.htc_ep_callbacks* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %16 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.htc_endpoint*, %struct.htc_endpoint** %6, align 8
  %19 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %18, i32 0, i32 1
  %20 = call i32 @get_queue_depth(i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %22 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock_bh(i32* %22)
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.htc_endpoint*, %struct.htc_endpoint** %6, align 8
  %26 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %30

30:                                               ; preds = %29, %3
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %35 = load %struct.htc_endpoint*, %struct.htc_endpoint** %6, align 8
  %36 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.htc_endpoint*, %struct.htc_endpoint** %6, align 8
  %40 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ath6kl_dbg(i32 %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %33, %30
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.htc_ep_callbacks, %struct.htc_ep_callbacks* %8, i32 0, i32 0
  %48 = load i64 (i32, %struct.htc_packet*)*, i64 (i32, %struct.htc_packet*)** %47, align 8
  %49 = icmp ne i64 (i32, %struct.htc_packet*)* %48, null
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.htc_ep_callbacks, %struct.htc_ep_callbacks* %8, i32 0, i32 0
  %52 = load i64 (i32, %struct.htc_packet*)*, i64 (i32, %struct.htc_packet*)** %51, align 8
  %53 = load %struct.htc_endpoint*, %struct.htc_endpoint** %6, align 8
  %54 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.htc_packet*, %struct.htc_packet** %7, align 8
  %57 = call i64 %52(i32 %55, %struct.htc_packet* %56)
  %58 = load i64, i64* @HTC_SEND_FULL_DROP, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %50
  %61 = load %struct.htc_endpoint*, %struct.htc_endpoint** %6, align 8
  %62 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  store i32 0, i32* %4, align 4
  br label %82

66:                                               ; preds = %50
  br label %67

67:                                               ; preds = %66, %46, %43
  %68 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %69 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %68, i32 0, i32 0
  %70 = call i32 @spin_lock_bh(i32* %69)
  %71 = load %struct.htc_packet*, %struct.htc_packet** %7, align 8
  %72 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %71, i32 0, i32 0
  %73 = load %struct.htc_endpoint*, %struct.htc_endpoint** %6, align 8
  %74 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %73, i32 0, i32 1
  %75 = call i32 @list_add_tail(i32* %72, i32* %74)
  %76 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %77 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock_bh(i32* %77)
  %79 = load %struct.htc_target*, %struct.htc_target** %5, align 8
  %80 = load %struct.htc_endpoint*, %struct.htc_endpoint** %6, align 8
  %81 = call i32 @ath6kl_htc_tx_from_queue(%struct.htc_target* %79, %struct.htc_endpoint* %80)
  store i32 1, i32* %4, align 4
  br label %82

82:                                               ; preds = %67, %60
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @get_queue_depth(i32*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32, i32) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #2

declare dso_local i32 @ath6kl_htc_tx_from_queue(%struct.htc_target*, %struct.htc_endpoint*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
