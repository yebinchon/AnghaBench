; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.c_mwifiex_create_ba_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.c_mwifiex_create_ba_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, i32 }
%struct.mwifiex_tx_ba_stream_tbl = type { i32, i32, i32, i32 }
%struct.mwifiex_ra_list_tbl = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_create_ba_tbl(%struct.mwifiex_private* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mwifiex_tx_ba_stream_tbl*, align 8
  %10 = alloca %struct.mwifiex_ra_list_tbl*, align 8
  %11 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @mwifiex_get_ba_tbl(%struct.mwifiex_private* %12, i32 %13, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %66, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.mwifiex_tx_ba_stream_tbl* @kzalloc(i32 16, i32 %18)
  store %struct.mwifiex_tx_ba_stream_tbl* %19, %struct.mwifiex_tx_ba_stream_tbl** %9, align 8
  %20 = load %struct.mwifiex_tx_ba_stream_tbl*, %struct.mwifiex_tx_ba_stream_tbl** %9, align 8
  %21 = icmp ne %struct.mwifiex_tx_ba_stream_tbl* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %66

23:                                               ; preds = %17
  %24 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @mwifiex_wmm_downgrade_tid(%struct.mwifiex_private* %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = call %struct.mwifiex_ra_list_tbl* @mwifiex_wmm_get_ralist_node(%struct.mwifiex_private* %27, i32 %28, i32* %29)
  store %struct.mwifiex_ra_list_tbl* %30, %struct.mwifiex_ra_list_tbl** %10, align 8
  %31 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %10, align 8
  %32 = icmp ne %struct.mwifiex_ra_list_tbl* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %10, align 8
  %36 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %10, align 8
  %38 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %33, %23
  %40 = load %struct.mwifiex_tx_ba_stream_tbl*, %struct.mwifiex_tx_ba_stream_tbl** %9, align 8
  %41 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, %struct.mwifiex_tx_ba_stream_tbl* %40, i32 0, i32 2
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.mwifiex_tx_ba_stream_tbl*, %struct.mwifiex_tx_ba_stream_tbl** %9, align 8
  %45 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, %struct.mwifiex_tx_ba_stream_tbl* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.mwifiex_tx_ba_stream_tbl*, %struct.mwifiex_tx_ba_stream_tbl** %9, align 8
  %48 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, %struct.mwifiex_tx_ba_stream_tbl* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.mwifiex_tx_ba_stream_tbl*, %struct.mwifiex_tx_ba_stream_tbl** %9, align 8
  %50 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, %struct.mwifiex_tx_ba_stream_tbl* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @ETH_ALEN, align 4
  %54 = call i32 @memcpy(i32 %51, i32* %52, i32 %53)
  %55 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %56 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %55, i32 0, i32 0
  %57 = call i32 @spin_lock_bh(i32* %56)
  %58 = load %struct.mwifiex_tx_ba_stream_tbl*, %struct.mwifiex_tx_ba_stream_tbl** %9, align 8
  %59 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, %struct.mwifiex_tx_ba_stream_tbl* %58, i32 0, i32 2
  %60 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %61 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %60, i32 0, i32 1
  %62 = call i32 @list_add_tail(i32* %59, i32* %61)
  %63 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %64 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock_bh(i32* %64)
  br label %66

66:                                               ; preds = %22, %39, %4
  ret void
}

declare dso_local i32 @mwifiex_get_ba_tbl(%struct.mwifiex_private*, i32, i32*) #1

declare dso_local %struct.mwifiex_tx_ba_stream_tbl* @kzalloc(i32, i32) #1

declare dso_local i32 @mwifiex_wmm_downgrade_tid(%struct.mwifiex_private*, i32) #1

declare dso_local %struct.mwifiex_ra_list_tbl* @mwifiex_wmm_get_ralist_node(%struct.mwifiex_private*, i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
