; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_cck_plcp_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_cck_plcp_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@D11B_PLCP_SIGNAL_LE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"brcms_c_cck_plcp_set: unsupported rate %d\0A\00", align 1
@D11B_PLCP_SIGNAL_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_c_info*, i32, i32, i32*)* @brcms_c_cck_plcp_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_cck_plcp_set(%struct.brcms_c_info* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.brcms_c_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %55 [
    i32 130, label %12
    i32 129, label %15
    i32 128, label %18
    i32 131, label %32
  ]

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = shl i32 %13, 3
  store i32 %14, i32* %9, align 4
  br label %65

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = shl i32 %16, 2
  store i32 %17, i32* %9, align 4
  br label %65

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = shl i32 %19, 4
  %21 = sdiv i32 %20, 11
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 %22, 4
  %24 = load i32, i32* %9, align 4
  %25 = mul nsw i32 %24, 11
  %26 = sub nsw i32 %23, %25
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %28, %18
  br label %65

32:                                               ; preds = %4
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 %33, 3
  %35 = sdiv i32 %34, 11
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = shl i32 %36, 3
  %38 = load i32, i32* %9, align 4
  %39 = mul nsw i32 %38, 11
  %40 = sub nsw i32 %37, %39
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %32
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %45, 11
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 %47, 3
  %49 = sub nsw i32 %46, %48
  %50 = icmp sge i32 %49, 8
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @D11B_PLCP_SIGNAL_LE, align 4
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %51, %42
  br label %54

54:                                               ; preds = %53, %32
  br label %65

55:                                               ; preds = %4
  %56 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %57 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @brcms_err(i32 %60, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %61)
  store i32 130, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = shl i32 %63, 3
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %55, %54, %31, %15, %12
  %66 = load i32, i32* %6, align 4
  %67 = mul nsw i32 %66, 5
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @D11B_PLCP_SIGNAL_LOCKED, align 4
  %72 = or i32 %70, %71
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %75, 255
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %9, align 4
  %80 = ashr i32 %79, 8
  %81 = and i32 %80, 255
  %82 = load i32*, i32** %8, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  store i32 %81, i32* %83, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  store i32 0, i32* %85, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 5
  store i32 0, i32* %87, align 4
  ret void
}

declare dso_local i32 @brcms_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
