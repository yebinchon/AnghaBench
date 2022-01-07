; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_ucr = type { i32, i8**, i32 }

@CNT_H = common dso_local global i64 0, align 8
@CNT_L = common dso_local global i64 0, align 8
@STAGE_FLAG = common dso_local global i64 0, align 8
@EP_BULK_OUT = common dso_local global i32 0, align 4
@CMD_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_usb_send_cmd(%struct.rtsx_ucr* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtsx_ucr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtsx_ucr* %0, %struct.rtsx_ucr** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %10 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = ashr i32 %11, 8
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %16 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %15, i32 0, i32 1
  %17 = load i8**, i8*** %16, align 8
  %18 = load i64, i64* @CNT_H, align 8
  %19 = getelementptr inbounds i8*, i8** %17, i64 %18
  store i8* %14, i8** %19, align 8
  %20 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %21 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %26 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %25, i32 0, i32 1
  %27 = load i8**, i8*** %26, align 8
  %28 = load i64, i64* @CNT_L, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  store i8* %24, i8** %29, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %32 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %31, i32 0, i32 1
  %33 = load i8**, i8*** %32, align 8
  %34 = load i64, i64* @STAGE_FLAG, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  store i8* %30, i8** %35, align 8
  %36 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %37 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %38 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @EP_BULK_OUT, align 4
  %41 = call i32 @usb_sndbulkpipe(i32 %39, i32 %40)
  %42 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %43 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %42, i32 0, i32 1
  %44 = load i8**, i8*** %43, align 8
  %45 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %46 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %47, 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @CMD_OFFSET, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @rtsx_usb_transfer_data(%struct.rtsx_ucr* %36, i32 %41, i8** %44, i64 %51, i32 0, i32* null, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %3
  %57 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %58 = call i32 @rtsx_usb_clear_fsm_err(%struct.rtsx_ucr* %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %61

60:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %56
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @rtsx_usb_transfer_data(%struct.rtsx_ucr*, i32, i8**, i64, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @rtsx_usb_clear_fsm_err(%struct.rtsx_ucr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
