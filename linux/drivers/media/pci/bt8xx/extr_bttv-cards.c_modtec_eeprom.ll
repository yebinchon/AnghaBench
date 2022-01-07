; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_modtec_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_modtec_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@eeprom_data = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"Temic 4066 FY5\00", align 1
@TUNER_TEMIC_4066FY5_PAL_I = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"%d: Modtec: Tuner autodetected by eeprom: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Alps TSBB5\00", align 1
@TUNER_ALPS_TSBB5_PAL_I = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Philips FM1246\00", align 1
@TUNER_PHILIPS_NTSC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"%d: Modtec: Unknown TunerString: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*)* @modtec_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @modtec_eeprom(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %3 = load i32*, i32** @eeprom_data, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 30
  %5 = call i64 @strncmp(i32* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 14)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load i32, i32* @TUNER_TEMIC_4066FY5_PAL_I, align 4
  %9 = load %struct.bttv*, %struct.bttv** %2, align 8
  %10 = getelementptr inbounds %struct.bttv, %struct.bttv* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.bttv*, %struct.bttv** %2, align 8
  %12 = getelementptr inbounds %struct.bttv, %struct.bttv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** @eeprom_data, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 30
  %17 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32* %16)
  br label %60

18:                                               ; preds = %1
  %19 = load i32*, i32** @eeprom_data, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 30
  %21 = call i64 @strncmp(i32* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i32, i32* @TUNER_ALPS_TSBB5_PAL_I, align 4
  %25 = load %struct.bttv*, %struct.bttv** %2, align 8
  %26 = getelementptr inbounds %struct.bttv, %struct.bttv* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.bttv*, %struct.bttv** %2, align 8
  %28 = getelementptr inbounds %struct.bttv, %struct.bttv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** @eeprom_data, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 30
  %33 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32* %32)
  br label %59

34:                                               ; preds = %18
  %35 = load i32*, i32** @eeprom_data, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 30
  %37 = call i64 @strncmp(i32* %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 14)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load i32, i32* @TUNER_PHILIPS_NTSC, align 4
  %41 = load %struct.bttv*, %struct.bttv** %2, align 8
  %42 = getelementptr inbounds %struct.bttv, %struct.bttv* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.bttv*, %struct.bttv** %2, align 8
  %44 = getelementptr inbounds %struct.bttv, %struct.bttv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** @eeprom_data, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 30
  %49 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32* %48)
  br label %58

50:                                               ; preds = %34
  %51 = load %struct.bttv*, %struct.bttv** %2, align 8
  %52 = getelementptr inbounds %struct.bttv, %struct.bttv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** @eeprom_data, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 30
  %57 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %54, i32* %56)
  br label %58

58:                                               ; preds = %50, %39
  br label %59

59:                                               ; preds = %58, %23
  br label %60

60:                                               ; preds = %59, %7
  ret void
}

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
