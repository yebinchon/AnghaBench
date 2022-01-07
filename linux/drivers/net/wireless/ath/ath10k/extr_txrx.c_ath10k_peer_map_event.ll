; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_txrx.c_ath10k_peer_map_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_txrx.c_ath10k_peer_map_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { %struct.ath10k* }
%struct.ath10k = type { i32, %struct.ath10k_peer**, i32, i32 }
%struct.ath10k_peer = type { i32, i32, i32, i32 }
%struct.htt_peer_map_event = type { i64, i32, i32 }

@ATH10K_MAX_NUM_PEER_IDS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"received htt peer map event with idx out of bounds: %hu\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ATH10K_DBG_HTT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"htt peer map vdev %d peer %pM id %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_peer_map_event(%struct.ath10k_htt* %0, %struct.htt_peer_map_event* %1) #0 {
  %3 = alloca %struct.ath10k_htt*, align 8
  %4 = alloca %struct.htt_peer_map_event*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.ath10k_peer*, align 8
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %3, align 8
  store %struct.htt_peer_map_event* %1, %struct.htt_peer_map_event** %4, align 8
  %7 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %8 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %7, i32 0, i32 0
  %9 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  store %struct.ath10k* %9, %struct.ath10k** %5, align 8
  %10 = load %struct.htt_peer_map_event*, %struct.htt_peer_map_event** %4, align 8
  %11 = getelementptr inbounds %struct.htt_peer_map_event, %struct.htt_peer_map_event* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ATH10K_MAX_NUM_PEER_IDS, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %17 = load %struct.htt_peer_map_event*, %struct.htt_peer_map_event** %4, align 8
  %18 = getelementptr inbounds %struct.htt_peer_map_event, %struct.htt_peer_map_event* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @ath10k_warn(%struct.ath10k* %16, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %118

21:                                               ; preds = %2
  %22 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %23 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %26 = load %struct.htt_peer_map_event*, %struct.htt_peer_map_event** %4, align 8
  %27 = getelementptr inbounds %struct.htt_peer_map_event, %struct.htt_peer_map_event* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.htt_peer_map_event*, %struct.htt_peer_map_event** %4, align 8
  %30 = getelementptr inbounds %struct.htt_peer_map_event, %struct.htt_peer_map_event* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.ath10k_peer* @ath10k_peer_find(%struct.ath10k* %25, i32 %28, i32 %31)
  store %struct.ath10k_peer* %32, %struct.ath10k_peer** %6, align 8
  %33 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %34 = icmp ne %struct.ath10k_peer* %33, null
  br i1 %34, label %62, label %35

35:                                               ; preds = %21
  %36 = load i32, i32* @GFP_ATOMIC, align 4
  %37 = call %struct.ath10k_peer* @kzalloc(i32 16, i32 %36)
  store %struct.ath10k_peer* %37, %struct.ath10k_peer** %6, align 8
  %38 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %39 = icmp ne %struct.ath10k_peer* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %114

41:                                               ; preds = %35
  %42 = load %struct.htt_peer_map_event*, %struct.htt_peer_map_event** %4, align 8
  %43 = getelementptr inbounds %struct.htt_peer_map_event, %struct.htt_peer_map_event* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %46 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %48 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.htt_peer_map_event*, %struct.htt_peer_map_event** %4, align 8
  %51 = getelementptr inbounds %struct.htt_peer_map_event, %struct.htt_peer_map_event* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ether_addr_copy(i32 %49, i32 %52)
  %54 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %55 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %54, i32 0, i32 1
  %56 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %57 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %56, i32 0, i32 3
  %58 = call i32 @list_add(i32* %55, i32* %57)
  %59 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %60 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %59, i32 0, i32 2
  %61 = call i32 @wake_up(i32* %60)
  br label %62

62:                                               ; preds = %41, %21
  %63 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %64 = load i32, i32* @ATH10K_DBG_HTT, align 4
  %65 = load %struct.htt_peer_map_event*, %struct.htt_peer_map_event** %4, align 8
  %66 = getelementptr inbounds %struct.htt_peer_map_event, %struct.htt_peer_map_event* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.htt_peer_map_event*, %struct.htt_peer_map_event** %4, align 8
  %69 = getelementptr inbounds %struct.htt_peer_map_event, %struct.htt_peer_map_event* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.htt_peer_map_event*, %struct.htt_peer_map_event** %4, align 8
  %72 = getelementptr inbounds %struct.htt_peer_map_event, %struct.htt_peer_map_event* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @ath10k_dbg(%struct.ath10k* %63, i32 %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %70, i64 %73)
  %75 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %76 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %75, i32 0, i32 1
  %77 = load %struct.ath10k_peer**, %struct.ath10k_peer*** %76, align 8
  %78 = load %struct.htt_peer_map_event*, %struct.htt_peer_map_event** %4, align 8
  %79 = getelementptr inbounds %struct.htt_peer_map_event, %struct.htt_peer_map_event* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.ath10k_peer*, %struct.ath10k_peer** %77, i64 %80
  %82 = load %struct.ath10k_peer*, %struct.ath10k_peer** %81, align 8
  %83 = icmp ne %struct.ath10k_peer* %82, null
  br i1 %83, label %84, label %95

84:                                               ; preds = %62
  %85 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %86 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %85, i32 0, i32 1
  %87 = load %struct.ath10k_peer**, %struct.ath10k_peer*** %86, align 8
  %88 = load %struct.htt_peer_map_event*, %struct.htt_peer_map_event** %4, align 8
  %89 = getelementptr inbounds %struct.htt_peer_map_event, %struct.htt_peer_map_event* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.ath10k_peer*, %struct.ath10k_peer** %87, i64 %90
  %92 = load %struct.ath10k_peer*, %struct.ath10k_peer** %91, align 8
  %93 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %94 = icmp ne %struct.ath10k_peer* %92, %93
  br label %95

95:                                               ; preds = %84, %62
  %96 = phi i1 [ false, %62 ], [ %94, %84 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @WARN_ON(i32 %97)
  %99 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %100 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %101 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %100, i32 0, i32 1
  %102 = load %struct.ath10k_peer**, %struct.ath10k_peer*** %101, align 8
  %103 = load %struct.htt_peer_map_event*, %struct.htt_peer_map_event** %4, align 8
  %104 = getelementptr inbounds %struct.htt_peer_map_event, %struct.htt_peer_map_event* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.ath10k_peer*, %struct.ath10k_peer** %102, i64 %105
  store %struct.ath10k_peer* %99, %struct.ath10k_peer** %106, align 8
  %107 = load %struct.htt_peer_map_event*, %struct.htt_peer_map_event** %4, align 8
  %108 = getelementptr inbounds %struct.htt_peer_map_event, %struct.htt_peer_map_event* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.ath10k_peer*, %struct.ath10k_peer** %6, align 8
  %111 = getelementptr inbounds %struct.ath10k_peer, %struct.ath10k_peer* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @set_bit(i64 %109, i32 %112)
  br label %114

114:                                              ; preds = %95, %40
  %115 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %116 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %115, i32 0, i32 0
  %117 = call i32 @spin_unlock_bh(i32* %116)
  br label %118

118:                                              ; preds = %114, %15
  ret void
}

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.ath10k_peer* @ath10k_peer_find(%struct.ath10k*, i32, i32) #1

declare dso_local %struct.ath10k_peer* @kzalloc(i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
