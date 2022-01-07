; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_adjust_lna_gain_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_adjust_lna_gain_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i64, i64, i64 }

@b43_nphy_adjust_lna_gain_table.lna_gain = internal constant [4 x i32] [i32 -2, i32 10, i32 19, i32 25], align 16
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@B43_NPHY_C1_MINMAX_GAIN = common dso_local global i32 0, align 4
@B43_NPHY_C1_MINGAIN = common dso_local global i32 0, align 4
@B43_NPHY_C1_MINGAIN_SHIFT = common dso_local global i32 0, align 4
@B43_NPHY_C2_MINMAX_GAIN = common dso_local global i32 0, align 4
@B43_NPHY_C2_MINGAIN = common dso_local global i32 0, align 4
@B43_NPHY_C2_MINGAIN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_adjust_lna_gain_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_adjust_lna_gain_table(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_n*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.b43_phy_n*, %struct.b43_phy_n** %11, align 8
  store %struct.b43_phy_n* %12, %struct.b43_phy_n** %3, align 8
  %13 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %14 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %19 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %18, i32 1)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %22 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %20
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %27 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @b43_current_band(i32 %28)
  %30 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 6, i32* %33, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 6, i32* %34, align 4
  br label %62

35:                                               ; preds = %25
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %37 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 315, %39
  %41 = sub nsw i32 40370, %40
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = ashr i32 %42, 13
  %44 = load i32, i32* %5, align 4
  %45 = ashr i32 %44, 12
  %46 = and i32 %45, 1
  %47 = add nsw i32 %43, %46
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %47, i32* %48, align 4
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %50 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 224, %52
  %54 = sub nsw i32 23242, %53
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = ashr i32 %55, 13
  %57 = load i32, i32* %5, align 4
  %58 = ashr i32 %57, 12
  %59 = and i32 %58, 1
  %60 = add nsw i32 %56, %59
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %35, %32
  br label %66

63:                                               ; preds = %20
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %64, align 4
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %62
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %143, %66
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %68, 2
  br i1 %69, label %70, label %146

70:                                               ; preds = %67
  %71 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %72 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %70
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 19, %79
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %80, i32* %81, align 16
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 25, %85
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 25, %91
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %92, i32* %93, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 25, %97
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %98, i32* %99, align 4
  br label %129

100:                                              ; preds = %70
  %101 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @b43_nphy_adjust_lna_gain_table.lna_gain, i64 0, i64 0), align 16
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %101, %105
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %106, i32* %107, align 16
  %108 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @b43_nphy_adjust_lna_gain_table.lna_gain, i64 0, i64 1), align 4
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %108, %112
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @b43_nphy_adjust_lna_gain_table.lna_gain, i64 0, i64 2), align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %115, %119
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %120, i32* %121, align 8
  %122 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @b43_nphy_adjust_lna_gain_table.lna_gain, i64 0, i64 3), align 4
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %122, %126
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %100, %75
  %130 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @B43_NTAB16(i32 %131, i32 8)
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %134 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %130, i32 %132, i32 4, i32* %133)
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 23, %138
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %141
  store i32 %139, i32* %142, align 4
  br label %143

143:                                              ; preds = %129
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %4, align 4
  br label %67

146:                                              ; preds = %67
  %147 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %148 = load i32, i32* @B43_NPHY_C1_MINMAX_GAIN, align 4
  %149 = load i32, i32* @B43_NPHY_C1_MINGAIN, align 4
  %150 = xor i32 %149, -1
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @B43_NPHY_C1_MINGAIN_SHIFT, align 4
  %154 = shl i32 %152, %153
  %155 = call i32 @b43_phy_maskset(%struct.b43_wldev* %147, i32 %148, i32 %150, i32 %154)
  %156 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %157 = load i32, i32* @B43_NPHY_C2_MINMAX_GAIN, align 4
  %158 = load i32, i32* @B43_NPHY_C2_MINGAIN, align 4
  %159 = xor i32 %158, -1
  %160 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @B43_NPHY_C2_MINGAIN_SHIFT, align 4
  %163 = shl i32 %161, %162
  %164 = call i32 @b43_phy_maskset(%struct.b43_wldev* %156, i32 %157, i32 %159, i32 %163)
  %165 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %166 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %146
  %170 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %171 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %170, i32 0)
  br label %172

172:                                              ; preds = %169, %146
  ret void
}

declare dso_local i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev*, i32) #1

declare dso_local i64 @b43_current_band(i32) #1

declare dso_local i32 @b43_ntab_write_bulk(%struct.b43_wldev*, i32, i32, i32*) #1

declare dso_local i32 @B43_NTAB16(i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
