; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_mac.c_carl9170_set_rts_cts_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_mac.c_carl9170_set_rts_cts_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@AR9170_MAC_REG_RTS_CTS_RATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carl9170_set_rts_cts_rate(%struct.ar9170* %0) #0 {
  %2 = alloca %struct.ar9170*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %2, align 8
  %5 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %6 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %5, i32 0, i32 0
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = call i64 @conf_is_ht(%struct.TYPE_8__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 474, i32* %3, align 4
  store i32 266, i32* %4, align 4
  br label %27

12:                                               ; preds = %1
  %13 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %14 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  store i32 27, i32* %3, align 4
  store i32 3, i32* %4, align 4
  br label %26

25:                                               ; preds = %12
  store i32 443, i32* %3, align 4
  store i32 267, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %24
  br label %27

27:                                               ; preds = %26, %11
  %28 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %29 = load i32, i32* @AR9170_MAC_REG_RTS_CTS_RATE, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = shl i32 %31, 16
  %33 = or i32 %30, %32
  %34 = call i32 @carl9170_write_reg(%struct.ar9170* %28, i32 %29, i32 %33)
  ret i32 %34
}

declare dso_local i64 @conf_is_ht(%struct.TYPE_8__*) #1

declare dso_local i32 @carl9170_write_reg(%struct.ar9170*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
