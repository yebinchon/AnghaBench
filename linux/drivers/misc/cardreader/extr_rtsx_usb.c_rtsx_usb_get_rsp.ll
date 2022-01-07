; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_get_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_get_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_ucr = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EP_BULK_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_usb_get_rsp(%struct.rtsx_ucr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtsx_ucr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtsx_ucr* %0, %struct.rtsx_ucr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  br label %28

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @ALIGN(i32 %14, i32 4)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %17 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %18 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @EP_BULK_IN, align 4
  %21 = call i32 @usb_rcvbulkpipe(i32 %19, i32 %20)
  %22 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %5, align 8
  %23 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @rtsx_usb_transfer_data(%struct.rtsx_ucr* %16, i32 %21, i32 %24, i32 %25, i32 0, i32* null, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %13, %10
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @rtsx_usb_transfer_data(%struct.rtsx_ucr*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
