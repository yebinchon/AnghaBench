; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_mtk_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8* }
%struct.mtk_mac = type { %struct.mtk_eth*, i32 }
%struct.mtk_eth = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MTK_RESETTING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MTK_SOC_MT7628 = common dso_local global i32 0, align 4
@MT7628_SDM_MAC_ADRH = common dso_local global i32 0, align 4
@MT7628_SDM_MAC_ADRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @mtk_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtk_mac*, align 8
  %8 = alloca %struct.mtk_eth*, align 8
  %9 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @eth_mac_addr(%struct.net_device* %10, i8* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.mtk_mac* @netdev_priv(%struct.net_device* %13)
  store %struct.mtk_mac* %14, %struct.mtk_mac** %7, align 8
  %15 = load %struct.mtk_mac*, %struct.mtk_mac** %7, align 8
  %16 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %15, i32 0, i32 0
  %17 = load %struct.mtk_eth*, %struct.mtk_eth** %16, align 8
  store %struct.mtk_eth* %17, %struct.mtk_eth** %8, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %153

25:                                               ; preds = %2
  %26 = load i32, i32* @MTK_RESETTING, align 4
  %27 = load %struct.mtk_mac*, %struct.mtk_mac** %7, align 8
  %28 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %27, i32 0, i32 0
  %29 = load %struct.mtk_eth*, %struct.mtk_eth** %28, align 8
  %30 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %29, i32 0, i32 2
  %31 = call i32 @test_bit(i32 %26, i32* %30)
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %153

37:                                               ; preds = %25
  %38 = load %struct.mtk_mac*, %struct.mtk_mac** %7, align 8
  %39 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %38, i32 0, i32 0
  %40 = load %struct.mtk_eth*, %struct.mtk_eth** %39, align 8
  %41 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %40, i32 0, i32 0
  %42 = call i32 @spin_lock_bh(i32* %41)
  %43 = load %struct.mtk_eth*, %struct.mtk_eth** %8, align 8
  %44 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MTK_SOC_MT7628, align 4
  %49 = call i64 @MTK_HAS_CAPS(i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %96

51:                                               ; preds = %37
  %52 = load %struct.mtk_mac*, %struct.mtk_mac** %7, align 8
  %53 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %52, i32 0, i32 0
  %54 = load %struct.mtk_eth*, %struct.mtk_eth** %53, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = shl i32 %58, 8
  %60 = load i8*, i8** %9, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = or i32 %59, %63
  %65 = trunc i32 %64 to i8
  %66 = load i32, i32* @MT7628_SDM_MAC_ADRH, align 4
  %67 = call i32 @mtk_w32(%struct.mtk_eth* %54, i8 signext %65, i32 %66)
  %68 = load %struct.mtk_mac*, %struct.mtk_mac** %7, align 8
  %69 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %68, i32 0, i32 0
  %70 = load %struct.mtk_eth*, %struct.mtk_eth** %69, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = shl i32 %74, 24
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 3
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = shl i32 %79, 16
  %81 = or i32 %75, %80
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 4
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = shl i32 %85, 8
  %87 = or i32 %81, %86
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 5
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = or i32 %87, %91
  %93 = trunc i32 %92 to i8
  %94 = load i32, i32* @MT7628_SDM_MAC_ADRL, align 4
  %95 = call i32 @mtk_w32(%struct.mtk_eth* %70, i8 signext %93, i32 %94)
  br label %147

96:                                               ; preds = %37
  %97 = load %struct.mtk_mac*, %struct.mtk_mac** %7, align 8
  %98 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %97, i32 0, i32 0
  %99 = load %struct.mtk_eth*, %struct.mtk_eth** %98, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = shl i32 %103, 8
  %105 = load i8*, i8** %9, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = or i32 %104, %108
  %110 = trunc i32 %109 to i8
  %111 = load %struct.mtk_mac*, %struct.mtk_mac** %7, align 8
  %112 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @MTK_GDMA_MAC_ADRH(i32 %113)
  %115 = call i32 @mtk_w32(%struct.mtk_eth* %99, i8 signext %110, i32 %114)
  %116 = load %struct.mtk_mac*, %struct.mtk_mac** %7, align 8
  %117 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %116, i32 0, i32 0
  %118 = load %struct.mtk_eth*, %struct.mtk_eth** %117, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 2
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = shl i32 %122, 24
  %124 = load i8*, i8** %9, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 3
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = shl i32 %127, 16
  %129 = or i32 %123, %128
  %130 = load i8*, i8** %9, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 4
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = shl i32 %133, 8
  %135 = or i32 %129, %134
  %136 = load i8*, i8** %9, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 5
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = or i32 %135, %139
  %141 = trunc i32 %140 to i8
  %142 = load %struct.mtk_mac*, %struct.mtk_mac** %7, align 8
  %143 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @MTK_GDMA_MAC_ADRL(i32 %144)
  %146 = call i32 @mtk_w32(%struct.mtk_eth* %118, i8 signext %141, i32 %145)
  br label %147

147:                                              ; preds = %96, %51
  %148 = load %struct.mtk_mac*, %struct.mtk_mac** %7, align 8
  %149 = getelementptr inbounds %struct.mtk_mac, %struct.mtk_mac* %148, i32 0, i32 0
  %150 = load %struct.mtk_eth*, %struct.mtk_eth** %149, align 8
  %151 = getelementptr inbounds %struct.mtk_eth, %struct.mtk_eth* %150, i32 0, i32 0
  %152 = call i32 @spin_unlock_bh(i32* %151)
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %147, %34, %23
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @eth_mac_addr(%struct.net_device*, i8*) #1

declare dso_local %struct.mtk_mac* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @MTK_HAS_CAPS(i32, i32) #1

declare dso_local i32 @mtk_w32(%struct.mtk_eth*, i8 signext, i32) #1

declare dso_local i32 @MTK_GDMA_MAC_ADRH(i32) #1

declare dso_local i32 @MTK_GDMA_MAC_ADRL(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
