; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_is_mem_full.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_is_mem_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_MAX_FRAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*)* @is_mem_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_mem_full(%struct.ar9170* %0) #0 {
  %2 = alloca %struct.ar9170*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %2, align 8
  %3 = load i32, i32* @IEEE80211_MAX_FRAME_LEN, align 4
  %4 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %5 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @DIV_ROUND_UP(i32 %3, i32 %7)
  %9 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %10 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %9, i32 0, i32 0
  %11 = call i64 @atomic_read(i32* %10)
  %12 = icmp sgt i64 %8, %11
  %13 = zext i1 %12 to i32
  ret i32 %13
}

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
