; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n_rxreorder.c_mwifiex_del_ba_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n_rxreorder.c_mwifiex_del_ba_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, i32 }
%struct.mwifiex_rx_reorder_tbl = type { i32 }
%struct.mwifiex_tx_ba_stream_tbl = type { i32 }
%struct.mwifiex_ra_list_tbl = type { i32, i32 }

@TYPE_DELBA_RECEIVE = common dso_local global i64 0, align 8
@EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"event: DELBA: %pM tid=%d initiator=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"event: TID, TA not found in table\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"event: TID, RA not found in table\0A\00", align 1
@BA_SETUP_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_del_ba_tbl(%struct.mwifiex_private* %0, i32 %1, i64* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.mwifiex_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mwifiex_rx_reorder_tbl*, align 8
  %12 = alloca %struct.mwifiex_tx_ba_stream_tbl*, align 8
  %13 = alloca %struct.mwifiex_ra_list_tbl*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @TYPE_DELBA_RECEIVE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %14, align 8
  br label %31

25:                                               ; preds = %5
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 0, i32 1
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %14, align 8
  br label %31

31:                                               ; preds = %25, %19
  %32 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %33 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @EVENT, align 4
  %36 = load i64*, i64** %8, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %34, i32 %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64* %36, i32 %37, i32 %38)
  %40 = load i64, i64* %14, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %31
  %43 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i64*, i64** %8, align 8
  %46 = call %struct.mwifiex_rx_reorder_tbl* @mwifiex_11n_get_rx_reorder_tbl(%struct.mwifiex_private* %43, i32 %44, i64* %45)
  store %struct.mwifiex_rx_reorder_tbl* %46, %struct.mwifiex_rx_reorder_tbl** %11, align 8
  %47 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %11, align 8
  %48 = icmp ne %struct.mwifiex_rx_reorder_tbl* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %42
  %50 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %51 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @EVENT, align 4
  %54 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %52, i32 %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %98

55:                                               ; preds = %42
  %56 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %57 = load %struct.mwifiex_rx_reorder_tbl*, %struct.mwifiex_rx_reorder_tbl** %11, align 8
  %58 = call i32 @mwifiex_del_rx_reorder_entry(%struct.mwifiex_private* %56, %struct.mwifiex_rx_reorder_tbl* %57)
  br label %98

59:                                               ; preds = %31
  %60 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i64*, i64** %8, align 8
  %63 = call %struct.mwifiex_tx_ba_stream_tbl* @mwifiex_get_ba_tbl(%struct.mwifiex_private* %60, i32 %61, i64* %62)
  store %struct.mwifiex_tx_ba_stream_tbl* %63, %struct.mwifiex_tx_ba_stream_tbl** %12, align 8
  %64 = load %struct.mwifiex_tx_ba_stream_tbl*, %struct.mwifiex_tx_ba_stream_tbl** %12, align 8
  %65 = icmp ne %struct.mwifiex_tx_ba_stream_tbl* %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %59
  %67 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %68 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @EVENT, align 4
  %71 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %69, i32 %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %98

72:                                               ; preds = %59
  %73 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @mwifiex_wmm_downgrade_tid(%struct.mwifiex_private* %73, i32 %74)
  store i32 %75, i32* %15, align 4
  %76 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %77 = load i32, i32* %15, align 4
  %78 = load i64*, i64** %8, align 8
  %79 = call %struct.mwifiex_ra_list_tbl* @mwifiex_wmm_get_ralist_node(%struct.mwifiex_private* %76, i32 %77, i64* %78)
  store %struct.mwifiex_ra_list_tbl* %79, %struct.mwifiex_ra_list_tbl** %13, align 8
  %80 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %13, align 8
  %81 = icmp ne %struct.mwifiex_ra_list_tbl* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %72
  %83 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %13, align 8
  %84 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %83, i32 0, i32 0
  store i32 0, i32* %84, align 4
  %85 = load i32, i32* @BA_SETUP_NONE, align 4
  %86 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %13, align 8
  %87 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %82, %72
  %89 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %90 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %89, i32 0, i32 0
  %91 = call i32 @spin_lock_bh(i32* %90)
  %92 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %93 = load %struct.mwifiex_tx_ba_stream_tbl*, %struct.mwifiex_tx_ba_stream_tbl** %12, align 8
  %94 = call i32 @mwifiex_11n_delete_tx_ba_stream_tbl_entry(%struct.mwifiex_private* %92, %struct.mwifiex_tx_ba_stream_tbl* %93)
  %95 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %96 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %95, i32 0, i32 0
  %97 = call i32 @spin_unlock_bh(i32* %96)
  br label %98

98:                                               ; preds = %49, %66, %88, %55
  ret void
}

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, ...) #1

declare dso_local %struct.mwifiex_rx_reorder_tbl* @mwifiex_11n_get_rx_reorder_tbl(%struct.mwifiex_private*, i32, i64*) #1

declare dso_local i32 @mwifiex_del_rx_reorder_entry(%struct.mwifiex_private*, %struct.mwifiex_rx_reorder_tbl*) #1

declare dso_local %struct.mwifiex_tx_ba_stream_tbl* @mwifiex_get_ba_tbl(%struct.mwifiex_private*, i32, i64*) #1

declare dso_local i32 @mwifiex_wmm_downgrade_tid(%struct.mwifiex_private*, i32) #1

declare dso_local %struct.mwifiex_ra_list_tbl* @mwifiex_wmm_get_ralist_node(%struct.mwifiex_private*, i32, i64*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @mwifiex_11n_delete_tx_ba_stream_tbl_entry(%struct.mwifiex_private*, %struct.mwifiex_tx_ba_stream_tbl*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
