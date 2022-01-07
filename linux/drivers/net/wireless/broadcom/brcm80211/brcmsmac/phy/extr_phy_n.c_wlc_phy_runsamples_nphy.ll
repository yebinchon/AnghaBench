; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_runsamples_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_runsamples_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@NPHY_REV7_RFCTRLOVERRIDE_ID1 = common dso_local global i32 0, align 4
@BB_MULT_VALID_MASK = common dso_local global i32 0, align 4
@NPHY_TBL_ID_IQLOCAL = common dso_local global i32 0, align 4
@BB_MULT_MASK = common dso_local global i32 0, align 4
@NPHY_RfseqMode_CoreActv_override = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32, i32, i32, i32, i32, i32)* @wlc_phy_runsamples_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_runsamples_nphy(%struct.brcms_phy* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.brcms_phy*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %24 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %7
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %29 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %28, i32 1)
  br label %30

30:                                               ; preds = %27, %7
  store i32 20, i32* %16, align 4
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %32 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @CHSPEC_IS40(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 40, i32* %16, align 4
  br label %37

37:                                               ; preds = %36, %30
  %38 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %39 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @NREV_GE(i32 %41, i32 7)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %77

44:                                               ; preds = %37
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %46 = call i32 @read_phy_reg(%struct.brcms_phy* %45, i32 834)
  %47 = and i32 %46, 128
  store i32 %47, i32* %19, align 4
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %49 = call i32 @read_phy_reg(%struct.brcms_phy* %48, i32 835)
  %50 = and i32 %49, 128
  store i32 %50, i32* %20, align 4
  %51 = load i32, i32* %19, align 4
  %52 = load i32, i32* %20, align 4
  %53 = or i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %44
  %56 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %57 = call i32 @read_phy_reg(%struct.brcms_phy* %56, i32 832)
  %58 = and i32 %57, 1792
  store i32 %58, i32* %21, align 4
  %59 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %60 = call i32 @read_phy_reg(%struct.brcms_phy* %59, i32 833)
  %61 = and i32 %60, 1792
  store i32 %61, i32* %22, align 4
  br label %76

62:                                               ; preds = %44
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %65 = call i32 @wlc_phy_read_lpf_bw_ctl_nphy(%struct.brcms_phy* %64, i32 0)
  %66 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %67 = call i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %63, i32 128, i32 %65, i32 0, i32 0, i32 %66)
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %69 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %71 = call i32 @read_phy_reg(%struct.brcms_phy* %70, i32 832)
  %72 = and i32 %71, 1792
  store i32 %72, i32* %21, align 4
  %73 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %74 = call i32 @read_phy_reg(%struct.brcms_phy* %73, i32 833)
  %75 = and i32 %74, 1792
  store i32 %75, i32* %22, align 4
  br label %76

76:                                               ; preds = %62, %55
  br label %77

77:                                               ; preds = %76, %37
  %78 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %79 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @BB_MULT_VALID_MASK, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %77
  %85 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %86 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %87 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %85, i32 %86, i32 1, i32 87, i32 16, i32* %15)
  %88 = load i32, i32* @BB_MULT_VALID_MASK, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* @BB_MULT_MASK, align 4
  %91 = and i32 %89, %90
  %92 = or i32 %88, %91
  %93 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %94 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %84, %77
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load i32, i32* %16, align 4
  %100 = icmp eq i32 %99, 20
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 100, i32 71
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = shl i32 %103, 8
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %104, %105
  store i32 %106, i32* %15, align 4
  %107 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %108 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %109 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %107, i32 %108, i32 1, i32 87, i32 16, i32* %15)
  br label %110

110:                                              ; preds = %98, %95
  %111 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %112 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %117 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %116, i32 0)
  br label %118

118:                                              ; preds = %115, %110
  %119 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sub nsw i32 %120, 1
  %122 = call i32 @write_phy_reg(%struct.brcms_phy* %119, i32 198, i32 %121)
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 65535
  br i1 %124, label %125, label %130

125:                                              ; preds = %118
  %126 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sub nsw i32 %127, 1
  %129 = call i32 @write_phy_reg(%struct.brcms_phy* %126, i32 196, i32 %128)
  br label %134

130:                                              ; preds = %118
  %131 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @write_phy_reg(%struct.brcms_phy* %131, i32 196, i32 %132)
  br label %134

134:                                              ; preds = %130, %125
  %135 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @write_phy_reg(%struct.brcms_phy* %135, i32 197, i32 %136)
  %138 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %139 = call i32 @read_phy_reg(%struct.brcms_phy* %138, i32 161)
  store i32 %139, i32* %18, align 4
  %140 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %141 = load i32, i32* @NPHY_RfseqMode_CoreActv_override, align 4
  %142 = call i32 @or_phy_reg(%struct.brcms_phy* %140, i32 161, i32 %141)
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %134
  %146 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %147 = call i32 @and_phy_reg(%struct.brcms_phy* %146, i32 194, i32 32767)
  %148 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %149 = call i32 @or_phy_reg(%struct.brcms_phy* %148, i32 194, i32 32768)
  br label %158

150:                                              ; preds = %134
  %151 = load i32, i32* %13, align 4
  %152 = icmp eq i32 %151, 1
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 5, i32 1
  store i32 %154, i32* %17, align 4
  %155 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %156 = load i32, i32* %17, align 4
  %157 = call i32 @write_phy_reg(%struct.brcms_phy* %155, i32 195, i32 %156)
  br label %158

158:                                              ; preds = %150, %145
  %159 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %160 = call i32 @read_phy_reg(%struct.brcms_phy* %159, i32 164)
  %161 = and i32 %160, 1
  %162 = icmp eq i32 %161, 1
  %163 = zext i1 %162 to i32
  %164 = call i32 @SPINWAIT(i32 %163, i32 1000)
  %165 = load %struct.brcms_phy*, %struct.brcms_phy** %8, align 8
  %166 = load i32, i32* %18, align 4
  %167 = call i32 @write_phy_reg(%struct.brcms_phy* %165, i32 161, i32 %166)
  ret void
}

declare dso_local i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i64 @CHSPEC_IS40(i32) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wlc_phy_read_lpf_bw_ctl_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_phy_table_read_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @and_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @SPINWAIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
