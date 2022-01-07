; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_boot.c__mic_stepping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_boot.c__mic_stepping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cosm_device = type { i32 }
%struct.mic_device = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"A0\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"B0\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"B1\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"C0\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cosm_device*, i8*)* @_mic_stepping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mic_stepping(%struct.cosm_device* %0, i8* %1) #0 {
  %3 = alloca %struct.cosm_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mic_device*, align 8
  %6 = alloca i8*, align 8
  store %struct.cosm_device* %0, %struct.cosm_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %8 = call %struct.mic_device* @cosmdev_to_mdev(%struct.cosm_device* %7)
  store %struct.mic_device* %8, %struct.mic_device** %5, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %9 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %10 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %16 [
    i32 131, label %12
    i32 130, label %13
    i32 129, label %14
    i32 128, label %15
  ]

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %17

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %17

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %17

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %15, %14, %13, %12
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @scnprintf(i8* %18, i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %20)
  ret i32 %21
}

declare dso_local %struct.mic_device* @cosmdev_to_mdev(%struct.cosm_device*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
