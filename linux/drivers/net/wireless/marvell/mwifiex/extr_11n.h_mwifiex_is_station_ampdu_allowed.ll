; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.h_mwifiex_is_station_ampdu_allowed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.h_mwifiex_is_station_ampdu_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.mwifiex_ra_list_tbl = type { i32 }
%struct.mwifiex_sta_node = type { i64* }

@BA_STREAM_NOT_ALLOWED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.mwifiex_ra_list_tbl*, i32)* @mwifiex_is_station_ampdu_allowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_is_station_ampdu_allowed(%struct.mwifiex_private* %0, %struct.mwifiex_ra_list_tbl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.mwifiex_ra_list_tbl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mwifiex_sta_node*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.mwifiex_ra_list_tbl* %1, %struct.mwifiex_ra_list_tbl** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %10 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %11 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private* %9, i32 %12)
  store %struct.mwifiex_sta_node* %13, %struct.mwifiex_sta_node** %8, align 8
  %14 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %8, align 8
  %15 = icmp ne %struct.mwifiex_sta_node* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %33

21:                                               ; preds = %3
  %22 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %8, align 8
  %23 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BA_STREAM_NOT_ALLOWED, align 8
  %30 = icmp ne i64 %28, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %21, %20
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
