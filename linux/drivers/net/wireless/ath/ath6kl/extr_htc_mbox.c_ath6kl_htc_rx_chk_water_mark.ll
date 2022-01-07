; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_rx_chk_water_mark.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_rx_chk_water_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_endpoint = type { %struct.TYPE_2__*, i32, i32, %struct.htc_ep_callbacks }
%struct.TYPE_2__ = type { i32 }
%struct.htc_ep_callbacks = type { i64, i32 (%struct.TYPE_2__*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_endpoint*)* @ath6kl_htc_rx_chk_water_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_htc_rx_chk_water_mark(%struct.htc_endpoint* %0) #0 {
  %2 = alloca %struct.htc_endpoint*, align 8
  %3 = alloca %struct.htc_ep_callbacks, align 8
  store %struct.htc_endpoint* %0, %struct.htc_endpoint** %2, align 8
  %4 = load %struct.htc_endpoint*, %struct.htc_endpoint** %2, align 8
  %5 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %4, i32 0, i32 3
  %6 = bitcast %struct.htc_ep_callbacks* %3 to i8*
  %7 = bitcast %struct.htc_ep_callbacks* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 16, i1 false)
  %8 = getelementptr inbounds %struct.htc_ep_callbacks, %struct.htc_ep_callbacks* %3, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %1
  %12 = load %struct.htc_endpoint*, %struct.htc_endpoint** %2, align 8
  %13 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.htc_endpoint*, %struct.htc_endpoint** %2, align 8
  %18 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %17, i32 0, i32 2
  %19 = call i64 @get_queue_depth(i32* %18)
  %20 = getelementptr inbounds %struct.htc_ep_callbacks, %struct.htc_ep_callbacks* %3, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %11
  %24 = load %struct.htc_endpoint*, %struct.htc_endpoint** %2, align 8
  %25 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock_bh(i32* %27)
  %29 = getelementptr inbounds %struct.htc_ep_callbacks, %struct.htc_ep_callbacks* %3, i32 0, i32 1
  %30 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %29, align 8
  %31 = load %struct.htc_endpoint*, %struct.htc_endpoint** %2, align 8
  %32 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load %struct.htc_endpoint*, %struct.htc_endpoint** %2, align 8
  %35 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 %30(%struct.TYPE_2__* %33, i32 %36)
  br label %44

38:                                               ; preds = %11
  %39 = load %struct.htc_endpoint*, %struct.htc_endpoint** %2, align 8
  %40 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock_bh(i32* %42)
  br label %44

44:                                               ; preds = %23, %38, %1
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i64 @get_queue_depth(i32*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
