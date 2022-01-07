; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_usb.c_mwifiex_usb_dnld_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_usb.c_mwifiex_usb_dnld_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i64 }
%struct.mwifiex_fw_image = type { i32 }
%struct.usb_card_rec = type { i64 }

@USB8XXX_FW_DNLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*, %struct.mwifiex_fw_image*)* @mwifiex_usb_dnld_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_usb_dnld_fw(%struct.mwifiex_adapter* %0, %struct.mwifiex_fw_image* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_adapter*, align 8
  %5 = alloca %struct.mwifiex_fw_image*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_card_rec*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %4, align 8
  store %struct.mwifiex_fw_image* %1, %struct.mwifiex_fw_image** %5, align 8
  %8 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.usb_card_rec*
  store %struct.usb_card_rec* %11, %struct.usb_card_rec** %7, align 8
  %12 = load %struct.usb_card_rec*, %struct.usb_card_rec** %7, align 8
  %13 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @USB8XXX_FW_DNLD, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %19 = load %struct.mwifiex_fw_image*, %struct.mwifiex_fw_image** %5, align 8
  %20 = call i32 @mwifiex_prog_fw_w_helper(%struct.mwifiex_adapter* %18, %struct.mwifiex_fw_image* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %42

24:                                               ; preds = %17
  %25 = load %struct.usb_card_rec*, %struct.usb_card_rec** %7, align 8
  %26 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @USB8XXX_FW_DNLD, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %42

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %2
  %33 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %34 = call i32 @mwifiex_usb_rx_init(%struct.mwifiex_adapter* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %39 = call i32 @mwifiex_usb_tx_init(%struct.mwifiex_adapter* %38)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %30, %23
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @mwifiex_prog_fw_w_helper(%struct.mwifiex_adapter*, %struct.mwifiex_fw_image*) #1

declare dso_local i32 @mwifiex_usb_rx_init(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_usb_tx_init(%struct.mwifiex_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
