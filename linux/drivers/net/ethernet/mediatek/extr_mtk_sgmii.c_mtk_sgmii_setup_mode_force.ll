; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_sgmii.c_mtk_sgmii_setup_mode_force.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mediatek/extr_mtk_sgmii.c_mtk_sgmii_setup_mode_force.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_sgmii = type { i32*, i32 }
%struct.phylink_link_state = type { i64, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@RG_PHY_SPEED_MASK = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_2500BASEX = common dso_local global i64 0, align 8
@RG_PHY_SPEED_3_125G = common dso_local global i32 0, align 4
@SGMSYS_PCS_CONTROL_1 = common dso_local global i32 0, align 4
@SGMII_AN_ENABLE = common dso_local global i32 0, align 4
@SGMSYS_SGMII_MODE = common dso_local global i32 0, align 4
@SGMII_IF_MODE_MASK = common dso_local global i32 0, align 4
@SGMII_SPEED_10 = common dso_local global i32 0, align 4
@SGMII_SPEED_100 = common dso_local global i32 0, align 4
@SGMII_SPEED_1000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@SGMII_DUPLEX_FULL = common dso_local global i32 0, align 4
@SGMSYS_QPHY_PWR_STATE_CTRL = common dso_local global i32 0, align 4
@SGMII_PHYA_PWD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_sgmii_setup_mode_force(%struct.mtk_sgmii* %0, i32 %1, %struct.phylink_link_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_sgmii*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.phylink_link_state*, align 8
  %8 = alloca i32, align 4
  store %struct.mtk_sgmii* %0, %struct.mtk_sgmii** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.phylink_link_state* %2, %struct.phylink_link_state** %7, align 8
  %9 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %5, align 8
  %10 = getelementptr inbounds %struct.mtk_sgmii, %struct.mtk_sgmii* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %153

20:                                               ; preds = %3
  %21 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %5, align 8
  %22 = getelementptr inbounds %struct.mtk_sgmii, %struct.mtk_sgmii* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %5, align 8
  %29 = getelementptr inbounds %struct.mtk_sgmii, %struct.mtk_sgmii* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @regmap_read(i32 %27, i32 %30, i32* %8)
  %32 = load i32, i32* @RG_PHY_SPEED_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %37 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PHY_INTERFACE_MODE_2500BASEX, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %20
  %42 = load i32, i32* @RG_PHY_SPEED_3_125G, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %41, %20
  %46 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %5, align 8
  %47 = getelementptr inbounds %struct.mtk_sgmii, %struct.mtk_sgmii* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %5, align 8
  %54 = getelementptr inbounds %struct.mtk_sgmii, %struct.mtk_sgmii* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @regmap_write(i32 %52, i32 %55, i32 %56)
  %58 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %5, align 8
  %59 = getelementptr inbounds %struct.mtk_sgmii, %struct.mtk_sgmii* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SGMSYS_PCS_CONTROL_1, align 4
  %66 = call i32 @regmap_read(i32 %64, i32 %65, i32* %8)
  %67 = load i32, i32* @SGMII_AN_ENABLE, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %8, align 4
  %71 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %5, align 8
  %72 = getelementptr inbounds %struct.mtk_sgmii, %struct.mtk_sgmii* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @SGMSYS_PCS_CONTROL_1, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @regmap_write(i32 %77, i32 %78, i32 %79)
  %81 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %5, align 8
  %82 = getelementptr inbounds %struct.mtk_sgmii, %struct.mtk_sgmii* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SGMSYS_SGMII_MODE, align 4
  %89 = call i32 @regmap_read(i32 %87, i32 %88, i32* %8)
  %90 = load i32, i32* @SGMII_IF_MODE_MASK, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %8, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %8, align 4
  %94 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %95 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  switch i32 %96, label %109 [
    i32 131, label %97
    i32 130, label %101
    i32 128, label %105
    i32 129, label %105
  ]

97:                                               ; preds = %45
  %98 = load i32, i32* @SGMII_SPEED_10, align 4
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  br label %109

101:                                              ; preds = %45
  %102 = load i32, i32* @SGMII_SPEED_100, align 4
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %8, align 4
  br label %109

105:                                              ; preds = %45, %45
  %106 = load i32, i32* @SGMII_SPEED_1000, align 4
  %107 = load i32, i32* %8, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %45, %105, %101, %97
  %110 = load %struct.phylink_link_state*, %struct.phylink_link_state** %7, align 8
  %111 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @DUPLEX_FULL, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load i32, i32* @SGMII_DUPLEX_FULL, align 4
  %117 = load i32, i32* %8, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %8, align 4
  br label %119

119:                                              ; preds = %115, %109
  %120 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %5, align 8
  %121 = getelementptr inbounds %struct.mtk_sgmii, %struct.mtk_sgmii* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @SGMSYS_SGMII_MODE, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @regmap_write(i32 %126, i32 %127, i32 %128)
  %130 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %5, align 8
  %131 = getelementptr inbounds %struct.mtk_sgmii, %struct.mtk_sgmii* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @SGMSYS_QPHY_PWR_STATE_CTRL, align 4
  %138 = call i32 @regmap_read(i32 %136, i32 %137, i32* %8)
  %139 = load i32, i32* @SGMII_PHYA_PWD, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %8, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %8, align 4
  %143 = load %struct.mtk_sgmii*, %struct.mtk_sgmii** %5, align 8
  %144 = getelementptr inbounds %struct.mtk_sgmii, %struct.mtk_sgmii* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @SGMSYS_QPHY_PWR_STATE_CTRL, align 4
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @regmap_write(i32 %149, i32 %150, i32 %151)
  store i32 0, i32* %4, align 4
  br label %153

153:                                              ; preds = %119, %17
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
