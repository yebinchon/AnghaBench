; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_link_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_link_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.phy_device* }
%struct.phy_device = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@INT_STS = common dso_local global i32 0, align 4
@INT_STS_PHY_INT_ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MAC_CR = common dso_local global i32 0, align 4
@MAC_CR_RST_ = common dso_local global i32 0, align 4
@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@USB_CFG1 = common dso_local global i32 0, align 4
@USB_CFG1_DEV_U2_INIT_EN_ = common dso_local global i32 0, align 4
@USB_CFG1_DEV_U1_INIT_EN_ = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"speed: %u duplex: %d anadv: 0x%04x anlpa: 0x%04x\00", align 1
@jiffies = common dso_local global i64 0, align 8
@STAT_UPDATE_TIMER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan78xx_net*)* @lan78xx_link_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_link_reset(%struct.lan78xx_net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lan78xx_net*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %3, align 8
  %10 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %11 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %10, i32 0, i32 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.phy_device*, %struct.phy_device** %13, align 8
  store %struct.phy_device* %14, %struct.phy_device** %4, align 8
  %15 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %16 = load i32, i32* @INT_STS, align 4
  %17 = load i32, i32* @INT_STS_PHY_INT_, align 4
  %18 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %15, i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %195

27:                                               ; preds = %1
  %28 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %29 = call i32 @phy_read_status(%struct.phy_device* %28)
  %30 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %31 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %73, label %34

34:                                               ; preds = %27
  %35 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %36 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %73

39:                                               ; preds = %34
  %40 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %41 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %43 = load i32, i32* @MAC_CR, align 4
  %44 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %42, i32 %43, i32* %9)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %195

53:                                               ; preds = %39
  %54 = load i32, i32* @MAC_CR_RST_, align 4
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %58 = load i32, i32* @MAC_CR, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %57, i32 %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %53
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %195

69:                                               ; preds = %53
  %70 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %71 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %70, i32 0, i32 3
  %72 = call i32 @del_timer(i32* %71)
  br label %193

73:                                               ; preds = %34, %27
  %74 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %75 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %192

78:                                               ; preds = %73
  %79 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %80 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %192, label %83

83:                                               ; preds = %78
  %84 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %85 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %87 = call i32 @phy_ethtool_ksettings_get(%struct.phy_device* %86, %struct.ethtool_link_ksettings* %5)
  %88 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %89 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %88, i32 0, i32 5
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @USB_SPEED_SUPER, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %137

95:                                               ; preds = %83
  %96 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %5, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 1000
  br i1 %99, label %100, label %122

100:                                              ; preds = %95
  %101 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %102 = load i32, i32* @USB_CFG1, align 4
  %103 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %101, i32 %102, i32* %9)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* @USB_CFG1_DEV_U2_INIT_EN_, align 4
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %9, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %9, align 4
  %108 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %109 = load i32, i32* @USB_CFG1, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %108, i32 %109, i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %113 = load i32, i32* @USB_CFG1, align 4
  %114 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %112, i32 %113, i32* %9)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* @USB_CFG1_DEV_U1_INIT_EN_, align 4
  %116 = load i32, i32* %9, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %9, align 4
  %118 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %119 = load i32, i32* @USB_CFG1, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %118, i32 %119, i32 %120)
  store i32 %121, i32* %8, align 4
  br label %136

122:                                              ; preds = %95
  %123 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %124 = load i32, i32* @USB_CFG1, align 4
  %125 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %123, i32 %124, i32* %9)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* @USB_CFG1_DEV_U2_INIT_EN_, align 4
  %127 = load i32, i32* %9, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* @USB_CFG1_DEV_U1_INIT_EN_, align 4
  %130 = load i32, i32* %9, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %9, align 4
  %132 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %133 = load i32, i32* @USB_CFG1, align 4
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %132, i32 %133, i32 %134)
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %122, %100
  br label %137

137:                                              ; preds = %136, %83
  %138 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %139 = load i32, i32* @MII_ADVERTISE, align 4
  %140 = call i32 @phy_read(%struct.phy_device* %138, i32 %139)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = load i32, i32* %6, align 4
  store i32 %144, i32* %2, align 4
  br label %195

145:                                              ; preds = %137
  %146 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %147 = load i32, i32* @MII_LPA, align 4
  %148 = call i32 @phy_read(%struct.phy_device* %146, i32 %147)
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = load i32, i32* %7, align 4
  store i32 %152, i32* %2, align 4
  br label %195

153:                                              ; preds = %145
  %154 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %155 = load i32, i32* @link, align 4
  %156 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %157 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %156, i32 0, i32 4
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %5, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %5, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* %7, align 4
  %167 = call i32 @netif_dbg(%struct.lan78xx_net* %154, i32 %155, %struct.TYPE_6__* %158, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %161, i32 %164, i32 %165, i32 %166)
  %168 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %169 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %5, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @lan78xx_update_flowcontrol(%struct.lan78xx_net* %168, i32 %171, i32 %172, i32 %173)
  store i32 %174, i32* %8, align 4
  %175 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %176 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %175, i32 0, i32 3
  %177 = call i32 @timer_pending(i32* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %188, label %179

179:                                              ; preds = %153
  %180 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %181 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %180, i32 0, i32 1
  store i32 1, i32* %181, align 4
  %182 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %183 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %182, i32 0, i32 3
  %184 = load i64, i64* @jiffies, align 8
  %185 = load i64, i64* @STAT_UPDATE_TIMER, align 8
  %186 = add nsw i64 %184, %185
  %187 = call i32 @mod_timer(i32* %183, i64 %186)
  br label %188

188:                                              ; preds = %179, %153
  %189 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %190 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %189, i32 0, i32 2
  %191 = call i32 @tasklet_schedule(i32* %190)
  br label %192

192:                                              ; preds = %188, %78, %73
  br label %193

193:                                              ; preds = %192, %69
  %194 = load i32, i32* %8, align 4
  store i32 %194, i32* %2, align 4
  br label %195

195:                                              ; preds = %193, %151, %143, %66, %50, %24
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i32 @lan78xx_write_reg(%struct.lan78xx_net*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @phy_read_status(%struct.phy_device*) #1

declare dso_local i32 @lan78xx_read_reg(%struct.lan78xx_net*, i32, i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @phy_ethtool_ksettings_get(%struct.phy_device*, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @netif_dbg(%struct.lan78xx_net*, i32, %struct.TYPE_6__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @lan78xx_update_flowcontrol(%struct.lan78xx_net*, i32, i32, i32) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
