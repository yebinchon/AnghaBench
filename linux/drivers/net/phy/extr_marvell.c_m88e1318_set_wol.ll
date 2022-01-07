; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_m88e1318_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_m88e1318_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.ethtool_wolinfo = type { i32 }

@WAKE_MAGIC = common dso_local global i32 0, align 4
@MII_MARVELL_COPPER_PAGE = common dso_local global i32 0, align 4
@MII_M1011_IEVENT = common dso_local global i32 0, align 4
@MII_88E1318S_PHY_CSIER = common dso_local global i32 0, align 4
@MII_88E1318S_PHY_CSIER_WOL_EIE = common dso_local global i32 0, align 4
@MII_MARVELL_LED_PAGE = common dso_local global i32 0, align 4
@MII_88E1318S_PHY_LED_TCR = common dso_local global i32 0, align 4
@MII_88E1318S_PHY_LED_TCR_FORCE_INT = common dso_local global i32 0, align 4
@MII_88E1318S_PHY_LED_TCR_INTn_ENABLE = common dso_local global i32 0, align 4
@MII_88E1318S_PHY_LED_TCR_INT_ACTIVE_LOW = common dso_local global i32 0, align 4
@MII_MARVELL_WOL_PAGE = common dso_local global i32 0, align 4
@MII_88E1318S_PHY_MAGIC_PACKET_WORD2 = common dso_local global i32 0, align 4
@MII_88E1318S_PHY_MAGIC_PACKET_WORD1 = common dso_local global i32 0, align 4
@MII_88E1318S_PHY_MAGIC_PACKET_WORD0 = common dso_local global i32 0, align 4
@MII_88E1318S_PHY_WOL_CTRL = common dso_local global i32 0, align 4
@MII_88E1318S_PHY_WOL_CTRL_CLEAR_WOL_STATUS = common dso_local global i32 0, align 4
@MII_88E1318S_PHY_WOL_CTRL_MAGIC_PACKET_MATCH_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, %struct.ethtool_wolinfo*)* @m88e1318_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88e1318_set_wol(%struct.phy_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = call i32 @phy_save_page(%struct.phy_device* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %165

12:                                               ; preds = %2
  %13 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @WAKE_MAGIC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %147

19:                                               ; preds = %12
  %20 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %21 = load i32, i32* @MII_MARVELL_COPPER_PAGE, align 4
  %22 = call i32 @marvell_write_page(%struct.phy_device* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %165

26:                                               ; preds = %19
  %27 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %28 = call i32 @phy_interrupt_is_valid(%struct.phy_device* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %32 = load i32, i32* @MII_M1011_IEVENT, align 4
  %33 = call i32 @__phy_read(%struct.phy_device* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %26
  %35 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %36 = load i32, i32* @MII_88E1318S_PHY_CSIER, align 4
  %37 = load i32, i32* @MII_88E1318S_PHY_CSIER_WOL_EIE, align 4
  %38 = call i32 @__phy_modify(%struct.phy_device* %35, i32 %36, i32 0, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %165

42:                                               ; preds = %34
  %43 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %44 = load i32, i32* @MII_MARVELL_LED_PAGE, align 4
  %45 = call i32 @marvell_write_page(%struct.phy_device* %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %165

49:                                               ; preds = %42
  %50 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %51 = load i32, i32* @MII_88E1318S_PHY_LED_TCR, align 4
  %52 = load i32, i32* @MII_88E1318S_PHY_LED_TCR_FORCE_INT, align 4
  %53 = load i32, i32* @MII_88E1318S_PHY_LED_TCR_INTn_ENABLE, align 4
  %54 = load i32, i32* @MII_88E1318S_PHY_LED_TCR_INT_ACTIVE_LOW, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @__phy_modify(%struct.phy_device* %50, i32 %51, i32 %52, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %165

60:                                               ; preds = %49
  %61 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %62 = load i32, i32* @MII_MARVELL_WOL_PAGE, align 4
  %63 = call i32 @marvell_write_page(%struct.phy_device* %61, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %165

67:                                               ; preds = %60
  %68 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %69 = load i32, i32* @MII_88E1318S_PHY_MAGIC_PACKET_WORD2, align 4
  %70 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %71 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 5
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 8
  %78 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %79 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %77, %84
  %86 = call i32 @__phy_write(%struct.phy_device* %68, i32 %69, i32 %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %67
  br label %165

90:                                               ; preds = %67
  %91 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %92 = load i32, i32* @MII_88E1318S_PHY_MAGIC_PACKET_WORD1, align 4
  %93 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %94 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %99, 8
  %101 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %102 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %100, %107
  %109 = call i32 @__phy_write(%struct.phy_device* %91, i32 %92, i32 %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %90
  br label %165

113:                                              ; preds = %90
  %114 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %115 = load i32, i32* @MII_88E1318S_PHY_MAGIC_PACKET_WORD0, align 4
  %116 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %117 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 8
  %124 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %125 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %124, i32 0, i32 0
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %123, %130
  %132 = call i32 @__phy_write(%struct.phy_device* %114, i32 %115, i32 %131)
  store i32 %132, i32* %5, align 4
  %133 = load i32, i32* %5, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %113
  br label %165

136:                                              ; preds = %113
  %137 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %138 = load i32, i32* @MII_88E1318S_PHY_WOL_CTRL, align 4
  %139 = load i32, i32* @MII_88E1318S_PHY_WOL_CTRL_CLEAR_WOL_STATUS, align 4
  %140 = load i32, i32* @MII_88E1318S_PHY_WOL_CTRL_MAGIC_PACKET_MATCH_ENABLE, align 4
  %141 = or i32 %139, %140
  %142 = call i32 @__phy_modify(%struct.phy_device* %137, i32 %138, i32 0, i32 %141)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %5, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %136
  br label %165

146:                                              ; preds = %136
  br label %164

147:                                              ; preds = %12
  %148 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %149 = load i32, i32* @MII_MARVELL_WOL_PAGE, align 4
  %150 = call i32 @marvell_write_page(%struct.phy_device* %148, i32 %149)
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  br label %165

154:                                              ; preds = %147
  %155 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %156 = load i32, i32* @MII_88E1318S_PHY_WOL_CTRL, align 4
  %157 = load i32, i32* @MII_88E1318S_PHY_WOL_CTRL_MAGIC_PACKET_MATCH_ENABLE, align 4
  %158 = load i32, i32* @MII_88E1318S_PHY_WOL_CTRL_CLEAR_WOL_STATUS, align 4
  %159 = call i32 @__phy_modify(%struct.phy_device* %155, i32 %156, i32 %157, i32 %158)
  store i32 %159, i32* %5, align 4
  %160 = load i32, i32* %5, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %154
  br label %165

163:                                              ; preds = %154
  br label %164

164:                                              ; preds = %163, %146
  br label %165

165:                                              ; preds = %164, %162, %153, %145, %135, %112, %89, %66, %59, %48, %41, %25, %11
  %166 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @phy_restore_page(%struct.phy_device* %166, i32 %167, i32 %168)
  ret i32 %169
}

declare dso_local i32 @phy_save_page(%struct.phy_device*) #1

declare dso_local i32 @marvell_write_page(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_interrupt_is_valid(%struct.phy_device*) #1

declare dso_local i32 @__phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @__phy_modify(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @__phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_restore_page(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
