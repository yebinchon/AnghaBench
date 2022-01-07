; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_antsel.c_brcms_c_antsel_id2antcfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_antsel.c_brcms_c_antsel_id2antcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.antsel_info = type { i64 }

@ANT_SELCFG_DEF_2x2 = common dso_local global i32 0, align 4
@ANTSEL_2x4 = common dso_local global i64 0, align 8
@ANTSEL_2x3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.antsel_info*, i32)* @brcms_c_antsel_id2antcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_c_antsel_id2antcfg(%struct.antsel_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.antsel_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.antsel_info* %0, %struct.antsel_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @ANT_SELCFG_DEF_2x2, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %9 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ANTSEL_2x4, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 2
  %16 = shl i32 %15, 3
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 1
  %19 = add nsw i32 %18, 2
  %20 = or i32 %16, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %40

22:                                               ; preds = %2
  %23 = load %struct.antsel_info*, %struct.antsel_info** %4, align 8
  %24 = getelementptr inbounds %struct.antsel_info, %struct.antsel_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ANTSEL_2x3, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 2
  %31 = shl i32 %30, 4
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 1
  %34 = add nsw i32 %33, 1
  %35 = or i32 %31, %34
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %40

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %28, %13
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
