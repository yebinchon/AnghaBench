; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_avermedia_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_avermedia_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@eeprom_data = common dso_local global i32* null, align 8
@tuner_0_table = common dso_local global i32* null, align 8
@tuner_1_table = common dso_local global i32* null, align 8
@TUNER_LG_NTSC_NEW_TAPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%d: Avermedia eeprom[0x%02x%02x]: tuner=\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Unknown type\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c" radio:%s remote control:%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*)* @avermedia_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avermedia_eeprom(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** @eeprom_data, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 65
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 7
  store i32 %10, i32* %3, align 4
  %11 = load i32*, i32** @eeprom_data, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 65
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 24
  %15 = ashr i32 %14, 3
  store i32 %15, i32* %4, align 4
  %16 = load i32*, i32** @eeprom_data, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 66
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 240
  %20 = ashr i32 %19, 4
  store i32 %20, i32* %5, align 4
  %21 = load i32*, i32** @eeprom_data, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 66
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 1
  %25 = load %struct.bttv*, %struct.bttv** %2, align 8
  %26 = getelementptr inbounds %struct.bttv, %struct.bttv* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %42

32:                                               ; preds = %29, %1
  %33 = load i32, i32* %5, align 4
  %34 = icmp sle i32 %33, 10
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32*, i32** @tuner_0_table, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %35, %32
  br label %42

42:                                               ; preds = %41, %29
  %43 = load i32, i32* %3, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = icmp sle i32 %46, 9
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32*, i32** @tuner_1_table, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %48, %45
  br label %55

55:                                               ; preds = %54, %42
  %56 = load i32, i32* %3, align 4
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* %5, align 4
  %60 = icmp eq i32 %59, 9
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @TUNER_LG_NTSC_NEW_TAPC, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %61, %58
  br label %64

64:                                               ; preds = %63, %55
  %65 = load %struct.bttv*, %struct.bttv** %2, align 8
  %66 = getelementptr inbounds %struct.bttv, %struct.bttv* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** @eeprom_data, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 65
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** @eeprom_data, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 66
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %71, i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %64
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.bttv*, %struct.bttv** %2, align 8
  %81 = getelementptr inbounds %struct.bttv, %struct.bttv* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %86

84:                                               ; preds = %64
  %85 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %78
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %91 = load %struct.bttv*, %struct.bttv** %2, align 8
  %92 = getelementptr inbounds %struct.bttv, %struct.bttv* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %97 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %90, i8* %96)
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
