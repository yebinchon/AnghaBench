; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_debug.c_carl9170_debugfs_phy_noise_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_debug.c_carl9170_debugfs_phy_noise_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32* }

@.str = private unnamed_addr constant [40 x i8] c"Chain 0: %10d dBm, ext. chan.:%10d dBm\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Chain 2: %10d dBm, ext. chan.:%10d dBm\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ar9170*, i8*, i64, i32*)* @carl9170_debugfs_phy_noise_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @carl9170_debugfs_phy_noise_read(%struct.ar9170* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ar9170*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %12 = call i32 @carl9170_get_noisefloor(%struct.ar9170* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32, i32* %10, align 4
  %17 = load i32*, i32** %9, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i8*, i8** %7, align 8
  store i8* %18, i8** %5, align 8
  br label %51

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %25 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %30 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ADD(i8* %20, i32 %22, i64 %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %33)
  %35 = load i8*, i8** %7, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %40 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ar9170*, %struct.ar9170** %6, align 8
  %45 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ADD(i8* %35, i32 %37, i64 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %48)
  %50 = load i8*, i8** %7, align 8
  store i8* %50, i8** %5, align 8
  br label %51

51:                                               ; preds = %19, %15
  %52 = load i8*, i8** %5, align 8
  ret i8* %52
}

declare dso_local i32 @carl9170_get_noisefloor(%struct.ar9170*) #1

declare dso_local i32 @ADD(i8*, i32, i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
