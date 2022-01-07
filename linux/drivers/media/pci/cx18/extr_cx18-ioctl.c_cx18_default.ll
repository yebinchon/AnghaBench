; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_cx18_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_cx18_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cx18 = type { i32 }
%struct.TYPE_2__ = type { %struct.cx18* }

@CX18_HW_GPIO_RESET_CTRL = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@reset = common dso_local global i32 0, align 4
@CX18_GPIO_RESET_Z8F0811 = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i8*, i32, i32, i8*)* @cx18_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cx18_default(%struct.file* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.cx18*, align 8
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call %struct.TYPE_2__* @fh2id(i8* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.cx18*, %struct.cx18** %16, align 8
  store %struct.cx18* %17, %struct.cx18** %12, align 8
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %37 [
    i32 128, label %19
  ]

19:                                               ; preds = %5
  %20 = load i8*, i8** %11, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %13, align 4
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25, %19
  %30 = load %struct.cx18*, %struct.cx18** %12, align 8
  %31 = load i32, i32* @CX18_HW_GPIO_RESET_CTRL, align 4
  %32 = load i32, i32* @core, align 4
  %33 = load i32, i32* @reset, align 4
  %34 = load i32, i32* @CX18_GPIO_RESET_Z8F0811, align 4
  %35 = call i32 @cx18_call_hw(%struct.cx18* %30, i32 %31, i32 %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %29, %25
  br label %40

37:                                               ; preds = %5
  %38 = load i64, i64* @ENOTTY, align 8
  %39 = sub nsw i64 0, %38
  store i64 %39, i64* %6, align 8
  br label %41

40:                                               ; preds = %36
  store i64 0, i64* %6, align 8
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i64, i64* %6, align 8
  ret i64 %42
}

declare dso_local %struct.TYPE_2__* @fh2id(i8*) #1

declare dso_local i32 @cx18_call_hw(%struct.cx18*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
