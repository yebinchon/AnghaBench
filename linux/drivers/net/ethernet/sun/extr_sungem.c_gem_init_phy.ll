; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_init_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_init_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem = type { i64, %struct.TYPE_9__, i32, i32, i64, i32, i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_9__*)* }
%struct.TYPE_6__ = type { i64, i64 }

@MIF_CFG = common dso_local global i64 0, align 8
@MIF_CFG_BBMODE = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_APPLE = common dso_local global i64 0, align 8
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"GMAC PHY not responding !\0A\00", align 1
@PCI_VENDOR_ID_SUN = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_SUN_GEM = common dso_local global i64 0, align 8
@phy_mii_mdio0 = common dso_local global i64 0, align 8
@phy_mii_mdio1 = common dso_local global i64 0, align 8
@PCS_DMODE_MGM = common dso_local global i32 0, align 4
@phy_serialink = common dso_local global i64 0, align 8
@PCS_DMODE_SM = common dso_local global i32 0, align 4
@PCS_DMODE_GMOE = common dso_local global i32 0, align 4
@PCS_DMODE_ESM = common dso_local global i32 0, align 4
@PCS_DMODE = common dso_local global i64 0, align 8
@link_down = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Found %s PHY\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@PMAC_FTR_GMAC_PHY_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gem*)* @gem_init_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_init_phy(%struct.gem* %0) #0 {
  %2 = alloca %struct.gem*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gem* %0, %struct.gem** %2, align 8
  %6 = load %struct.gem*, %struct.gem** %2, align 8
  %7 = getelementptr inbounds %struct.gem, %struct.gem* %6, i32 0, i32 6
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MIF_CFG, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @MIF_CFG_BBMODE, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.gem*, %struct.gem** %2, align 8
  %18 = getelementptr inbounds %struct.gem, %struct.gem* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MIF_CFG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  %23 = load %struct.gem*, %struct.gem** %2, align 8
  %24 = getelementptr inbounds %struct.gem, %struct.gem* %23, i32 0, i32 7
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PCI_VENDOR_ID_APPLE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %54, %30
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %57

34:                                               ; preds = %31
  %35 = load %struct.gem*, %struct.gem** %2, align 8
  %36 = load i32, i32* @MII_BMCR, align 4
  %37 = load i32, i32* @BMCR_RESET, align 4
  %38 = call i32 @sungem_phy_write(%struct.gem* %35, i32 %36, i32 %37)
  %39 = call i32 @msleep(i32 20)
  %40 = load %struct.gem*, %struct.gem** %2, align 8
  %41 = load i32, i32* @MII_BMCR, align 4
  %42 = call i32 @sungem_phy_read(%struct.gem* %40, i32 %41)
  %43 = icmp ne i32 %42, 65535
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %57

