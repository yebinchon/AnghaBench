; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_event.c_mwifiex_process_uap_tx_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_event.c_mwifiex_process_uap_tx_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mwifiex_ie_types_header = type { i32 }
%struct.mwifiex_tx_pause_tlv = type { i64, i32, i32 }
%struct.mwifiex_sta_node = type { i64 }

@EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"uap tx_pause: %pM pause=%d, pkts=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_private*, %struct.mwifiex_ie_types_header*)* @mwifiex_process_uap_tx_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_process_uap_tx_pause(%struct.mwifiex_private* %0, %struct.mwifiex_ie_types_header* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.mwifiex_ie_types_header*, align 8
  %5 = alloca %struct.mwifiex_tx_pause_tlv*, align 8
  %6 = alloca %struct.mwifiex_sta_node*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.mwifiex_ie_types_header* %1, %struct.mwifiex_ie_types_header** %4, align 8
  %7 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %4, align 8
  %8 = bitcast %struct.mwifiex_ie_types_header* %7 to i8*
  %9 = bitcast i8* %8 to %struct.mwifiex_tx_pause_tlv*
  store %struct.mwifiex_tx_pause_tlv* %9, %struct.mwifiex_tx_pause_tlv** %5, align 8
  %10 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %11 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @EVENT, align 4
  %14 = load %struct.mwifiex_tx_pause_tlv*, %struct.mwifiex_tx_pause_tlv** %5, align 8
  %15 = getelementptr inbounds %struct.mwifiex_tx_pause_tlv, %struct.mwifiex_tx_pause_tlv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.mwifiex_tx_pause_tlv*, %struct.mwifiex_tx_pause_tlv** %5, align 8
  %18 = getelementptr inbounds %struct.mwifiex_tx_pause_tlv, %struct.mwifiex_tx_pause_tlv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mwifiex_tx_pause_tlv*, %struct.mwifiex_tx_pause_tlv** %5, align 8
  %21 = getelementptr inbounds %struct.mwifiex_tx_pause_tlv, %struct.mwifiex_tx_pause_tlv* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mwifiex_dbg(i32 %12, i32 %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %19, i32 %22)
  %24 = load %struct.mwifiex_tx_pause_tlv*, %struct.mwifiex_tx_pause_tlv** %5, align 8
  %25 = getelementptr inbounds %struct.mwifiex_tx_pause_tlv, %struct.mwifiex_tx_pause_tlv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %28 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ether_addr_equal(i32 %26, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %2
  %35 = load %struct.mwifiex_tx_pause_tlv*, %struct.mwifiex_tx_pause_tlv** %5, align 8
  %36 = getelementptr inbounds %struct.mwifiex_tx_pause_tlv, %struct.mwifiex_tx_pause_tlv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %41 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  br label %45

42:                                               ; preds = %34
  %43 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %44 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %39
  br label %99

46:                                               ; preds = %2
  %47 = load %struct.mwifiex_tx_pause_tlv*, %struct.mwifiex_tx_pause_tlv** %5, align 8
  %48 = getelementptr inbounds %struct.mwifiex_tx_pause_tlv, %struct.mwifiex_tx_pause_tlv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @is_multicast_ether_addr(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %54 = load %struct.mwifiex_tx_pause_tlv*, %struct.mwifiex_tx_pause_tlv** %5, align 8
  %55 = getelementptr inbounds %struct.mwifiex_tx_pause_tlv, %struct.mwifiex_tx_pause_tlv* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.mwifiex_tx_pause_tlv*, %struct.mwifiex_tx_pause_tlv** %5, align 8
  %58 = getelementptr inbounds %struct.mwifiex_tx_pause_tlv, %struct.mwifiex_tx_pause_tlv* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @mwifiex_update_ralist_tx_pause(%struct.mwifiex_private* %53, i32 %56, i64 %59)
  br label %98

61:                                               ; preds = %46
  %62 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %63 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %62, i32 0, i32 1
  %64 = call i32 @spin_lock_bh(i32* %63)
  %65 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %66 = load %struct.mwifiex_tx_pause_tlv*, %struct.mwifiex_tx_pause_tlv** %5, align 8
  %67 = getelementptr inbounds %struct.mwifiex_tx_pause_tlv, %struct.mwifiex_tx_pause_tlv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private* %65, i32 %68)
  store %struct.mwifiex_sta_node* %69, %struct.mwifiex_sta_node** %6, align 8
  %70 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %71 = icmp ne %struct.mwifiex_sta_node* %70, null
  br i1 %71, label %72, label %94

72:                                               ; preds = %61
  %73 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %74 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.mwifiex_tx_pause_tlv*, %struct.mwifiex_tx_pause_tlv** %5, align 8
  %77 = getelementptr inbounds %struct.mwifiex_tx_pause_tlv, %struct.mwifiex_tx_pause_tlv* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %72
  %81 = load %struct.mwifiex_tx_pause_tlv*, %struct.mwifiex_tx_pause_tlv** %5, align 8
  %82 = getelementptr inbounds %struct.mwifiex_tx_pause_tlv, %struct.mwifiex_tx_pause_tlv* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %85 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %87 = load %struct.mwifiex_tx_pause_tlv*, %struct.mwifiex_tx_pause_tlv** %5, align 8
  %88 = getelementptr inbounds %struct.mwifiex_tx_pause_tlv, %struct.mwifiex_tx_pause_tlv* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.mwifiex_tx_pause_tlv*, %struct.mwifiex_tx_pause_tlv** %5, align 8
  %91 = getelementptr inbounds %struct.mwifiex_tx_pause_tlv, %struct.mwifiex_tx_pause_tlv* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @mwifiex_update_ralist_tx_pause(%struct.mwifiex_private* %86, i32 %89, i64 %92)
  br label %94

94:                                               ; preds = %80, %72, %61
  %95 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %96 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %95, i32 0, i32 1
  %97 = call i32 @spin_unlock_bh(i32* %96)
  br label %98

98:                                               ; preds = %94, %52
  br label %99

99:                                               ; preds = %98, %45
  ret void
}

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, i32, i64, i32) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @mwifiex_update_ralist_tx_pause(%struct.mwifiex_private*, i32, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
