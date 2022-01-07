; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_frame_interval_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_frame_interval_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw5864_input = type { i64, i32, i64, %struct.tw5864_dev* }
%struct.tw5864_dev = type { i32 }

@STD_NTSC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tw5864_input*)* @tw5864_frame_interval_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tw5864_frame_interval_set(%struct.tw5864_input* %0) #0 {
  %2 = alloca %struct.tw5864_input*, align 8
  %3 = alloca %struct.tw5864_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tw5864_input* %0, %struct.tw5864_input** %2, align 8
  %7 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %8 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %7, i32 0, i32 3
  %9 = load %struct.tw5864_dev*, %struct.tw5864_dev** %8, align 8
  store %struct.tw5864_dev* %9, %struct.tw5864_dev** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %11 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @STD_NTSC, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 30, i32 25
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %26, %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %21
  %27 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %28 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %5, align 4
  br label %17

34:                                               ; preds = %17
  %35 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %36 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @TW5864_H264EN_RATE_CNTL_LO_WORD(i32 %37, i32 0)
  %39 = load i32, i32* %4, align 4
  %40 = ashr i32 %39, 16
  %41 = call i32 @tw_writel(i32 %38, i32 %40)
  %42 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %43 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @TW5864_H264EN_RATE_CNTL_HI_WORD(i32 %44, i32 0)
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, 65535
  %48 = call i32 @tw_writel(i32 %45, i32 %47)
  ret void
}

declare dso_local i32 @tw_writel(i32, i32) #1

declare dso_local i32 @TW5864_H264EN_RATE_CNTL_LO_WORD(i32, i32) #1

declare dso_local i32 @TW5864_H264EN_RATE_CNTL_HI_WORD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
