; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_txrx.c_ath10k_peer_unmap_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_txrx.c_ath10k_peer_unmap_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { %struct.ath10k* }
%struct.ath10k = type { i32, i32, i32** }
%struct.htt_peer_unmap_event = type { i64 }
%struct.ath10k_peer = type { i32, i32, i32, i32 }

@ATH10K_MAX_NUM_PEER_IDS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"received htt peer unmap event with idx out of bounds: %hu\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"peer-unmap-event: unknown peer id %d\0A\00", align 1
@ATH10K_DBG_HTT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"htt peer unmap vdev %d peer %pM id %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_peer_unmap_event(%struct.ath10k_htt* %0, %struct.htt_peer_unmap_event* %1) #0 {
  %3 = alloca %struct.ath10k_htt*, align 8
  %4 = alloca %struct.htt_peer_unmap_event*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.ath10k_peer*, align 8
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %3, align 8
  store %struct.htt_peer_unmap_event* %1, %struct.htt_peer_unmap_event** %4, align 8
  %7 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %8 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %7, i32 0, i32 0
  %9 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  store %struct.ath10k* %9, %struct.ath10k** %5, align 8
  %10 = load %struct.htt_peer_unmap_event*, %struct.htt_peer_unmap_event** %4, align 8
  %11 = getelementptr inbounds %struct.htt_peer_unmap_event, %struct.htt_peer_unmap_event* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ATH10K_MAX_NUM_PEER_IDS, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %17 = load %struct.htt_peer_unmap_event*, %struct.htt_peer_unmap_event** %4, align 8
  %18 = getelementptr inbounds %struct.htt_peer_unmap_event, %struct.htt_peer_unmap_event* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @ath10k_warn(%struct.ath10k* %16, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %85

21:                                               ; preds = %2
  %22 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %23 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %26 = load %struct.htt_peer_unmap_event*, %struct.htt_peer_unmap_event** %4, align 8
  %27 = getelementptr inbounds %struct.htt_peer_unmap_event, %struct.htt_peer_unmap_event* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call %struct.ath10k_peer* @ath10k_peer_find_by_id(%struct.ath10k* %25, i64 %28)
  store %struct.ath10k_peer* %29, %struct.ath10k_peer** %6, align 8
  %30 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %31 = icmp ne %struct.ath10k_peer* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %21
  %33 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %34 = load %struct.htt_peer_unmap_event*, %struct.htt_peer_unmap_event** %4, align 8
  %35 = getelementptr inbounds %struct.htt_peer_unmap_event, %struct.htt_peer_unmap_event* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @ath10k_warn(%struct.ath10k* %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  br label %81

38:                                               ; preds = %21
  %39 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %40 = load i32, i32* @ATH10K_DBG_HTT, align 4
  %41 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %42 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %45 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.htt_peer_unmap_event*, %struct.htt_peer_unmap_event** %4, align 8
  %48 = getelementptr inbounds %struct.htt_peer_unmap_event, %struct.htt_peer_unmap_event* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @ath10k_dbg(%struct.ath10k* %39, i32 %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %46, i64 %49)
  %51 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %52 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %51, i32 0, i32 2
  %53 = load i32**, i32*** %52, align 8
  %54 = load %struct.htt_peer_unmap_event*, %struct.htt_peer_unmap_event** %4, align 8
  %55 = getelementptr inbounds %struct.htt_peer_unmap_event, %struct.htt_peer_unmap_event* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32*, i32** %53, i64 %56
  store i32* null, i32** %57, align 8
  %58 = load %struct.htt_peer_unmap_event*, %struct.htt_peer_unmap_event** %4, align 8
  %59 = getelementptr inbounds %struct.htt_peer_unmap_event, %struct.htt_peer_unmap_event* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %62 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @clear_bit(i64 %60, i32 %63)
  %65 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %66 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* @ATH10K_MAX_NUM_PEER_IDS, align 8
  %69 = call i64 @bitmap_empty(i32 %67, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %38
  %72 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %73 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %72, i32 0, i32 0
  %74 = call i32 @list_del(i32* %73)
  %75 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %76 = call i32 @kfree(%struct.ath10k_peer* %75)
  %77 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %78 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %77, i32 0, i32 1
  %79 = call i32 @wake_up(i32* %78)
  br label %80

80:                                               ; preds = %71, %38
  br label %81

81:                                               ; preds = %80, %32
  %82 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %83 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %82, i32 0, i32 0
  %84 = call i32 @spin_unlock_bh(i32* %83)
  br label %85

85:                                               ; preds = %81, %15
  ret void
}

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.ath10k_peer* @ath10k_peer_find_by_id(%struct.ath10k*, i64) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i64) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i64 @bitmap_empty(i32, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.ath10k_peer*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
