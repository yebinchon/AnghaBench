; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { %struct.mt76_usb }
%struct.mt76_usb = type { i32, i64 }

@MT_VEND_MULTI_WRITE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76_dev*, i64, i8*, i32)* @mt76u_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76u_copy(%struct.mt76_dev* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.mt76_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mt76_usb*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %14 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %13, i32 0, i32 0
  store %struct.mt76_usb* %14, %struct.mt76_usb** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to i64*
  store i64* %16, i64** %10, align 8
  %17 = load %struct.mt76_usb*, %struct.mt76_usb** %9, align 8
  %18 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %54, %4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @DIV_ROUND_UP(i32 %22, i32 4)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %20
  %26 = load i64*, i64** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.mt76_usb*, %struct.mt76_usb** %9, align 8
  %32 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i64*
  %35 = call i32 @put_unaligned(i64 %30, i64* %34)
  %36 = load %struct.mt76_dev*, %struct.mt76_dev** %5, align 8
  %37 = load i32, i32* @MT_VEND_MULTI_WRITE, align 4
  %38 = load i32, i32* @USB_DIR_OUT, align 4
  %39 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %40 = or i32 %38, %39
  %41 = load i64, i64* %6, align 8
  %42 = load i32, i32* %11, align 4
  %43 = mul nsw i32 %42, 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %41, %44
  %46 = load %struct.mt76_usb*, %struct.mt76_usb** %9, align 8
  %47 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @__mt76u_vendor_request(%struct.mt76_dev* %36, i32 %37, i32 %40, i32 0, i64 %45, i64 %48, i32 8)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %25
  br label %57

53:                                               ; preds = %25
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %20

57:                                               ; preds = %52, %20
  %58 = load %struct.mt76_usb*, %struct.mt76_usb** %9, align 8
  %59 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @put_unaligned(i64, i64*) #1

declare dso_local i32 @__mt76u_vendor_request(%struct.mt76_dev*, i32, i32, i32, i64, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
