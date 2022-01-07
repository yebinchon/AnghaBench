; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-cards.c_leadtek_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-cards.c_leadtek_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Leadtek eeprom invalid.\0A\00", align 1
@TUNER_PHILIPS_FM1236_MK3 = common dso_local global i32 0, align 4
@TUNER_PHILIPS_FM1216ME_MK3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Leadtek Winfast 2000XP Expert config: tuner=%d, eeprom[0]=0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx88_core*, i32*)* @leadtek_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @leadtek_eeprom(%struct.cx88_core* %0, i32* %1) #0 {
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca i32*, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 125
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 5
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 16
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 7
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 102
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %9, %2
  %20 = call i32 @pr_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %44

21:                                               ; preds = %14
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 6
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %30 [
    i32 19, label %25
    i32 33, label %25
    i32 49, label %25
    i32 55, label %25
    i32 61, label %25
  ]

25:                                               ; preds = %21, %21, %21, %21, %21
  %26 = load i32, i32* @TUNER_PHILIPS_FM1236_MK3, align 4
  %27 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %28 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  br label %35

30:                                               ; preds = %21
  %31 = load i32, i32* @TUNER_PHILIPS_FM1216ME_MK3, align 4
  %32 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %33 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %37 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pr_info(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %35, %19
  ret void
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