45:                                               ; preds = %34
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.gem*, %struct.gem** %2, align 8
  %50 = getelementptr inbounds %struct.gem, %struct.gem* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @netdev_warn(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %48, %45
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %31

57:                                               ; preds = %44, %31
  br label %58

58:                                               ; preds = %57, %1
  %59 = load %struct.gem*, %struct.gem** %2, align 8
  %60 = getelementptr inbounds %struct.gem, %struct.gem* %59, i32 0, i32 7
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PCI_VENDOR_ID_SUN, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %109

66:                                               ; preds = %58
  %67 = load %struct.gem*, %struct.gem** %2, align 8
  %68 = getelementptr inbounds %struct.gem, %struct.gem* %67, i32 0, i32 7
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PCI_DEVICE_ID_SUN_GEM, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %109

74:                                               ; preds = %66
  %75 = load %struct.gem*, %struct.gem** %2, align 8
  %76 = getelementptr inbounds %struct.gem, %struct.gem* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @phy_mii_mdio0, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load %struct.gem*, %struct.gem** %2, align 8
  %82 = getelementptr inbounds %struct.gem, %struct.gem* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @phy_mii_mdio1, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %80, %74
  %87 = load i32, i32* @PCS_DMODE_MGM, align 4
  store i32 %87, i32* %5, align 4
  br label %101

88:                                               ; preds = %80
  %89 = load %struct.gem*, %struct.gem** %2, align 8
  %90 = getelementptr inbounds %struct.gem, %struct.gem* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @phy_serialink, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* @PCS_DMODE_SM, align 4
  %96 = load i32, i32* @PCS_DMODE_GMOE, align 4
  %97 = or i32 %95, %96
  store i32 %97, i32* %5, align 4
  br label %100

98:                                               ; preds = %88
  %99 = load i32, i32* @PCS_DMODE_ESM, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %98, %94
  br label %101

101:                                              ; preds = %100, %86
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.gem*, %struct.gem** %2, align 8
  %104 = getelementptr inbounds %struct.gem, %struct.gem* %103, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @PCS_DMODE, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @writel(i32 %102, i64 %107)
  br label %109

109:                                              ; preds = %101, %66, %58
  %110 = load %struct.gem*, %struct.gem** %2, align 8
  %111 = getelementptr inbounds %struct.gem, %struct.gem* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @phy_mii_mdio0, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %121, label %115

115:                                              ; preds = %109
  %116 = load %struct.gem*, %struct.gem** %2, align 8
  %117 = getelementptr inbounds %struct.gem, %struct.gem* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @phy_mii_mdio1, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %156

121:                                              ; preds = %115, %109
  %122 = load %struct.gem*, %struct.gem** %2, align 8
  %123 = getelementptr inbounds %struct.gem, %struct.gem* %122, i32 0, i32 1
  %124 = load %struct.gem*, %struct.gem** %2, align 8
  %125 = getelementptr inbounds %struct.gem, %struct.gem* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @sungem_phy_probe(%struct.TYPE_9__* %123, i32 %126)
  %128 = load %struct.gem*, %struct.gem** %2, align 8
  %129 = getelementptr inbounds %struct.gem, %struct.gem* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = icmp ne %struct.TYPE_8__* %131, null
  br i1 %132, label %133, label %155

133:                                              ; preds = %121
  %134 = load %struct.gem*, %struct.gem** %2, align 8
  %135 = getelementptr inbounds %struct.gem, %struct.gem* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %140, align 8
  %142 = icmp ne i32 (%struct.TYPE_9__*)* %141, null
  br i1 %142, label %143, label %155

143:                                              ; preds = %133
  %144 = load %struct.gem*, %struct.gem** %2, align 8
  %145 = getelementptr inbounds %struct.gem, %struct.gem* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %150, align 8
  %152 = load %struct.gem*, %struct.gem** %2, align 8
  %153 = getelementptr inbounds %struct.gem, %struct.gem* %152, i32 0, i32 1
  %154 = call i32 %151(%struct.TYPE_9__* %153)
  br label %155

155:                                              ; preds = %143, %133, %121
  br label %161

156:                                              ; preds = %115
  %157 = load %struct.gem*, %struct.gem** %2, align 8
  %158 = call i32 @gem_pcs_reset(%struct.gem* %157)
  %159 = load %struct.gem*, %struct.gem** %2, align 8
  %160 = call i32 @gem_pcs_reinit_adv(%struct.gem* %159)
  br label %161

161:                                              ; preds = %156, %155
  %162 = load %struct.gem*, %struct.gem** %2, align 8
  %163 = getelementptr inbounds %struct.gem, %struct.gem* %162, i32 0, i32 4
  store i64 0, i64* %163, align 8
  %164 = load i32, i32* @link_down, align 4
  %165 = load %struct.gem*, %struct.gem** %2, align 8
  %166 = getelementptr inbounds %struct.gem, %struct.gem* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 4
  %167 = load %struct.gem*, %struct.gem** %2, align 8
  %168 = getelementptr inbounds %struct.gem, %struct.gem* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @netif_carrier_off(i32 %169)
  %171 = load %struct.gem*, %struct.gem** %2, align 8
  %172 = getelementptr inbounds %struct.gem, %struct.gem* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @phy_mii_mdio0, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %182, label %176

176:                                              ; preds = %161
  %177 = load %struct.gem*, %struct.gem** %2, align 8
  %178 = getelementptr inbounds %struct.gem, %struct.gem* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @phy_mii_mdio1, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %202

182:                                              ; preds = %176, %161
  %183 = load %struct.gem*, %struct.gem** %2, align 8
  %184 = getelementptr inbounds %struct.gem, %struct.gem* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.gem*, %struct.gem** %2, align 8
  %187 = getelementptr inbounds %struct.gem, %struct.gem* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  %190 = icmp ne %struct.TYPE_8__* %189, null
  br i1 %190, label %191, label %198

191:                                              ; preds = %182
  %192 = load %struct.gem*, %struct.gem** %2, align 8
  %193 = getelementptr inbounds %struct.gem, %struct.gem* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  br label %199

198:                                              ; preds = %182
  br label %199

199:                                              ; preds = %198, %191
  %200 = phi i8* [ %197, %191 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %198 ]
  %201 = call i32 @netdev_info(i32 %185, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %200)
  br label %202

202:                                              ; preds = %199, %176
  %203 = load %struct.gem*, %struct.gem** %2, align 8
  %204 = call i32 @gem_begin_auto_negotiation(%struct.gem* %203, i32* null)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @sungem_phy_write(%struct.gem*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @sungem_phy_read(%struct.gem*, i32) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @sungem_phy_probe(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @gem_pcs_reset(%struct.gem*) #1

declare dso_local i32 @gem_pcs_reinit_adv(%struct.gem*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @netdev_info(i32, i8*, i8*) #1

declare dso_local i32 @gem_begin_auto_negotiation(%struct.gem*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
