; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_encoder_tables_upload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_encoder_tables_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw5864_dev = type { i32 }

@TW5864_VLC_RD = common dso_local global i64 0, align 8
@VLC_LOOKUP_TABLE_LEN = common dso_local global i32 0, align 4
@TW5864_VLC_STREAM_MEM_START = common dso_local global i64 0, align 8
@encoder_vlc_lookup_table = common dso_local global i32* null, align 8
@QUANTIZATION_TABLE_LEN = common dso_local global i32 0, align 4
@TW5864_QUAN_TAB = common dso_local global i64 0, align 8
@forward_quantization_table = common dso_local global i32* null, align 8
@inverse_quantization_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tw5864_dev*)* @tw5864_encoder_tables_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tw5864_encoder_tables_upload(%struct.tw5864_dev* %0) #0 {
  %2 = alloca %struct.tw5864_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.tw5864_dev* %0, %struct.tw5864_dev** %2, align 8
  %4 = load i64, i64* @TW5864_VLC_RD, align 8
  %5 = call i32 @tw_writel(i64 %4, i32 1)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %22, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @VLC_LOOKUP_TABLE_LEN, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load i64, i64* @TW5864_VLC_STREAM_MEM_START, align 8
  %12 = load i32, i32* %3, align 4
  %13 = mul nsw i32 %12, 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %11, %14
  %16 = load i32*, i32** @encoder_vlc_lookup_table, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @tw_writel(i64 %15, i32 %20)
  br label %22

22:                                               ; preds = %10
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %6

25:                                               ; preds = %6
  %26 = load i64, i64* @TW5864_VLC_RD, align 8
  %27 = call i32 @tw_writel(i64 %26, i32 0)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %44, %25
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @QUANTIZATION_TABLE_LEN, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load i64, i64* @TW5864_QUAN_TAB, align 8
  %34 = load i32, i32* %3, align 4
  %35 = mul nsw i32 %34, 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = load i32*, i32** @forward_quantization_table, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @tw_writel(i64 %37, i32 %42)
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %28

47:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %64, %47
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @QUANTIZATION_TABLE_LEN, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = load i64, i64* @TW5864_QUAN_TAB, align 8
  %54 = load i32, i32* %3, align 4
  %55 = mul nsw i32 %54, 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %53, %56
  %58 = load i32*, i32** @inverse_quantization_table, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @tw_writel(i64 %57, i32 %62)
  br label %64

64:                                               ; preds = %52
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %48

67:                                               ; preds = %48
  ret void
}

declare dso_local i32 @tw_writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
