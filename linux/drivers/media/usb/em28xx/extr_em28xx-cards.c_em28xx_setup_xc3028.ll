; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-cards.c_em28xx_setup_xc3028.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-cards.c_em28xx_setup_xc3028.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.em28xx = type { i64 }
%struct.xc2028_ctrl = type { i32, i8*, i8*, i32 }

@XC2028_DEFAULT_FIRMWARE = common dso_local global i8* null, align 8
@em28xx_boards = common dso_local global %struct.TYPE_2__* null, align 8
@XC3028_FE_ZARLINK456 = common dso_local global i8* null, align 8
@XC3028_FE_DEFAULT = common dso_local global i8* null, align 8
@XC3028L_DEFAULT_FIRMWARE = common dso_local global i8* null, align 8
@XC3028_FE_CHINA = common dso_local global i8* null, align 8
@XC3028_FE_OREN538 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @em28xx_setup_xc3028(%struct.em28xx* %0, %struct.xc2028_ctrl* %1) #0 {
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca %struct.xc2028_ctrl*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  store %struct.xc2028_ctrl* %1, %struct.xc2028_ctrl** %4, align 8
  %5 = load %struct.xc2028_ctrl*, %struct.xc2028_ctrl** %4, align 8
  %6 = call i32 @memset(%struct.xc2028_ctrl* %5, i32 0, i32 32)
  %7 = load i8*, i8** @XC2028_DEFAULT_FIRMWARE, align 8
  %8 = load %struct.xc2028_ctrl*, %struct.xc2028_ctrl** %4, align 8
  %9 = getelementptr inbounds %struct.xc2028_ctrl, %struct.xc2028_ctrl* %8, i32 0, i32 2
  store i8* %7, i8** %9, align 8
  %10 = load %struct.xc2028_ctrl*, %struct.xc2028_ctrl** %4, align 8
  %11 = getelementptr inbounds %struct.xc2028_ctrl, %struct.xc2028_ctrl* %10, i32 0, i32 0
  store i32 64, i32* %11, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @em28xx_boards, align 8
  %13 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %14 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.xc2028_ctrl*, %struct.xc2028_ctrl** %4, align 8
  %20 = getelementptr inbounds %struct.xc2028_ctrl, %struct.xc2028_ctrl* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %22 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  switch i64 %23, label %57 [
    i64 143, label %24
    i64 142, label %24
    i64 132, label %24
    i64 139, label %24
    i64 138, label %24
    i64 137, label %24
    i64 131, label %24
    i64 141, label %28
    i64 133, label %28
    i64 144, label %32
    i64 130, label %39
    i64 129, label %39
    i64 140, label %39
    i64 128, label %43
    i64 136, label %43
    i64 134, label %43
    i64 135, label %50
  ]

24:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %25 = load i8*, i8** @XC3028_FE_ZARLINK456, align 8
  %26 = load %struct.xc2028_ctrl*, %struct.xc2028_ctrl** %4, align 8
  %27 = getelementptr inbounds %struct.xc2028_ctrl, %struct.xc2028_ctrl* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  br label %61

28:                                               ; preds = %2, %2
  %29 = load i8*, i8** @XC3028_FE_DEFAULT, align 8
  %30 = load %struct.xc2028_ctrl*, %struct.xc2028_ctrl** %4, align 8
  %31 = getelementptr inbounds %struct.xc2028_ctrl, %struct.xc2028_ctrl* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  br label %61

32:                                               ; preds = %2
  %33 = load i8*, i8** @XC3028_FE_DEFAULT, align 8
  %34 = load %struct.xc2028_ctrl*, %struct.xc2028_ctrl** %4, align 8
  %35 = getelementptr inbounds %struct.xc2028_ctrl, %struct.xc2028_ctrl* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @XC3028L_DEFAULT_FIRMWARE, align 8
  %37 = load %struct.xc2028_ctrl*, %struct.xc2028_ctrl** %4, align 8
  %38 = getelementptr inbounds %struct.xc2028_ctrl, %struct.xc2028_ctrl* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  br label %61

39:                                               ; preds = %2, %2, %2
  %40 = load i8*, i8** @XC3028_FE_DEFAULT, align 8
  %41 = load %struct.xc2028_ctrl*, %struct.xc2028_ctrl** %4, align 8
  %42 = getelementptr inbounds %struct.xc2028_ctrl, %struct.xc2028_ctrl* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  br label %61

43:                                               ; preds = %2, %2, %2
  %44 = load i8*, i8** @XC3028_FE_CHINA, align 8
  %45 = load %struct.xc2028_ctrl*, %struct.xc2028_ctrl** %4, align 8
  %46 = getelementptr inbounds %struct.xc2028_ctrl, %struct.xc2028_ctrl* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @XC2028_DEFAULT_FIRMWARE, align 8
  %48 = load %struct.xc2028_ctrl*, %struct.xc2028_ctrl** %4, align 8
  %49 = getelementptr inbounds %struct.xc2028_ctrl, %struct.xc2028_ctrl* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  br label %61

50:                                               ; preds = %2
  %51 = load i8*, i8** @XC3028_FE_CHINA, align 8
  %52 = load %struct.xc2028_ctrl*, %struct.xc2028_ctrl** %4, align 8
  %53 = getelementptr inbounds %struct.xc2028_ctrl, %struct.xc2028_ctrl* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load i8*, i8** @XC3028L_DEFAULT_FIRMWARE, align 8
  %55 = load %struct.xc2028_ctrl*, %struct.xc2028_ctrl** %4, align 8
  %56 = getelementptr inbounds %struct.xc2028_ctrl, %struct.xc2028_ctrl* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  br label %61

57:                                               ; preds = %2
  %58 = load i8*, i8** @XC3028_FE_OREN538, align 8
  %59 = load %struct.xc2028_ctrl*, %struct.xc2028_ctrl** %4, align 8
  %60 = getelementptr inbounds %struct.xc2028_ctrl, %struct.xc2028_ctrl* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %57, %50, %43, %39, %32, %28, %24
  ret void
}

declare dso_local i32 @memset(%struct.xc2028_ctrl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
