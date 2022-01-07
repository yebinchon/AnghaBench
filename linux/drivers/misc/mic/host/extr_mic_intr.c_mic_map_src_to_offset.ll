; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_intr.c_mic_map_src_to_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_intr.c_mic_map_src_to_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i64* }

@MIC_NUM_INTR_TYPES = common dso_local global i32 0, align 4
@MIC_NUM_OFFSETS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mic_device*, i32, i32)* @mic_map_src_to_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mic_map_src_to_offset(%struct.mic_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mic_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mic_device* %0, %struct.mic_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MIC_NUM_INTR_TYPES, align 4
  %10 = icmp uge i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i64, i64* @MIC_NUM_OFFSETS, align 8
  store i64 %12, i64* %4, align 8
  br label %40

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %16 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %14, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = load i64, i64* @MIC_NUM_OFFSETS, align 8
  store i64 %26, i64* %4, align 8
  br label %40

27:                                               ; preds = %13
  %28 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %29 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  store i64 %39, i64* %4, align 8
  br label %40

40:                                               ; preds = %27, %25, %11
  %41 = load i64, i64* %4, align 8
  ret i64 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
