; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_seq_write_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_seq_write_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_ucr = type { i64, i32 }

@SEQ_WRITE_DATA_OFFSET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IOBUF_SIZE = common dso_local global i64 0, align 8
@SEQ_WRITE = common dso_local global i32 0, align 4
@EP_BULK_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_ucr*, i64, i64, i32*)* @rtsx_usb_seq_write_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_usb_seq_write_register(%struct.rtsx_ucr* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtsx_ucr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.rtsx_ucr* %0, %struct.rtsx_ucr** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i64, i64* @SEQ_WRITE_DATA_OFFSET, align 8
  %12 = load i64, i64* %8, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i64 @ALIGN(i64 %13, i32 4)
  store i64 %14, i64* %10, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %52

20:                                               ; preds = %4
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @IOBUF_SIZE, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %52

27:                                               ; preds = %20
  %28 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i32, i32* @SEQ_WRITE, align 4
  %32 = call i32 @rtsx_usb_seq_cmd_hdr(%struct.rtsx_ucr* %28, i64 %29, i64 %30, i32 %31)
  %33 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %6, align 8
  %34 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SEQ_WRITE_DATA_OFFSET, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i32*, i32** %9, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @memcpy(i64 %37, i32* %38, i64 %39)
  %41 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %6, align 8
  %42 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %6, align 8
  %43 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @EP_BULK_OUT, align 4
  %46 = call i32 @usb_sndbulkpipe(i32 %44, i32 %45)
  %47 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %6, align 8
  %48 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @rtsx_usb_transfer_data(%struct.rtsx_ucr* %41, i32 %46, i64 %49, i64 %50, i32 0, i32* null, i32 100)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %27, %24, %17
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @rtsx_usb_seq_cmd_hdr(%struct.rtsx_ucr*, i64, i64, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i64) #1

declare dso_local i32 @rtsx_usb_transfer_data(%struct.rtsx_ucr*, i32, i64, i64, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
