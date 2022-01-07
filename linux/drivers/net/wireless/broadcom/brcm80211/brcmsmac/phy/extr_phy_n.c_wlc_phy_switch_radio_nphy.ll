; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_switch_radio_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_switch_radio_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.brcms_phy_pub = type { i32 }

@RFCC_CHIP0_PU = common dso_local global i32 0, align 4
@RADIO_2056_SYN_COM_PU = common dso_local global i32 0, align 4
@RADIO_2056_TX_PADA_BOOST_TUNE = common dso_local global i32 0, align 4
@RADIO_2056_TX0 = common dso_local global i32 0, align 4
@RADIO_2056_TX_PADG_BOOST_TUNE = common dso_local global i32 0, align 4
@RADIO_2056_TX_PGAA_BOOST_TUNE = common dso_local global i32 0, align 4
@RADIO_2056_TX_PGAG_BOOST_TUNE = common dso_local global i32 0, align 4
@RADIO_2056_TX_MIXA_BOOST_TUNE = common dso_local global i32 0, align 4
@RADIO_2056_TX_MIXG_BOOST_TUNE = common dso_local global i32 0, align 4
@RADIO_2056_TX1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_switch_radio_nphy(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %64

7:                                                ; preds = %2
  %8 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %9 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @NREV_GE(i32 %11, i32 7)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %7
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %16 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %21 = call i32 @wlc_phy_radio_preinit_205x(%struct.brcms_phy* %20)
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %23 = call i32 @wlc_phy_radio_init_2057(%struct.brcms_phy* %22)
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %25 = call i32 @wlc_phy_radio_postinit_2057(%struct.brcms_phy* %24)
  br label %26

26:                                               ; preds = %19, %14
  %27 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %28 = bitcast %struct.brcms_phy* %27 to %struct.brcms_phy_pub*
  %29 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %30 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @wlc_phy_chanspec_set(%struct.brcms_phy_pub* %28, i32 %31)
  br label %61

33:                                               ; preds = %7
  %34 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %35 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @NREV_GE(i32 %37, i32 3)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %33
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %42 = call i32 @wlc_phy_radio_preinit_205x(%struct.brcms_phy* %41)
  %43 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %44 = call i32 @wlc_phy_radio_init_2056(%struct.brcms_phy* %43)
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %46 = call i32 @wlc_phy_radio_postinit_2056(%struct.brcms_phy* %45)
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %48 = bitcast %struct.brcms_phy* %47 to %struct.brcms_phy_pub*
  %49 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %50 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @wlc_phy_chanspec_set(%struct.brcms_phy_pub* %48, i32 %51)
  br label %60

53:                                               ; preds = %33
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %55 = call i32 @wlc_phy_radio_preinit_2055(%struct.brcms_phy* %54)
  %56 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %57 = call i32 @wlc_phy_radio_init_2055(%struct.brcms_phy* %56)
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %59 = call i32 @wlc_phy_radio_postinit_2055(%struct.brcms_phy* %58)
  br label %60

60:                                               ; preds = %53, %40
  br label %61

61:                                               ; preds = %60, %26
  %62 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %63 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  br label %163

64:                                               ; preds = %2
  %65 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %66 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @NREV_GE(i32 %68, i32 3)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %148

71:                                               ; preds = %64
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %73 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @NREV_LT(i32 %75, i32 7)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %148

78:                                               ; preds = %71
  %79 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %80 = load i32, i32* @RFCC_CHIP0_PU, align 4
  %81 = xor i32 %80, -1
  %82 = call i32 @and_phy_reg(%struct.brcms_phy* %79, i32 120, i32 %81)
  %83 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %84 = load i32, i32* @RADIO_2056_SYN_COM_PU, align 4
  %85 = call i32 @mod_radio_reg(%struct.brcms_phy* %83, i32 %84, i32 2, i32 0)
  %86 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %87 = load i32, i32* @RADIO_2056_TX_PADA_BOOST_TUNE, align 4
  %88 = load i32, i32* @RADIO_2056_TX0, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @write_radio_reg(%struct.brcms_phy* %86, i32 %89, i32 0)
  %91 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %92 = load i32, i32* @RADIO_2056_TX_PADG_BOOST_TUNE, align 4
  %93 = load i32, i32* @RADIO_2056_TX0, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @write_radio_reg(%struct.brcms_phy* %91, i32 %94, i32 0)
  %96 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %97 = load i32, i32* @RADIO_2056_TX_PGAA_BOOST_TUNE, align 4
  %98 = load i32, i32* @RADIO_2056_TX0, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @write_radio_reg(%struct.brcms_phy* %96, i32 %99, i32 0)
  %101 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %102 = load i32, i32* @RADIO_2056_TX_PGAG_BOOST_TUNE, align 4
  %103 = load i32, i32* @RADIO_2056_TX0, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @write_radio_reg(%struct.brcms_phy* %101, i32 %104, i32 0)
  %106 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %107 = load i32, i32* @RADIO_2056_TX_MIXA_BOOST_TUNE, align 4
  %108 = load i32, i32* @RADIO_2056_TX0, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @mod_radio_reg(%struct.brcms_phy* %106, i32 %109, i32 240, i32 0)
  %111 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %112 = load i32, i32* @RADIO_2056_TX_MIXG_BOOST_TUNE, align 4
  %113 = load i32, i32* @RADIO_2056_TX0, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @write_radio_reg(%struct.brcms_phy* %111, i32 %114, i32 0)
  %116 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %117 = load i32, i32* @RADIO_2056_TX_PADA_BOOST_TUNE, align 4
  %118 = load i32, i32* @RADIO_2056_TX1, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @write_radio_reg(%struct.brcms_phy* %116, i32 %119, i32 0)
  %121 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %122 = load i32, i32* @RADIO_2056_TX_PADG_BOOST_TUNE, align 4
  %123 = load i32, i32* @RADIO_2056_TX1, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @write_radio_reg(%struct.brcms_phy* %121, i32 %124, i32 0)
  %126 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %127 = load i32, i32* @RADIO_2056_TX_PGAA_BOOST_TUNE, align 4
  %128 = load i32, i32* @RADIO_2056_TX1, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @write_radio_reg(%struct.brcms_phy* %126, i32 %129, i32 0)
  %131 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %132 = load i32, i32* @RADIO_2056_TX_PGAG_BOOST_TUNE, align 4
  %133 = load i32, i32* @RADIO_2056_TX1, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @write_radio_reg(%struct.brcms_phy* %131, i32 %134, i32 0)
  %136 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %137 = load i32, i32* @RADIO_2056_TX_MIXA_BOOST_TUNE, align 4
  %138 = load i32, i32* @RADIO_2056_TX1, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @mod_radio_reg(%struct.brcms_phy* %136, i32 %139, i32 240, i32 0)
  %141 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %142 = load i32, i32* @RADIO_2056_TX_MIXG_BOOST_TUNE, align 4
  %143 = load i32, i32* @RADIO_2056_TX1, align 4
  %144 = or i32 %142, %143
  %145 = call i32 @write_radio_reg(%struct.brcms_phy* %141, i32 %144, i32 0)
  %146 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %147 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %146, i32 0, i32 0
  store i32 0, i32* %147, align 4
  br label %148

148:                                              ; preds = %78, %71, %64
  %149 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %150 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @NREV_GE(i32 %152, i32 8)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %148
  %156 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %157 = load i32, i32* @RFCC_CHIP0_PU, align 4
  %158 = xor i32 %157, -1
  %159 = call i32 @and_phy_reg(%struct.brcms_phy* %156, i32 120, i32 %158)
  %160 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %161 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %160, i32 0, i32 0
  store i32 0, i32* %161, align 4
  br label %162

162:                                              ; preds = %155, %148
  br label %163

163:                                              ; preds = %162, %61
  ret void
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @wlc_phy_radio_preinit_205x(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_radio_init_2057(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_radio_postinit_2057(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_chanspec_set(%struct.brcms_phy_pub*, i32) #1

declare dso_local i32 @wlc_phy_radio_init_2056(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_radio_postinit_2056(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_radio_preinit_2055(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_radio_init_2055(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_radio_postinit_2055(%struct.brcms_phy*) #1

declare dso_local i64 @NREV_LT(i32, i32) #1

declare dso_local i32 @and_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @mod_radio_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
