; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_print_bcon_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_print_bcon_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_beacon_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"head     \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"tail     \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"BCON IE  \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"PROBE    \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"PROBE IE \00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"ASSOC IE \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfg80211_beacon_data*)* @wil_print_bcon_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_print_bcon_data(%struct.cfg80211_beacon_data* %0) #0 {
  %2 = alloca %struct.cfg80211_beacon_data*, align 8
  store %struct.cfg80211_beacon_data* %0, %struct.cfg80211_beacon_data** %2, align 8
  %3 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %4 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %2, align 8
  %5 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %4, i32 0, i32 11
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %2, align 8
  %8 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %7, i32 0, i32 10
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @wil_hex_dump_misc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %3, i32 16, i32 1, i32 %6, i32 %9, i32 1)
  %11 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %12 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %2, align 8
  %13 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %2, align 8
  %16 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @wil_hex_dump_misc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 16, i32 1, i32 %14, i32 %17, i32 1)
  %19 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %20 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %2, align 8
  %21 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %2, align 8
  %24 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @wil_hex_dump_misc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %19, i32 16, i32 1, i32 %22, i32 %25, i32 1)
  %27 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %28 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %2, align 8
  %29 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %2, align 8
  %32 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @wil_hex_dump_misc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %27, i32 16, i32 1, i32 %30, i32 %33, i32 1)
  %35 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %36 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %2, align 8
  %37 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %2, align 8
  %40 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @wil_hex_dump_misc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %35, i32 16, i32 1, i32 %38, i32 %41, i32 1)
  %43 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %44 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %2, align 8
  %45 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %2, align 8
  %48 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @wil_hex_dump_misc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %43, i32 16, i32 1, i32 %46, i32 %49, i32 1)
  ret void
}

declare dso_local i32 @wil_hex_dump_misc(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
