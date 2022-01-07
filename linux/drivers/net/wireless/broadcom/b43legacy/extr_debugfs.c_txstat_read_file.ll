; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_debugfs.c_txstat_read_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_debugfs.c_txstat_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.b43legacy_txstatus_log }
%struct.b43legacy_txstatus_log = type { i32, i32, %struct.b43legacy_txstatus* }
%struct.b43legacy_txstatus = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"Nothing transmitted, yet\0A\00", align 1
@.str.1 = private unnamed_addr constant [157 x i8] c"b43legacy TX status reports:\0A\0Aindex | cookie | seq | phy_stat | frame_count | rts_count | supp_reason | pm_indicated | intermediate | for_ampdu | acked\0A---\0A\00", align 1
@B43legacy_NR_LOGGED_TXSTATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"%03d | 0x%04X | 0x%04X | 0x%02X | 0x%X | 0x%X | %u | %u | %u | %u | %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_wldev*, i8*, i64)* @txstat_read_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txstat_read_file(%struct.b43legacy_wldev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.b43legacy_wldev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.b43legacy_txstatus_log*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.b43legacy_txstatus*, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %14 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.b43legacy_txstatus_log* %16, %struct.b43legacy_txstatus_log** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.b43legacy_txstatus_log*, %struct.b43legacy_txstatus_log** %7, align 8
  %18 = getelementptr inbounds %struct.b43legacy_txstatus_log, %struct.b43legacy_txstatus_log* %17, i32 0, i32 1
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.b43legacy_txstatus_log*, %struct.b43legacy_txstatus_log** %7, align 8
  %22 = getelementptr inbounds %struct.b43legacy_txstatus_log, %struct.b43legacy_txstatus_log* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = call i32 (i8*, ...) @fappend(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %95

27:                                               ; preds = %3
  %28 = call i32 (i8*, ...) @fappend(i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.b43legacy_txstatus_log*, %struct.b43legacy_txstatus_log** %7, align 8
  %30 = getelementptr inbounds %struct.b43legacy_txstatus_log, %struct.b43legacy_txstatus_log* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %27, %91
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @B43legacy_NR_LOGGED_TXSTATUS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %37, %33
  %39 = load %struct.b43legacy_txstatus_log*, %struct.b43legacy_txstatus_log** %7, align 8
  %40 = getelementptr inbounds %struct.b43legacy_txstatus_log, %struct.b43legacy_txstatus_log* %39, i32 0, i32 2
  %41 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %41, i64 %43
  store %struct.b43legacy_txstatus* %44, %struct.b43legacy_txstatus** %12, align 8
  %45 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %12, align 8
  %46 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %45, i32 0, i32 9
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %84

49:                                               ; preds = %38
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %12, align 8
  %52 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %51, i32 0, i32 9
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %12, align 8
  %55 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %12, align 8
  %58 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %12, align 8
  %61 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %12, align 8
  %64 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %12, align 8
  %67 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %12, align 8
  %70 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %12, align 8
  %73 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %12, align 8
  %76 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %12, align 8
  %79 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i8*, ...) @fappend(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %50, i64 %53, i32 %56, i32 %59, i32 %62, i32 %65, i32 %68, i32 %71, i32 %74, i32 %77, i32 %80)
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %49, %38
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.b43legacy_txstatus_log*, %struct.b43legacy_txstatus_log** %7, align 8
  %87 = getelementptr inbounds %struct.b43legacy_txstatus_log, %struct.b43legacy_txstatus_log* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %94

91:                                               ; preds = %84
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %33

94:                                               ; preds = %90
  br label %95

95:                                               ; preds = %94, %25
  %96 = load %struct.b43legacy_txstatus_log*, %struct.b43legacy_txstatus_log** %7, align 8
  %97 = getelementptr inbounds %struct.b43legacy_txstatus_log, %struct.b43legacy_txstatus_log* %96, i32 0, i32 1
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load i32, i32* %8, align 4
  ret i32 %100
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @fappend(i8*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
