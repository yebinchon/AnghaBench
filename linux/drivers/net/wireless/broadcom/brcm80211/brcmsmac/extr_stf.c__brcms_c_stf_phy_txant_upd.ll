; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_stf.c__brcms_c_stf_phy_txant_upd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_stf.c__brcms_c_stf_phy_txant_upd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_6__*, i32, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i32 }

@ANT_TX_FORCE_0 = common dso_local global i64 0, align 8
@PHY_TXC_ANT_0 = common dso_local global i32 0, align 4
@ANT_TX_FORCE_1 = common dso_local global i64 0, align 8
@PHY_TXC_ANT_1 = common dso_local global i32 0, align 4
@PHY_TXC_ANT_2 = common dso_local global i32 0, align 4
@PHY_TXC_LCNPHY_ANT_LAST = common dso_local global i32 0, align 4
@PHY_TXC_ANT_SHIFT = common dso_local global i32 0, align 4
@PHY_TXC_OLD_ANT_0 = common dso_local global i32 0, align 4
@PHY_TXC_OLD_ANT_1 = common dso_local global i32 0, align 4
@PHY_TXC_OLD_ANT_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_c_info*)* @_brcms_c_stf_phy_txant_upd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_brcms_c_stf_phy_txant_upd(%struct.brcms_c_info* %0) #0 {
  %2 = alloca %struct.brcms_c_info*, align 8
  %3 = alloca i64, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %2, align 8
  %4 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %5 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %4, i32 0, i32 0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  %9 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %10 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %9, i32 0, i32 2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = call i64 @BRCMS_PHY_11N_CAP(%struct.TYPE_7__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %103

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @ANT_TX_FORCE_0, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i32, i32* @PHY_TXC_ANT_0, align 4
  %20 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %21 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 8
  br label %102

24:                                               ; preds = %14
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @ANT_TX_FORCE_1, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %24
  %29 = load i32, i32* @PHY_TXC_ANT_1, align 4
  %30 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %31 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 8
  %34 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %35 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %34, i32 0, i32 2
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = call i64 @BRCMS_ISNPHY(%struct.TYPE_7__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %28
  %40 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %41 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @NREV_GE(i32 %44, i32 3)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %39
  %48 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %49 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %48, i32 0, i32 2
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @NREV_LT(i32 %52, i32 7)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load i32, i32* @PHY_TXC_ANT_2, align 4
  %57 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %58 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 8
  br label %61

61:                                               ; preds = %55, %47, %39, %28
  br label %101

62:                                               ; preds = %24
  %63 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %64 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %63, i32 0, i32 2
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = call i64 @BRCMS_ISLCNPHY(%struct.TYPE_7__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %70 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %69, i32 0, i32 2
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = call i64 @BRCMS_ISSSLPNPHY(%struct.TYPE_7__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %68, %62
  %75 = load i32, i32* @PHY_TXC_LCNPHY_ANT_LAST, align 4
  %76 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %77 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 8
  br label %100

80:                                               ; preds = %68
  %81 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %82 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp sle i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @WARN_ON(i32 %87)
  %89 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %90 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @PHY_TXC_ANT_SHIFT, align 4
  %95 = shl i32 %93, %94
  %96 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %97 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 8
  br label %100

100:                                              ; preds = %80, %74
  br label %101

101:                                              ; preds = %100, %61
  br label %102

102:                                              ; preds = %101, %18
  br label %131

103:                                              ; preds = %1
  %104 = load i64, i64* %3, align 8
  %105 = load i64, i64* @ANT_TX_FORCE_0, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load i32, i32* @PHY_TXC_OLD_ANT_0, align 4
  %109 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %110 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  store i32 %108, i32* %112, align 8
  br label %130

113:                                              ; preds = %103
  %114 = load i64, i64* %3, align 8
  %115 = load i64, i64* @ANT_TX_FORCE_1, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = load i32, i32* @PHY_TXC_OLD_ANT_1, align 4
  %119 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %120 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store i32 %118, i32* %122, align 8
  br label %129

123:                                              ; preds = %113
  %124 = load i32, i32* @PHY_TXC_OLD_ANT_LAST, align 4
  %125 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %126 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %125, i32 0, i32 0
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  store i32 %124, i32* %128, align 8
  br label %129

129:                                              ; preds = %123, %117
  br label %130

130:                                              ; preds = %129, %107
  br label %131

131:                                              ; preds = %130, %102
  %132 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %133 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %136 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @brcms_b_txant_set(i32 %134, i32 %139)
  ret void
}

declare dso_local i64 @BRCMS_PHY_11N_CAP(%struct.TYPE_7__*) #1

declare dso_local i64 @BRCMS_ISNPHY(%struct.TYPE_7__*) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i64 @NREV_LT(i32, i32) #1

declare dso_local i64 @BRCMS_ISLCNPHY(%struct.TYPE_7__*) #1

declare dso_local i64 @BRCMS_ISSSLPNPHY(%struct.TYPE_7__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @brcms_b_txant_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
