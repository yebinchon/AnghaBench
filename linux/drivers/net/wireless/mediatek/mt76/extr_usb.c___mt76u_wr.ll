; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c___mt76u_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c___mt76u_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { %struct.mt76_usb }
%struct.mt76_usb = type { i32 }

@MT_VEND_TYPE_MASK = common dso_local global i32 0, align 4
@MT_VEND_WRITE_CFG = common dso_local global i32 0, align 4
@MT_VEND_MULTI_WRITE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76_dev*, i32, i32)* @__mt76u_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mt76u_wr(%struct.mt76_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mt76_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mt76_usb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %11 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %10, i32 0, i32 0
  store %struct.mt76_usb* %11, %struct.mt76_usb** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MT_VEND_TYPE_MASK, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %17 [
    i32 128, label %15
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* @MT_VEND_WRITE_CFG, align 4
  store i32 %16, i32* %9, align 4
  br label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @MT_VEND_MULTI_WRITE, align 4
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @MT_VEND_TYPE_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @cpu_to_le32(i32 %24)
  %26 = load %struct.mt76_usb*, %struct.mt76_usb** %7, align 8
  %27 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @USB_DIR_OUT, align 4
  %31 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.mt76_usb*, %struct.mt76_usb** %7, align 8
  %35 = getelementptr inbounds %struct.mt76_usb, %struct.mt76_usb* %34, i32 0, i32 0
  %36 = call i32 @__mt76u_vendor_request(%struct.mt76_dev* %28, i32 %29, i32 %32, i32 0, i32 %33, i32* %35, i32 4)
  %37 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @trace_usb_reg_wr(%struct.mt76_dev* %37, i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @__mt76u_vendor_request(%struct.mt76_dev*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @trace_usb_reg_wr(%struct.mt76_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
