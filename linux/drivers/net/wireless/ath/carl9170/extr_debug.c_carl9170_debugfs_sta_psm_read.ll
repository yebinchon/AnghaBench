; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_debug.c_carl9170_debugfs_sta_psm_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_debug.c_carl9170_debugfs_sta_psm_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"psm state: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"FORCE CAM\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"PSM\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"CAM\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"sleep duration: %d ms.\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"last power-state transition: %d ms ago.\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [38 x i8] c"last CAM->PSM transition: %d ms ago.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ar9170*, i8*, i64, i32*)* @carl9170_debugfs_sta_psm_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @carl9170_debugfs_sta_psm_read(%struct.ar9170* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.ar9170*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %14 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %27

19:                                               ; preds = %4
  %20 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %21 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  br label %27

27:                                               ; preds = %19, %18
  %28 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %18 ], [ %26, %19 ]
  %29 = call i32 @ADD(i8* %9, i32 %11, i64 %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i8*, i8** %6, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %35 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @ADD(i8* %30, i32 %32, i64 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %37)
  %39 = load i8*, i8** %6, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @jiffies, align 8
  %44 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %45 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %43, %47
  %49 = call i8* @jiffies_to_msecs(i64 %48)
  %50 = call i32 @ADD(i8* %39, i32 %41, i64 %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %49)
  %51 = load i8*, i8** %6, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @jiffies, align 8
  %56 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %57 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %55, %59
  %61 = call i8* @jiffies_to_msecs(i64 %60)
  %62 = call i32 @ADD(i8* %51, i32 %53, i64 %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8* %61)
  %63 = load i8*, i8** %6, align 8
  ret i8* %63
}

declare dso_local i32 @ADD(i8*, i32, i64, i8*, i8*) #1

declare dso_local i8* @jiffies_to_msecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
