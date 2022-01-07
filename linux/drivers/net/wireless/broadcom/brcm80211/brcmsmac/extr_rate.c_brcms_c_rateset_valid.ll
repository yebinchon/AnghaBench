; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_rate.c_brcms_c_rateset_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_rate.c_brcms_c_rateset_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_rateset = type { i64, i32* }

@BRCMS_RATE_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_c_rateset*, i32)* @brcms_c_rateset_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_c_rateset_valid(%struct.brcms_c_rateset* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcms_c_rateset*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.brcms_c_rateset* %0, %struct.brcms_c_rateset** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %4, align 8
  %8 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %39

16:                                               ; preds = %12
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %35, %16
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %4, align 8
  %20 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %4, align 8
  %25 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BRCMS_RATE_FLAG, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %39

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %6, align 8
  br label %17

38:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %33, %15, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
