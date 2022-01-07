; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/admtek/extr_adm8211.c_adm8211_tx_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/admtek/extr_adm8211.c_adm8211_tx_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.adm8211_priv* }
%struct.adm8211_priv = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32, i64, %struct.sk_buff* }
%struct.sk_buff = type { i32, i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TDES1_CONTROL_IC = common dso_local global i32 0, align 4
@TDES1_CONTROL_LS = common dso_local global i32 0, align 4
@TDES1_CONTROL_FS = common dso_local global i32 0, align 4
@TDES1_CONTROL_TER = common dso_local global i32 0, align 4
@TDES0_CONTROL_OWN = common dso_local global i32 0, align 4
@TDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.sk_buff*, i32, i64)* @adm8211_tx_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm8211_tx_raw(%struct.ieee80211_hw* %0, %struct.sk_buff* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.adm8211_priv*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %15, i32 0, i32 0
  %17 = load %struct.adm8211_priv*, %struct.adm8211_priv** %16, align 8
  store %struct.adm8211_priv* %17, %struct.adm8211_priv** %10, align 8
  %18 = load %struct.adm8211_priv*, %struct.adm8211_priv** %10, align 8
  %19 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %28 = call i32 @pci_map_single(i32 %20, i32 %23, i32 %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.adm8211_priv*, %struct.adm8211_priv** %10, align 8
  %30 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i64 @pci_dma_mapping_error(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %4
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %170

38:                                               ; preds = %4
  %39 = load %struct.adm8211_priv*, %struct.adm8211_priv** %10, align 8
  %40 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %39, i32 0, i32 3
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.adm8211_priv*, %struct.adm8211_priv** %10, align 8
  %44 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.adm8211_priv*, %struct.adm8211_priv** %10, align 8
  %47 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub i32 %45, %48
  %50 = load %struct.adm8211_priv*, %struct.adm8211_priv** %10, align 8
  %51 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = sdiv i32 %52, 2
  %54 = icmp eq i32 %49, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %38
  %56 = load i32, i32* @TDES1_CONTROL_IC, align 4
  %57 = load i32, i32* @TDES1_CONTROL_LS, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @TDES1_CONTROL_FS, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %14, align 4
  br label %65

61:                                               ; preds = %38
  %62 = load i32, i32* @TDES1_CONTROL_LS, align 4
  %63 = load i32, i32* @TDES1_CONTROL_FS, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %61, %55
  %66 = load %struct.adm8211_priv*, %struct.adm8211_priv** %10, align 8
  %67 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.adm8211_priv*, %struct.adm8211_priv** %10, align 8
  %70 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sub i32 %68, %71
  %73 = load %struct.adm8211_priv*, %struct.adm8211_priv** %10, align 8
  %74 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %75, 2
  %77 = icmp eq i32 %72, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %65
  %79 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %80 = call i32 @ieee80211_stop_queue(%struct.ieee80211_hw* %79, i32 0)
  br label %81

81:                                               ; preds = %78, %65
  %82 = load %struct.adm8211_priv*, %struct.adm8211_priv** %10, align 8
  %83 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.adm8211_priv*, %struct.adm8211_priv** %10, align 8
  %86 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = urem i32 %84, %87
  store i32 %88, i32* %13, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %90 = load %struct.adm8211_priv*, %struct.adm8211_priv** %10, align 8
  %91 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %90, i32 0, i32 5
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  store %struct.sk_buff* %89, %struct.sk_buff** %96, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.adm8211_priv*, %struct.adm8211_priv** %10, align 8
  %99 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %98, i32 0, i32 5
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load i32, i32* %13, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  store i32 %97, i32* %104, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load %struct.adm8211_priv*, %struct.adm8211_priv** %10, align 8
  %107 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %106, i32 0, i32 5
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  store i64 %105, i64* %112, align 8
  %113 = load i32, i32* %12, align 4
  %114 = call i8* @cpu_to_le32(i32 %113)
  %115 = load %struct.adm8211_priv*, %struct.adm8211_priv** %10, align 8
  %116 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %115, i32 0, i32 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  store i8* %114, i8** %121, align 8
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.adm8211_priv*, %struct.adm8211_priv** %10, align 8
  %124 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = sub nsw i32 %125, 1
  %127 = icmp eq i32 %122, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %81
  %129 = load i32, i32* @TDES1_CONTROL_TER, align 4
  %130 = load i32, i32* %14, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %14, align 4
  br label %132

132:                                              ; preds = %128, %81
  %133 = load i32, i32* %14, align 4
  %134 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %133, %136
  %138 = call i8* @cpu_to_le32(i32 %137)
  %139 = load %struct.adm8211_priv*, %struct.adm8211_priv** %10, align 8
  %140 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %139, i32 0, i32 4
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load i32, i32* %13, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  store i8* %138, i8** %145, align 8
  %146 = load i32, i32* @TDES0_CONTROL_OWN, align 4
  %147 = load i32, i32* %8, align 4
  %148 = shl i32 %147, 20
  %149 = or i32 %146, %148
  %150 = or i32 %149, 8
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %14, align 4
  %152 = call i8* @cpu_to_le32(i32 %151)
  %153 = load %struct.adm8211_priv*, %struct.adm8211_priv** %10, align 8
  %154 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %153, i32 0, i32 4
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = load i32, i32* %13, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  store i8* %152, i8** %159, align 8
  %160 = load %struct.adm8211_priv*, %struct.adm8211_priv** %10, align 8
  %161 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = add i32 %162, 1
  store i32 %163, i32* %161, align 8
  %164 = load %struct.adm8211_priv*, %struct.adm8211_priv** %10, align 8
  %165 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %164, i32 0, i32 3
  %166 = load i64, i64* %11, align 8
  %167 = call i32 @spin_unlock_irqrestore(i32* %165, i64 %166)
  %168 = load i32, i32* @TDR, align 4
  %169 = call i32 @ADM8211_CSR_WRITE(i32 %168, i32 0)
  store i32 0, i32* %5, align 4
  br label %170

170:                                              ; preds = %132, %35
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ieee80211_stop_queue(%struct.ieee80211_hw*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ADM8211_CSR_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
