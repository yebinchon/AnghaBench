; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_flyvideo_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_flyvideo_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UNSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%d: FlyVideo_gpio: unknown tuner type\0A\00", align 1
@TUNER_ABSENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"%d: FlyVideo Radio=%s RemoteControl=%s Tuner=%d gpio=0x%06x\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"%d: FlyVideo  LR90=%s tda9821/tda9820=%s capture_only=%s\0A\00", align 1
@lt9415_audio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*)* @flyvideo_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flyvideo_gpio(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %11 = load i32, i32* @UNSET, align 4
  store i32 %11, i32* %9, align 4
  %12 = call i32 @gpio_inout(i32 16777215, i32 0)
  %13 = call i32 @udelay(i32 8)
  %14 = call i32 (...) @gpio_read()
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 983040
  %17 = ashr i32 %16, 16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %24 [
    i32 0, label %19
    i32 2, label %20
    i32 4, label %21
    i32 6, label %22
    i32 12, label %23
  ]

19:                                               ; preds = %1
  store i32 2, i32* %9, align 4
  br label %30

20:                                               ; preds = %1
  store i32 39, i32* %9, align 4
  br label %30

21:                                               ; preds = %1
  store i32 5, i32* %9, align 4
  br label %30

22:                                               ; preds = %1
  store i32 37, i32* %9, align 4
  br label %30

23:                                               ; preds = %1
  store i32 3, i32* %9, align 4
  br label %30

24:                                               ; preds = %1
  %25 = load %struct.bttv*, %struct.bttv** %2, align 8
  %26 = getelementptr inbounds %struct.bttv, %struct.bttv* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %24, %23, %22, %21, %20, %19
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, 8388608
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, 4194304
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, 32768
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, 16384
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, 8192
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %30
  %53 = load i32, i32* @TUNER_ABSENT, align 4
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %52, %30
  %55 = load %struct.bttv*, %struct.bttv** %2, align 8
  %56 = getelementptr inbounds %struct.bttv, %struct.bttv* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %58, i8* %62, i8* %66, i32 %67, i32 %68)
  %70 = load %struct.bttv*, %struct.bttv** %2, align 8
  %71 = getelementptr inbounds %struct.bttv, %struct.bttv* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %86 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %73, i8* %77, i8* %81, i8* %85)
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @UNSET, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %54
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.bttv*, %struct.bttv** %2, align 8
  %93 = getelementptr inbounds %struct.bttv, %struct.bttv* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %54
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.bttv*, %struct.bttv** %2, align 8
  %97 = getelementptr inbounds %struct.bttv, %struct.bttv* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i32, i32* @lt9415_audio, align 4
  %102 = load %struct.bttv*, %struct.bttv** %2, align 8
  %103 = getelementptr inbounds %struct.bttv, %struct.bttv* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %100, %94
  ret void
}

declare dso_local i32 @gpio_inout(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gpio_read(...) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
