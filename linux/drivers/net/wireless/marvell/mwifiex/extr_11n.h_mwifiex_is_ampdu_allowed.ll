; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.h_mwifiex_is_ampdu_allowed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.h_mwifiex_is_ampdu_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mwifiex_ra_list_tbl = type { i64, i32 }

@MWIFIEX_BSS_ROLE_UAP = common dso_local global i64 0, align 8
@BA_STREAM_NOT_ALLOWED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.mwifiex_ra_list_tbl*, i32)* @mwifiex_is_ampdu_allowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_is_ampdu_allowed(%struct.mwifiex_private* %0, %struct.mwifiex_ra_list_tbl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.mwifiex_ra_list_tbl*, align 8
  %7 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.mwifiex_ra_list_tbl* %1, %struct.mwifiex_ra_list_tbl** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %9 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @is_broadcast_ether_addr(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %47

14:                                               ; preds = %3
  %15 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %16 = call i64 @GET_BSS_ROLE(%struct.mwifiex_private* %15)
  %17 = load i64, i64* @MWIFIEX_BSS_ROLE_UAP, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %21 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @mwifiex_is_station_ampdu_allowed(%struct.mwifiex_private* %20, %struct.mwifiex_ra_list_tbl* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %47

24:                                               ; preds = %14
  %25 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %26 = getelementptr inbounds %struct.mwifiex_ra_list_tbl, %struct.mwifiex_ra_list_tbl* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %31 = load %struct.mwifiex_ra_list_tbl*, %struct.mwifiex_ra_list_tbl** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @mwifiex_is_station_ampdu_allowed(%struct.mwifiex_private* %30, %struct.mwifiex_ra_list_tbl* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %47

34:                                               ; preds = %24
  %35 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %36 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BA_STREAM_NOT_ALLOWED, align 8
  %44 = icmp ne i64 %42, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %34, %29, %19, %13
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i64 @is_broadcast_ether_addr(i32) #1

declare dso_local i64 @GET_BSS_ROLE(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_is_station_ampdu_allowed(%struct.mwifiex_private*, %struct.mwifiex_ra_list_tbl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
