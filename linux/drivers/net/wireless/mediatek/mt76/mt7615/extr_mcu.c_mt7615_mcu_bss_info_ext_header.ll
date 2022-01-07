; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_mcu_bss_info_ext_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_mcu_bss_info_ext_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_vif = type { i32 }
%struct.bss_info_ext_bss = type { i32, i8*, i8* }

@EXT_BSSID_START = common dso_local global i32 0, align 4
@BSS_INFO_EXT_BSS = common dso_local global i32 0, align 4
@BCN_TX_ESTIMATE_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7615_vif*, i32*)* @mt7615_mcu_bss_info_ext_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7615_mcu_bss_info_ext_header(%struct.mt7615_vif* %0, i32* %1) #0 {
  %3 = alloca %struct.mt7615_vif*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bss_info_ext_bss*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mt7615_vif* %0, %struct.mt7615_vif** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.bss_info_ext_bss*
  store %struct.bss_info_ext_bss* %9, %struct.bss_info_ext_bss** %5, align 8
  %10 = load %struct.mt7615_vif*, %struct.mt7615_vif** %3, align 8
  %11 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @EXT_BSSID_START, align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %32

18:                                               ; preds = %2
  %19 = load i32, i32* @BSS_INFO_EXT_BSS, align 4
  %20 = call i8* @cpu_to_le16(i32 %19)
  %21 = load %struct.bss_info_ext_bss*, %struct.bss_info_ext_bss** %5, align 8
  %22 = getelementptr inbounds %struct.bss_info_ext_bss, %struct.bss_info_ext_bss* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = call i8* @cpu_to_le16(i32 24)
  %24 = load %struct.bss_info_ext_bss*, %struct.bss_info_ext_bss** %5, align 8
  %25 = getelementptr inbounds %struct.bss_info_ext_bss, %struct.bss_info_ext_bss* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 %26, 4116
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @cpu_to_le32(i32 %28)
  %30 = load %struct.bss_info_ext_bss*, %struct.bss_info_ext_bss** %5, align 8
  %31 = getelementptr inbounds %struct.bss_info_ext_bss, %struct.bss_info_ext_bss* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %18, %17
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
