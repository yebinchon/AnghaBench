; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_eeprom.h_mt7615_get_channel_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_eeprom.h_mt7615_get_channel_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MT_CH_5G_JAPAN = common dso_local global i32 0, align 4
@MT_CH_5G_UNII_1 = common dso_local global i32 0, align 4
@MT_CH_5G_UNII_2A = common dso_local global i32 0, align 4
@MT_CH_5G_UNII_2E_1 = common dso_local global i32 0, align 4
@MT_CH_5G_UNII_2E_2 = common dso_local global i32 0, align 4
@MT_CH_5G_UNII_2E_3 = common dso_local global i32 0, align 4
@MT_CH_5G_UNII_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mt7615_get_channel_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7615_get_channel_group(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sge i32 %4, 184
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp sle i32 %7, 196
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = load i32, i32* @MT_CH_5G_JAPAN, align 4
  store i32 %10, i32* %2, align 4
  br label %38

11:                                               ; preds = %6, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp sle i32 %12, 48
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* @MT_CH_5G_UNII_1, align 4
  store i32 %15, i32* %2, align 4
  br label %38

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = icmp sle i32 %17, 64
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @MT_CH_5G_UNII_2A, align 4
  store i32 %20, i32* %2, align 4
  br label %38

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = icmp sle i32 %22, 114
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @MT_CH_5G_UNII_2E_1, align 4
  store i32 %25, i32* %2, align 4
  br label %38

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = icmp sle i32 %27, 144
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @MT_CH_5G_UNII_2E_2, align 4
  store i32 %30, i32* %2, align 4
  br label %38

31:                                               ; preds = %26
  %32 = load i32, i32* %3, align 4
  %33 = icmp sle i32 %32, 161
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @MT_CH_5G_UNII_2E_3, align 4
  store i32 %35, i32* %2, align 4
  br label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @MT_CH_5G_UNII_3, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %34, %29, %24, %19, %14, %9
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
