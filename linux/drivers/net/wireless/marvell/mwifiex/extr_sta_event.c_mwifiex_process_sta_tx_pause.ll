; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_event.c_mwifiex_process_sta_tx_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_event.c_mwifiex_process_sta_tx_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mwifiex_ie_types_header = type { i32 }
%struct.mwifiex_tx_pause_tlv = type { i64, i32, i32 }
%struct.mwifiex_sta_node = type { i64 }

@EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"sta tx_pause: %pM pause=%d, pkts=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_private*, %struct.mwifiex_ie_types_header*)* @mwifiex_process_sta_tx_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_process_sta_tx_pause(%struct.mwifiex_private* %0, %struct.mwifiex_ie_types_header* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.mwifiex_ie_types_header*, align 8
  %5 = alloca %struct.mwifiex_tx_pause_tlv*, align 8
  %6 = alloca %struct.mwifiex_sta_node*, align 8
  %7 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.mwifiex_ie_types_header* %1, %struct.mwifiex_ie_types_header** %4, align 8
  %8 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %4, align 8
  %9 = bitcast %struct.mwifiex_ie_types_header* %8 to i8*
  %10 = bitcast i8* %9 to %struct.mwifiex_tx_pause_tlv*
  store %struct.mwifiex_tx_pause_tlv* %10, %struct.mwifiex_tx_pause_tlv** %5, align 8
  %11 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %12 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* @EVENT, align 4
  %15 = load %struct.mwifiex_tx_pause_tlv*, %struct.mwifiex_tx_pause_tlv** %5, align 8
  %16 = getelementptr inbounds %struct.mwifiex_tx_pause_tlv, %struct.mwifiex_tx_pause_tlv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mwifiex_tx_pause_tlv*, %struct.mwifiex_tx_pause_tlv** %5, align 8
  %19 = getelementptr inbounds %struct.mwifiex_tx_pause_tlv, %struct.mwifiex_tx_pause_tlv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.mwifiex_tx_pause_tlv*, %struct.mwifiex_tx_pause_tlv** %5, align 8
  %22 = getelementptr inbounds %struct.mwifiex_tx_pause_tlv, %struct.mwifiex_tx_pause_tlv* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mwifiex_dbg(%struct.TYPE_2__* %13, i32 %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %20, i32 %23)
  %25 = load %struct.mwifiex_tx_pause_tlv*, %struct.mwifiex_tx_pause_tlv** %5, align 8
  %26 = getelementptr inbounds %struct.mwifiex_tx_pause_tlv, %struct.mwifiex_tx_pause_tlv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %29 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @ether_addr_equal(i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %2
  %34 = load %struct.mwifiex_tx_pause_tlv*, %struct.mwifiex_tx_pause_tlv** %5, align 8
  %35 = getelementptr inbounds %struct.mwifiex_tx_pause_tlv, %struct.mwifiex_tx_pause_tlv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %40 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  br label %44

41:                                               ; preds = %33
  %42 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %43 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %38
  br label %101

45:                                               ; preds = %2
  %46 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %47 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ISSUPP_TDLS_ENABLED(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  br label %101

54:                                               ; preds = %45
  %55 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %56 = load %struct.mwifiex_tx_pause_tlv*, %struct.mwifiex_tx_pause_tlv** %5, align 8
  %57 = getelementptr inbounds %struct.mwifiex_tx_pause_tlv, %struct.mwifiex_tx_pause_tlv* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @mwifiex_get_tdls_link_status(%struct.mwifiex_private* %55, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @mwifiex_is_tdls_link_setup(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %100

63:                                               ; preds = %54
  %64 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %65 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %64, i32 0, i32 1
  %66 = call i32 @spin_lock_bh(i32* %65)
  %67 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %68 = load %struct.mwifiex_tx_pause_tlv*, %struct.mwifiex_tx_pause_tlv** %5, align 8
  %69 = getelementptr inbounds %struct.mwifiex_tx_pause_tlv, %struct.mwifiex_tx_pause_tlv* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private* %67, i32 %70)
  store %struct.mwifiex_sta_node* %71, %struct.mwifiex_sta_node** %6, align 8
  %72 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %73 = icmp ne %struct.mwifiex_sta_node* %72, null
  br i1 %73, label %74, label %96

74:                                               ; preds = %63
  %75 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %76 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.mwifiex_tx_pause_tlv*, %struct.mwifiex_tx_pause_tlv** %5, align 8
  %79 = getelementptr inbounds %struct.mwifiex_tx_pause_tlv, %struct.mwifiex_tx_pause_tlv* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %74
  %83 = load %struct.mwifiex_tx_pause_tlv*, %struct.mwifiex_tx_pause_tlv** %5, align 8
  %84 = getelementptr inbounds %struct.mwifiex_tx_pause_tlv, %struct.mwifiex_tx_pause_tlv* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %87 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %89 = load %struct.mwifiex_tx_pause_tlv*, %struct.mwifiex_tx_pause_tlv** %5, align 8
  %90 = getelementptr inbounds %struct.mwifiex_tx_pause_tlv, %struct.mwifiex_tx_pause_tlv* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.mwifiex_tx_pause_tlv*, %struct.mwifiex_tx_pause_tlv** %5, align 8
  %93 = getelementptr inbounds %struct.mwifiex_tx_pause_tlv, %struct.mwifiex_tx_pause_tlv* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @mwifiex_update_ralist_tx_pause(%struct.mwifiex_private* %88, i32 %91, i64 %94)
  br label %96

96:                                               ; preds = %82, %74, %63
  %97 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %98 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %97, i32 0, i32 1
  %99 = call i32 @spin_unlock_bh(i32* %98)
  br label %100

100:                                              ; preds = %96, %54
  br label %101

101:                                              ; preds = %53, %100, %44
  ret void
}

declare dso_local i32 @mwifiex_dbg(%struct.TYPE_2__*, i32, i8*, i32, i64, i32) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @ISSUPP_TDLS_ENABLED(i32) #1

declare dso_local i32 @mwifiex_get_tdls_link_status(%struct.mwifiex_private*, i32) #1

declare dso_local i64 @mwifiex_is_tdls_link_setup(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private*, i32) #1

declare dso_local i32 @mwifiex_update_ralist_tx_pause(%struct.mwifiex_private*, i32, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
