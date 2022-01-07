; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c___mt76u_rr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c___mt76u_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { %struct.mt76_usb }
%struct.mt76_usb = type { i32 }

@MT_VEND_TYPE_MASK = common dso_local global i32 0, align 4
@MT_VEND_READ_EEPROM = common dso_local global i32 0, align 4
@MT_VEND_READ_CFG = common dso_local global i32 0, align 4
@MT_VEND_MULTI_READ = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76_dev*, i32)* @__mt76u_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mt76u_rr(%struct.mt76_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mt76_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt76_usb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %10, i32 0, i32 0
  store %struct.mt76_usb* %11, %struct.mt76_usb** %5, align 8
  store i32 -1, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MT_VEND_TYPE_MASK, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %19 [
    i32 128, label %15
    i32 129, label %17
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @MT_VEND_READ_EEPROM, align 4
  store i32 %16, i32* %9, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @MT_VEND_READ_CFG, align 4
  store i32 %18, i32* %9, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @MT_VEND_MULTI_READ, align 4
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %19, %17, %15
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MT_VEND_TYPE_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @USB_DIR_IN, align 4
  %29 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.mt76_usb*, %struct.mt76_usb** %5, align 8
  %33 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %32, i32 0, i32 0
  %34 = call i32 @__mt76u_vendor_request(%struct.mt76_dev* %26, i32 %27, i32 %30, i32 0, i32 %31, i32* %33, i32 4)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp eq i64 %36, 4
  br i1 %37, label %38, label %43

38:                                               ; preds = %21
  %39 = load %struct.mt76_usb*, %struct.mt76_usb** %5, align 8
  %40 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %38, %21
  %44 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @trace_usb_reg_rr(%struct.mt76_dev* %44, i32 %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @__mt76u_vendor_request(%struct.mt76_dev*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @trace_usb_reg_rr(%struct.mt76_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
