; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_mac.c_ar9002_hw_get_duration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9002_mac.c_ar9002_hw_get_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ar5416_desc = type { i32, i32 }

@AR_PacketDur0 = common dso_local global i32 0, align 4
@AR_PacketDur1 = common dso_local global i32 0, align 4
@AR_PacketDur2 = common dso_local global i32 0, align 4
@AR_PacketDur3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, i8*, i32)* @ar9002_hw_get_duration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9002_hw_get_duration(%struct.ath_hw* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ar5416_desc*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = call %struct.ar5416_desc* @AR5416DESC(i8* %9)
  store %struct.ar5416_desc* %10, %struct.ar5416_desc** %8, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %40 [
    i32 0, label %12
    i32 1, label %19
    i32 2, label %26
    i32 3, label %33
  ]

12:                                               ; preds = %3
  %13 = load %struct.ar5416_desc*, %struct.ar5416_desc** %8, align 8
  %14 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @READ_ONCE(i32 %15)
  %17 = load i32, i32* @AR_PacketDur0, align 4
  %18 = call i32 @MS(i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  br label %41

19:                                               ; preds = %3
  %20 = load %struct.ar5416_desc*, %struct.ar5416_desc** %8, align 8
  %21 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @READ_ONCE(i32 %22)
  %24 = load i32, i32* @AR_PacketDur1, align 4
  %25 = call i32 @MS(i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %41

26:                                               ; preds = %3
  %27 = load %struct.ar5416_desc*, %struct.ar5416_desc** %8, align 8
  %28 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @READ_ONCE(i32 %29)
  %31 = load i32, i32* @AR_PacketDur2, align 4
  %32 = call i32 @MS(i32 %30, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %41

33:                                               ; preds = %3
  %34 = load %struct.ar5416_desc*, %struct.ar5416_desc** %8, align 8
  %35 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @READ_ONCE(i32 %36)
  %38 = load i32, i32* @AR_PacketDur3, align 4
  %39 = call i32 @MS(i32 %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %41

40:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %33, %26, %19, %12
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.ar5416_desc* @AR5416DESC(i8*) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
