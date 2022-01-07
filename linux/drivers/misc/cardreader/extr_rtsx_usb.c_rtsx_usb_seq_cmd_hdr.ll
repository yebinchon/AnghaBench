; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_seq_cmd_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_seq_cmd_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_ucr = type { i64* }

@PACKET_TYPE = common dso_local global i64 0, align 8
@SEQ_WRITE = common dso_local global i64 0, align 8
@STAGE_FLAG = common dso_local global i64 0, align 8
@STAGE_R = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_ucr*, i32, i32, i64)* @rtsx_usb_seq_cmd_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtsx_usb_seq_cmd_hdr(%struct.rtsx_ucr* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.rtsx_ucr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.rtsx_ucr* %0, %struct.rtsx_ucr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %10 = call i32 @rtsx_usb_cmd_hdr_tag(%struct.rtsx_ucr* %9)
  %11 = load i64, i64* %8, align 8
  %12 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %13 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* @PACKET_TYPE, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  store i64 %11, i64* %16, align 8
  %17 = load i32, i32* %7, align 4
  %18 = ashr i32 %17, 8
  %19 = sext i32 %18 to i64
  %20 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %21 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 5
  store i64 %19, i64* %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %27 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 6
  store i64 %25, i64* %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = ashr i32 %30, 8
  %32 = sext i32 %31 to i64
  %33 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %34 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 8
  store i64 %32, i64* %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %40 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 9
  store i64 %38, i64* %42, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @SEQ_WRITE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %4
  %47 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %48 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @STAGE_FLAG, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  store i64 0, i64* %51, align 8
  br label %59

52:                                               ; preds = %4
  %53 = load i64, i64* @STAGE_R, align 8
  %54 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %55 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* @STAGE_FLAG, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  store i64 %53, i64* %58, align 8
  br label %59

59:                                               ; preds = %52, %46
  ret void
}

declare dso_local i32 @rtsx_usb_cmd_hdr_tag(%struct.rtsx_ucr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
