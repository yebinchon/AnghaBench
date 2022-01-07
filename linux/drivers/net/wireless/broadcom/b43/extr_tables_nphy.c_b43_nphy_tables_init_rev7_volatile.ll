; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_nphy.c_b43_nphy_tables_init_rev7_volatile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_nphy.c_b43_nphy_tables_init_rev7_volatile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ssb_sprom* }
%struct.ssb_sprom = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@__const.b43_nphy_tables_init_rev7_volatile.antswlut0_offsets = private unnamed_addr constant [3 x i32] [i32 0, i32 4, i32 8], align 4
@__const.b43_nphy_tables_init_rev7_volatile.antswlut0_values = private unnamed_addr constant [2 x [3 x i32]] [[3 x i32] [i32 2, i32 18, i32 8], [3 x i32] [i32 2, i32 24, i32 2]], align 16
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Unsupported antswlut: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_tables_init_rev7_volatile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_tables_init_rev7_volatile(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.ssb_sprom*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca [2 x [3 x i32]], align 16
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.ssb_sprom*, %struct.ssb_sprom** %13, align 8
  store %struct.ssb_sprom* %14, %struct.ssb_sprom** %3, align 8
  %15 = bitcast [3 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast ([3 x i32]* @__const.b43_nphy_tables_init_rev7_volatile.antswlut0_offsets to i8*), i64 12, i1 false)
  %16 = bitcast [2 x [3 x i32]]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([2 x [3 x i32]]* @__const.b43_nphy_tables_init_rev7_volatile.antswlut0_values to i8*), i64 24, i1 false)
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @b43_current_band(i32 %19)
  %21 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %25 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  br label %35

29:                                               ; preds = %1
  %30 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %31 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %29, %23
  %36 = load i32, i32* %4, align 4
  switch i32 %36, label %78 [
    i32 0, label %37
  ]

37:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %74, %37
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %77

41:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %70, %41
  %43 = load i32, i32* %7, align 4
  %44 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %9, i64 0, i64 0
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %44, i64 0, i64 0
  %46 = call i32 @ARRAY_SIZE(i32* %45)
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %42
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 32, i32 0
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @B43_NTAB8(i32 9, i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %9, i64 0, i64 %63
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %64, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @b43_ntab_write(%struct.b43_wldev* %59, i32 %61, i32 %68)
  br label %70

70:                                               ; preds = %48
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %42

73:                                               ; preds = %42
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %38

77:                                               ; preds = %38
  br label %84

78:                                               ; preds = %35
  %79 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %80 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @b43err(i32 %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %78, %77
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @b43_current_band(i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @b43_ntab_write(%struct.b43_wldev*, i32, i32) #2

declare dso_local i32 @B43_NTAB8(i32, i32) #2

declare dso_local i32 @b43err(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
