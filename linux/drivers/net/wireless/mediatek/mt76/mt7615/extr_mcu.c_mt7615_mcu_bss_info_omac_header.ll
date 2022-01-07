; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_mcu_bss_info_omac_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7615/extr_mcu.c_mt7615_mcu_bss_info_omac_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7615_vif = type { i64, i32 }
%struct.bss_info_omac = type { i64, i64, i32, i32, i8*, i8* }

@EXT_BSSID_START = common dso_local global i64 0, align 8
@HW_BSSID_0 = common dso_local global i64 0, align 8
@BSS_INFO_OMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7615_vif*, i64*, i32)* @mt7615_mcu_bss_info_omac_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7615_mcu_bss_info_omac_header(%struct.mt7615_vif* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.mt7615_vif*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bss_info_omac*, align 8
  %8 = alloca i64, align 8
  store %struct.mt7615_vif* %0, %struct.mt7615_vif** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64*, i64** %5, align 8
  %10 = bitcast i64* %9 to %struct.bss_info_omac*
  store %struct.bss_info_omac* %10, %struct.bss_info_omac** %7, align 8
  %11 = load %struct.mt7615_vif*, %struct.mt7615_vif** %4, align 8
  %12 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EXT_BSSID_START, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @HW_BSSID_0, align 8
  br label %22

18:                                               ; preds = %3
  %19 = load %struct.mt7615_vif*, %struct.mt7615_vif** %4, align 8
  %20 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  br label %22

22:                                               ; preds = %18, %16
  %23 = phi i64 [ %17, %16 ], [ %21, %18 ]
  store i64 %23, i64* %8, align 8
  %24 = load i32, i32* @BSS_INFO_OMAC, align 4
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = load %struct.bss_info_omac*, %struct.bss_info_omac** %7, align 8
  %27 = getelementptr inbounds %struct.bss_info_omac, %struct.bss_info_omac* %26, i32 0, i32 5
  store i8* %25, i8** %27, align 8
  %28 = call i8* @cpu_to_le16(i32 40)
  %29 = load %struct.bss_info_omac*, %struct.bss_info_omac** %7, align 8
  %30 = getelementptr inbounds %struct.bss_info_omac, %struct.bss_info_omac* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.bss_info_omac*, %struct.bss_info_omac** %7, align 8
  %33 = getelementptr inbounds %struct.bss_info_omac, %struct.bss_info_omac* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.mt7615_vif*, %struct.mt7615_vif** %4, align 8
  %35 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.bss_info_omac*, %struct.bss_info_omac** %7, align 8
  %38 = getelementptr inbounds %struct.bss_info_omac, %struct.bss_info_omac* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.mt7615_vif*, %struct.mt7615_vif** %4, align 8
  %40 = getelementptr inbounds %struct.mt7615_vif, %struct.mt7615_vif* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.bss_info_omac*, %struct.bss_info_omac** %7, align 8
  %43 = getelementptr inbounds %struct.bss_info_omac, %struct.bss_info_omac* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @cpu_to_le32(i32 %44)
  %46 = load %struct.bss_info_omac*, %struct.bss_info_omac** %7, align 8
  %47 = getelementptr inbounds %struct.bss_info_omac, %struct.bss_info_omac* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
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
