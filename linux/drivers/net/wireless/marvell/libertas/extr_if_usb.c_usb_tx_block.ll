; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_usb.c_usb_tx_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_usb.c_usb_tx_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_usb_card = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Device removed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@if_usb_write_bulk_callback = common dso_local global i32 0, align 4
@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"usb_submit_urb failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"usb_submit_urb success\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_usb_card*, i32*, i32)* @usb_tx_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_tx_block(%struct.if_usb_card* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.if_usb_card*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.if_usb_card* %0, %struct.if_usb_card** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %9 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %14 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = call i32 (i32*, i8*, ...) @lbs_deb_usbd(i32* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %66

20:                                               ; preds = %3
  %21 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %22 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %25 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %28 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %31 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @usb_sndbulkpipe(%struct.TYPE_6__* %29, i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @if_usb_write_bulk_callback, align 4
  %37 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %38 = call i32 @usb_fill_bulk_urb(%struct.TYPE_5__* %23, %struct.TYPE_6__* %26, i32 %33, i32* %34, i32 %35, i32 %36, %struct.if_usb_card* %37)
  %39 = load i32, i32* @URB_ZERO_PACKET, align 4
  %40 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %41 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %39
  store i32 %45, i32* %43, align 4
  %46 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %47 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = call i32 @usb_submit_urb(%struct.TYPE_5__* %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %20
  %53 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %54 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %7, align 4
  %58 = call i32 (i32*, i8*, ...) @lbs_deb_usbd(i32* %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %65

59:                                               ; preds = %20
  %60 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %61 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = call i32 @lbs_deb_usb2(i32* %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %59, %52
  br label %66

66:                                               ; preds = %65, %12
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @lbs_deb_usbd(i32*, i8*, ...) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_5__*, %struct.TYPE_6__*, i32, i32*, i32, i32, %struct.if_usb_card*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @lbs_deb_usb2(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
