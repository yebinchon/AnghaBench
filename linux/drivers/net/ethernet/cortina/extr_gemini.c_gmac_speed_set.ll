; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_speed_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_speed_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i64, i32, i64, i64, i32, i32 }
%struct.gemini_ethernet_port = type { i64 }
%union.gmac_status = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8*, i32, i32 }

@GMAC_STATUS = common dso_local global i64 0, align 8
@GMAC_SPEED_1000 = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII = common dso_local global i32 0, align 4
@GMAC_PHY_RGMII_1000 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"connect %s to RGMII @ 1Gbit\0A\00", align 1
@GMAC_SPEED_100 = common dso_local global i32 0, align 4
@GMAC_PHY_RGMII_100_10 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"connect %s to RGMII @ 100 Mbit\0A\00", align 1
@GMAC_SPEED_10 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"connect %s to RGMII @ 10 Mbit\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Unsupported PHY speed (%d) on %s\0A\00", align 1
@DUPLEX_FULL = common dso_local global i64 0, align 8
@MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@FLOW_CTRL_RX = common dso_local global i32 0, align 4
@FLOW_CTRL_TX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"link flow control: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @gmac_speed_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmac_speed_set(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.gemini_ethernet_port*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca %union.gmac_status, align 8
  %6 = alloca %union.gmac_status, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device* %12)
  store %struct.gemini_ethernet_port* %13, %struct.gemini_ethernet_port** %3, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.phy_device*, %struct.phy_device** %15, align 8
  store %struct.phy_device* %16, %struct.phy_device** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %18 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @GMAC_STATUS, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i64 @readl(i64 %21)
  %23 = bitcast %union.gmac_status* %5 to i64*
  store i64 %22, i64* %23, align 8
  %24 = bitcast %union.gmac_status* %5 to i64*
  %25 = load i64, i64* %24, align 8
  %26 = bitcast %union.gmac_status* %6 to i64*
  store i64 %25, i64* %26, align 8
  %27 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %28 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = bitcast %union.gmac_status* %5 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %33 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = bitcast %union.gmac_status* %5 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %38 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %94 [
    i32 1000, label %40
    i32 100, label %58
    i32 10, label %76
  ]

40:                                               ; preds = %1
  %41 = load i32, i32* @GMAC_SPEED_1000, align 4
  %42 = bitcast %union.gmac_status* %5 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %45 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @PHY_INTERFACE_MODE_RGMII, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load i8*, i8** @GMAC_PHY_RGMII_1000, align 8
  %51 = bitcast %union.gmac_status* %5 to %struct.TYPE_2__*
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %49, %40
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %56 = call i32 @phydev_name(%struct.phy_device* %55)
  %57 = call i32 @netdev_dbg(%struct.net_device* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %102

58:                                               ; preds = %1
  %59 = load i32, i32* @GMAC_SPEED_100, align 4
  %60 = bitcast %union.gmac_status* %5 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %63 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PHY_INTERFACE_MODE_RGMII, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load i8*, i8** @GMAC_PHY_RGMII_100_10, align 8
  %69 = bitcast %union.gmac_status* %5 to %struct.TYPE_2__*
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %67, %58
  %72 = load %struct.net_device*, %struct.net_device** %2, align 8
  %73 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %74 = call i32 @phydev_name(%struct.phy_device* %73)
  %75 = call i32 @netdev_dbg(%struct.net_device* %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %102

76:                                               ; preds = %1
  %77 = load i32, i32* @GMAC_SPEED_10, align 4
  %78 = bitcast %union.gmac_status* %5 to %struct.TYPE_2__*
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %81 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @PHY_INTERFACE_MODE_RGMII, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %76
  %86 = load i8*, i8** @GMAC_PHY_RGMII_100_10, align 8
  %87 = bitcast %union.gmac_status* %5 to %struct.TYPE_2__*
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  br label %89

89:                                               ; preds = %85, %76
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %92 = call i32 @phydev_name(%struct.phy_device* %91)
  %93 = call i32 @netdev_dbg(%struct.net_device* %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  br label %102

94:                                               ; preds = %1
  %95 = load %struct.net_device*, %struct.net_device** %2, align 8
  %96 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %97 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %100 = call i32 @phydev_name(%struct.phy_device* %99)
  %101 = call i32 @netdev_warn(%struct.net_device* %95, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %98, i32 %100)
  br label %102

102:                                              ; preds = %94, %89, %71, %53
  %103 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %104 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @DUPLEX_FULL, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %130

108:                                              ; preds = %102
  %109 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %110 = load i32, i32* @MII_ADVERTISE, align 4
  %111 = call i32 @phy_read(%struct.phy_device* %109, i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %113 = load i32, i32* @MII_LPA, align 4
  %114 = call i32 @phy_read(%struct.phy_device* %112, i32 %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @mii_resolve_flowctrl_fdx(i32 %115, i32 %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @FLOW_CTRL_RX, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %108
  store i32 1, i32* %8, align 4
  br label %123

123:                                              ; preds = %122, %108
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @FLOW_CTRL_TX, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store i32 1, i32* %7, align 4
  br label %129

129:                                              ; preds = %128, %123
  br label %130

130:                                              ; preds = %129, %102
  %131 = load %struct.net_device*, %struct.net_device** %2, align 8
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @gmac_set_flow_control(%struct.net_device* %131, i32 %132, i32 %133)
  %135 = bitcast %union.gmac_status* %6 to i64*
  %136 = load i64, i64* %135, align 8
  %137 = bitcast %union.gmac_status* %5 to i64*
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %136, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  br label %183

141:                                              ; preds = %130
  %142 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %143 = call i64 @netif_msg_link(%struct.gemini_ethernet_port* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %170

145:                                              ; preds = %141
  %146 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %147 = call i32 @phy_print_status(%struct.phy_device* %146)
  %148 = load %struct.net_device*, %struct.net_device** %2, align 8
  %149 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %150 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %145
  %154 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %155 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  br label %167

160:                                              ; preds = %145
  %161 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %162 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)
  br label %167

167:                                              ; preds = %160, %153
  %168 = phi i8* [ %159, %153 ], [ %166, %160 ]
  %169 = call i32 @netdev_info(%struct.net_device* %148, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %168)
  br label %170

170:                                              ; preds = %167, %141
  %171 = load %struct.net_device*, %struct.net_device** %2, align 8
  %172 = call i32 @gmac_disable_tx_rx(%struct.net_device* %171)
  %173 = bitcast %union.gmac_status* %5 to i64*
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %3, align 8
  %176 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @GMAC_STATUS, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i32 @writel(i64 %174, i64 %179)
  %181 = load %struct.net_device*, %struct.net_device** %2, align 8
  %182 = call i32 @gmac_enable_tx_rx(%struct.net_device* %181)
  br label %183

183:                                              ; preds = %170, %140
  ret void
}

declare dso_local %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @phydev_name(%struct.phy_device*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @mii_resolve_flowctrl_fdx(i32, i32) #1

declare dso_local i32 @gmac_set_flow_control(%struct.net_device*, i32, i32) #1

declare dso_local i64 @netif_msg_link(%struct.gemini_ethernet_port*) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i8*) #1

declare dso_local i32 @gmac_disable_tx_rx(%struct.net_device*) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @gmac_enable_tx_rx(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
