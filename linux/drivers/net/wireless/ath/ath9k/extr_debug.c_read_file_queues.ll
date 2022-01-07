; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_debug.c_read_file_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_debug.c_read_file_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.ath_txq* }
%struct.ath_txq = type { i32 }
%struct.TYPE_3__ = type { %struct.ath_txq** }

@read_file_queues.qname = internal global [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [3 x i8] c"VO\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"VI\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"BE\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"BK\00", align 1
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"(%s):  \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"(CAB): \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @read_file_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_file_queues(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ath_softc*, align 8
  %7 = alloca %struct.ath_txq*, align 8
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ieee80211_hw* @dev_get_drvdata(i32 %11)
  store %struct.ieee80211_hw* %12, %struct.ieee80211_hw** %5, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.ath_softc*, %struct.ath_softc** %14, align 8
  store %struct.ath_softc* %15, %struct.ath_softc** %6, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %39, %2
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %22 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.ath_txq**, %struct.ath_txq*** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ath_txq*, %struct.ath_txq** %24, i64 %26
  %28 = load %struct.ath_txq*, %struct.ath_txq** %27, align 8
  store %struct.ath_txq* %28, %struct.ath_txq** %7, align 8
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i8*], [4 x i8*]* @read_file_queues.qname, i64 0, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %33)
  %35 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %36 = load %struct.ath_txq*, %struct.ath_txq** %7, align 8
  %37 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %38 = call i32 @print_queue(%struct.ath_softc* %35, %struct.ath_txq* %36, %struct.seq_file* %37)
  br label %39

39:                                               ; preds = %20
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %16

42:                                               ; preds = %16
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = call i32 @seq_puts(%struct.seq_file* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %45 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %46 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  %47 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.ath_txq*, %struct.ath_txq** %48, align 8
  %50 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %51 = call i32 @print_queue(%struct.ath_softc* %45, %struct.ath_txq* %49, %struct.seq_file* %50)
  ret i32 0
}

declare dso_local %struct.ieee80211_hw* @dev_get_drvdata(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

declare dso_local i32 @print_queue(%struct.ath_softc*, %struct.ath_txq*, %struct.seq_file*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
