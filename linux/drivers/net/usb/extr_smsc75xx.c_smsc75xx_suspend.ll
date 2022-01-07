; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.usbnet = type { i32, %struct.mii_if_info, i64* }
%struct.mii_if_info = type { i32 }
%struct.smsc75xx_priv = type { i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"usbnet_suspend error\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"error during last resume\0A\00", align 1
@PM_EVENT_AUTO_SUSPEND = common dso_local global i64 0, align 8
@SUPPORTED_WAKE = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"entering SUSPEND2 mode\0A\00", align 1
@WUCSR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"Error reading WUCSR\0A\00", align 1
@WUCSR_MPEN = common dso_local global i32 0, align 4
@WUCSR_WUEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Error writing WUCSR\0A\00", align 1
@PMT_CTL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"Error reading PMT_CTL\0A\00", align 1
@PMT_CTL_ED_EN = common dso_local global i32 0, align 4
@PMT_CTL_WOL_EN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Error writing PMT_CTL\0A\00", align 1
@PHY_INT_MASK_ANEG_COMP = common dso_local global i32 0, align 4
@PHY_INT_MASK_LINK_DOWN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"error enabling PHY wakeup ints\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"entering SUSPEND1 mode\0A\00", align 1
@PHY_MODE_CTRL_STS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"Error reading PHY_MODE_CTRL_STS\0A\00", align 1
@MODE_CTRL_STS_EDPWRDOWN = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@WAKE_ARP = common dso_local global i32 0, align 4
@WUF_NUM = common dso_local global i32 0, align 4
@WUF_CFGX = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [24 x i8] c"Error writing WUF_CFGX\0A\00", align 1
@__const.smsc75xx_suspend.mcast = private unnamed_addr constant [3 x i32] [i32 1, i32 0, i32 94], align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"enabling multicast detection\0A\00", align 1
@WUF_CFGX_EN = common dso_local global i32 0, align 4
@WUF_CFGX_ATYPE_MULTICAST = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"Error writing wakeup filter\0A\00", align 1
@__const.smsc75xx_suspend.arp = private unnamed_addr constant [2 x i32] [i32 8, i32 6], align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"enabling ARP detection\0A\00", align 1
@WUF_CFGX_ATYPE_ALL = common dso_local global i32 0, align 4
@WUCSR_WUFR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [33 x i8] c"enabling packet match detection\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"disabling packet match detection\0A\00", align 1
@WUCSR_BCST_EN = common dso_local global i32 0, align 4
@WUCSR_PFDA_EN = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [21 x i8] c"enabling PHY wakeup\0A\00", align 1
@PMT_CTL_WUPS = common dso_local global i32 0, align 4
@PMT_CTL_WUPS_ED = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [30 x i8] c"enabling magic packet wakeup\0A\00", align 1
@WUCSR_MPR = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [30 x i8] c"enabling broadcast detection\0A\00", align 1
@WUCSR_BCAST_FR = common dso_local global i32 0, align 4
@WAKE_UCAST = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [28 x i8] c"enabling unicast detection\0A\00", align 1
@MAC_RX = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [27 x i8] c"Failed to read MAC_RX: %d\0A\00", align 1
@MAC_RX_RXEN = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [28 x i8] c"Failed to write MAC_RX: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"entering SUSPEND0 mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i64)* @smsc75xx_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc75xx_suspend(%struct.usb_interface* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.usbnet*, align 8
  %7 = alloca %struct.smsc75xx_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mii_if_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [3 x i32], align 4
  %15 = alloca [2 x i32], align 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i64 %1, i64* %16, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %5, align 8
  %17 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %18 = call %struct.usbnet* @usb_get_intfdata(%struct.usb_interface* %17)
  store %struct.usbnet* %18, %struct.usbnet** %6, align 8
  %19 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %20 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.smsc75xx_priv*
  store %struct.smsc75xx_priv* %24, %struct.smsc75xx_priv** %7, align 8
  %25 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @usbnet_suspend(%struct.usb_interface* %25, i64 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %33 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i8*, ...) @netdev_warn(i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %3, align 4
  br label %633

37:                                               ; preds = %2
  %38 = load %struct.smsc75xx_priv*, %struct.smsc75xx_priv** %7, align 8
  %39 = getelementptr inbounds %struct.smsc75xx_priv, %struct.smsc75xx_priv* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %44 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32, i8*, ...) @netdev_warn(i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.smsc75xx_priv*, %struct.smsc75xx_priv** %7, align 8
  %48 = getelementptr inbounds %struct.smsc75xx_priv, %struct.smsc75xx_priv* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %42, %37
  %50 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %51 = call i32 @smsc75xx_link_ok_nopm(%struct.usbnet* %50)
  store i32 %51, i32* %9, align 4
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PM_EVENT_AUTO_SUSPEND, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @smsc75xx_autosuspend(%struct.usbnet* %57, i32 %58)
  store i32 %59, i32* %10, align 4
  br label %620

60:                                               ; preds = %49
  %61 = load %struct.smsc75xx_priv*, %struct.smsc75xx_priv** %7, align 8
  %62 = getelementptr inbounds %struct.smsc75xx_priv, %struct.smsc75xx_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SUPPORTED_WAKE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %60
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %142, label %70

70:                                               ; preds = %67
  %71 = load %struct.smsc75xx_priv*, %struct.smsc75xx_priv** %7, align 8
  %72 = getelementptr inbounds %struct.smsc75xx_priv, %struct.smsc75xx_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @WAKE_PHY, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %142, label %77

77:                                               ; preds = %70, %60
  %78 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %79 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @netdev_info(i32 %80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %83 = load i64, i64* @WUCSR, align 8
  %84 = call i32 @smsc75xx_read_reg_nopm(%struct.usbnet* %82, i64 %83, i32* %8)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %77
  %88 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %89 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i32, i8*, ...) @netdev_warn(i32 %90, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %620

92:                                               ; preds = %77
  %93 = load i32, i32* @WUCSR_MPEN, align 4
  %94 = load i32, i32* @WUCSR_WUEN, align 4
  %95 = or i32 %93, %94
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %8, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %8, align 4
  %99 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %100 = load i64, i64* @WUCSR, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @smsc75xx_write_reg_nopm(%struct.usbnet* %99, i64 %100, i32 %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %92
  %106 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %107 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i32, i8*, ...) @netdev_warn(i32 %108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %620

110:                                              ; preds = %92
  %111 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %112 = load i64, i64* @PMT_CTL, align 8
  %113 = call i32 @smsc75xx_read_reg_nopm(%struct.usbnet* %111, i64 %112, i32* %8)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %118 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32, i8*, ...) @netdev_warn(i32 %119, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %620

121:                                              ; preds = %110
  %122 = load i32, i32* @PMT_CTL_ED_EN, align 4
  %123 = load i32, i32* @PMT_CTL_WOL_EN, align 4
  %124 = or i32 %122, %123
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %8, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %8, align 4
  %128 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %129 = load i64, i64* @PMT_CTL, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @smsc75xx_write_reg_nopm(%struct.usbnet* %128, i64 %129, i32 %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %121
  %135 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %136 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i32, i8*, ...) @netdev_warn(i32 %137, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %620

139:                                              ; preds = %121
  %140 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %141 = call i32 @smsc75xx_enter_suspend2(%struct.usbnet* %140)
  store i32 %141, i32* %10, align 4
  br label %620

142:                                              ; preds = %70, %67
  %143 = load %struct.smsc75xx_priv*, %struct.smsc75xx_priv** %7, align 8
  %144 = getelementptr inbounds %struct.smsc75xx_priv, %struct.smsc75xx_priv* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @WAKE_PHY, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %203

149:                                              ; preds = %142
  %150 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %151 = load i32, i32* @PHY_INT_MASK_ANEG_COMP, align 4
  %152 = load i32, i32* @PHY_INT_MASK_LINK_DOWN, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @smsc75xx_enable_phy_wakeup_interrupts(%struct.usbnet* %150, i32 %153)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %149
  %158 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %159 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 (i32, i8*, ...) @netdev_warn(i32 %160, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %620

162:                                              ; preds = %149
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %202, label %165

165:                                              ; preds = %162
  %166 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %167 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %166, i32 0, i32 1
  store %struct.mii_if_info* %167, %struct.mii_if_info** %11, align 8
  %168 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %169 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @netdev_info(i32 %170, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %172 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %173 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.mii_if_info*, %struct.mii_if_info** %11, align 8
  %176 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @PHY_MODE_CTRL_STS, align 4
  %179 = call i32 @smsc75xx_mdio_read_nopm(i32 %174, i32 %177, i32 %178)
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %165
  %183 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %184 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 (i32, i8*, ...) @netdev_warn(i32 %185, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %620

187:                                              ; preds = %165
  %188 = load i32, i32* @MODE_CTRL_STS_EDPWRDOWN, align 4
  %189 = load i32, i32* %10, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %10, align 4
  %191 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %192 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.mii_if_info*, %struct.mii_if_info** %11, align 8
  %195 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @PHY_MODE_CTRL_STS, align 4
  %198 = load i32, i32* %10, align 4
  %199 = call i32 @smsc75xx_mdio_write_nopm(i32 %193, i32 %196, i32 %197, i32 %198)
  %200 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %201 = call i32 @smsc75xx_enter_suspend1(%struct.usbnet* %200)
  store i32 %201, i32* %10, align 4
  br label %620

202:                                              ; preds = %162
  br label %203

203:                                              ; preds = %202, %142
  %204 = load %struct.smsc75xx_priv*, %struct.smsc75xx_priv** %7, align 8
  %205 = getelementptr inbounds %struct.smsc75xx_priv, %struct.smsc75xx_priv* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @WAKE_MCAST, align 4
  %208 = load i32, i32* @WAKE_ARP, align 4
  %209 = or i32 %207, %208
  %210 = and i32 %206, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %358

212:                                              ; preds = %203
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %213

213:                                              ; preds = %233, %212
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* @WUF_NUM, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %236

217:                                              ; preds = %213
  %218 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %219 = load i64, i64* @WUF_CFGX, align 8
  %220 = load i32, i32* %12, align 4
  %221 = mul nsw i32 %220, 4
  %222 = sext i32 %221 to i64
  %223 = add nsw i64 %219, %222
  %224 = call i32 @smsc75xx_write_reg_nopm(%struct.usbnet* %218, i64 %223, i32 0)
  store i32 %224, i32* %10, align 4
  %225 = load i32, i32* %10, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %217
  %228 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %229 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call i32 (i32, i8*, ...) @netdev_warn(i32 %230, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %620

232:                                              ; preds = %217
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %12, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %12, align 4
  br label %213

236:                                              ; preds = %213
  %237 = load %struct.smsc75xx_priv*, %struct.smsc75xx_priv** %7, align 8
  %238 = getelementptr inbounds %struct.smsc75xx_priv, %struct.smsc75xx_priv* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @WAKE_MCAST, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %268

243:                                              ; preds = %236
  %244 = bitcast [3 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %244, i8* align 4 bitcast ([3 x i32]* @__const.smsc75xx_suspend.mcast to i8*), i64 12, i1 false)
  %245 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %246 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @netdev_info(i32 %247, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  %249 = load i32, i32* @WUF_CFGX_EN, align 4
  %250 = load i32, i32* @WUF_CFGX_ATYPE_MULTICAST, align 4
  %251 = or i32 %249, %250
  %252 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %253 = call i32 @smsc_crc(i32* %252, i32 3)
  %254 = or i32 %251, %253
  store i32 %254, i32* %8, align 4
  %255 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %256 = load i32, i32* %13, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %13, align 4
  %258 = load i32, i32* %8, align 4
  %259 = call i32 @smsc75xx_write_wuff(%struct.usbnet* %255, i32 %256, i32 %258, i32 7)
  store i32 %259, i32* %10, align 4
  %260 = load i32, i32* %10, align 4
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %243
  %263 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %264 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = call i32 (i32, i8*, ...) @netdev_warn(i32 %265, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  br label %620

267:                                              ; preds = %243
  br label %268

268:                                              ; preds = %267, %236
  %269 = load %struct.smsc75xx_priv*, %struct.smsc75xx_priv** %7, align 8
  %270 = getelementptr inbounds %struct.smsc75xx_priv, %struct.smsc75xx_priv* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @WAKE_ARP, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %301

275:                                              ; preds = %268
  %276 = bitcast [2 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %276, i8* align 4 bitcast ([2 x i32]* @__const.smsc75xx_suspend.arp to i8*), i64 8, i1 false)
  %277 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %278 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @netdev_info(i32 %279, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  %281 = load i32, i32* @WUF_CFGX_EN, align 4
  %282 = load i32, i32* @WUF_CFGX_ATYPE_ALL, align 4
  %283 = or i32 %281, %282
  %284 = or i32 %283, 786432
  %285 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %286 = call i32 @smsc_crc(i32* %285, i32 2)
  %287 = or i32 %284, %286
  store i32 %287, i32* %8, align 4
  %288 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %289 = load i32, i32* %13, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %13, align 4
  %291 = load i32, i32* %8, align 4
  %292 = call i32 @smsc75xx_write_wuff(%struct.usbnet* %288, i32 %289, i32 %291, i32 3)
  store i32 %292, i32* %10, align 4
  %293 = load i32, i32* %10, align 4
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %295, label %300

295:                                              ; preds = %275
  %296 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %297 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = call i32 (i32, i8*, ...) @netdev_warn(i32 %298, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  br label %620

300:                                              ; preds = %275
  br label %301

301:                                              ; preds = %300, %268
  %302 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %303 = load i64, i64* @WUCSR, align 8
  %304 = call i32 @smsc75xx_read_reg_nopm(%struct.usbnet* %302, i64 %303, i32* %8)
  store i32 %304, i32* %10, align 4
  %305 = load i32, i32* %10, align 4
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %301
  %308 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %309 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = call i32 (i32, i8*, ...) @netdev_warn(i32 %310, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %620

312:                                              ; preds = %301
  %313 = load i32, i32* @WUCSR_WUFR, align 4
  %314 = load i32, i32* %8, align 4
  %315 = or i32 %314, %313
  store i32 %315, i32* %8, align 4
  %316 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %317 = load i64, i64* @WUCSR, align 8
  %318 = load i32, i32* %8, align 4
  %319 = call i32 @smsc75xx_write_reg_nopm(%struct.usbnet* %316, i64 %317, i32 %318)
  store i32 %319, i32* %10, align 4
  %320 = load i32, i32* %10, align 4
  %321 = icmp slt i32 %320, 0
  br i1 %321, label %322, label %327

322:                                              ; preds = %312
  %323 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %324 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = call i32 (i32, i8*, ...) @netdev_warn(i32 %325, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %620

327:                                              ; preds = %312
  %328 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %329 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = call i32 @netdev_info(i32 %330, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0))
  %332 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %333 = load i64, i64* @WUCSR, align 8
  %334 = call i32 @smsc75xx_read_reg_nopm(%struct.usbnet* %332, i64 %333, i32* %8)
  store i32 %334, i32* %10, align 4
  %335 = load i32, i32* %10, align 4
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %337, label %342

337:                                              ; preds = %327
  %338 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %339 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = call i32 (i32, i8*, ...) @netdev_warn(i32 %340, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %620

342:                                              ; preds = %327
  %343 = load i32, i32* @WUCSR_WUEN, align 4
  %344 = load i32, i32* %8, align 4
  %345 = or i32 %344, %343
  store i32 %345, i32* %8, align 4
  %346 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %347 = load i64, i64* @WUCSR, align 8
  %348 = load i32, i32* %8, align 4
  %349 = call i32 @smsc75xx_write_reg_nopm(%struct.usbnet* %346, i64 %347, i32 %348)
  store i32 %349, i32* %10, align 4
  %350 = load i32, i32* %10, align 4
  %351 = icmp slt i32 %350, 0
  br i1 %351, label %352, label %357

352:                                              ; preds = %342
  %353 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %354 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = call i32 (i32, i8*, ...) @netdev_warn(i32 %355, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %620

357:                                              ; preds = %342
  br label %390

358:                                              ; preds = %203
  %359 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %360 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = call i32 @netdev_info(i32 %361, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0))
  %363 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %364 = load i64, i64* @WUCSR, align 8
  %365 = call i32 @smsc75xx_read_reg_nopm(%struct.usbnet* %363, i64 %364, i32* %8)
  store i32 %365, i32* %10, align 4
  %366 = load i32, i32* %10, align 4
  %367 = icmp slt i32 %366, 0
  br i1 %367, label %368, label %373

368:                                              ; preds = %358
  %369 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %370 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = call i32 (i32, i8*, ...) @netdev_warn(i32 %371, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %620

373:                                              ; preds = %358
  %374 = load i32, i32* @WUCSR_WUEN, align 4
  %375 = xor i32 %374, -1
  %376 = load i32, i32* %8, align 4
  %377 = and i32 %376, %375
  store i32 %377, i32* %8, align 4
  %378 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %379 = load i64, i64* @WUCSR, align 8
  %380 = load i32, i32* %8, align 4
  %381 = call i32 @smsc75xx_write_reg_nopm(%struct.usbnet* %378, i64 %379, i32 %380)
  store i32 %381, i32* %10, align 4
  %382 = load i32, i32* %10, align 4
  %383 = icmp slt i32 %382, 0
  br i1 %383, label %384, label %389

384:                                              ; preds = %373
  %385 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %386 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = call i32 (i32, i8*, ...) @netdev_warn(i32 %387, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %620

389:                                              ; preds = %373
  br label %390

390:                                              ; preds = %389, %357
  %391 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %392 = load i64, i64* @WUCSR, align 8
  %393 = call i32 @smsc75xx_read_reg_nopm(%struct.usbnet* %391, i64 %392, i32* %8)
  store i32 %393, i32* %10, align 4
  %394 = load i32, i32* %10, align 4
  %395 = icmp slt i32 %394, 0
  br i1 %395, label %396, label %401

396:                                              ; preds = %390
  %397 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %398 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = call i32 (i32, i8*, ...) @netdev_warn(i32 %399, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %620

401:                                              ; preds = %390
  %402 = load i32, i32* @WUCSR_MPEN, align 4
  %403 = load i32, i32* @WUCSR_BCST_EN, align 4
  %404 = or i32 %402, %403
  %405 = load i32, i32* @WUCSR_PFDA_EN, align 4
  %406 = or i32 %404, %405
  %407 = xor i32 %406, -1
  %408 = load i32, i32* %8, align 4
  %409 = and i32 %408, %407
  store i32 %409, i32* %8, align 4
  %410 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %411 = load i64, i64* @WUCSR, align 8
  %412 = load i32, i32* %8, align 4
  %413 = call i32 @smsc75xx_write_reg_nopm(%struct.usbnet* %410, i64 %411, i32 %412)
  store i32 %413, i32* %10, align 4
  %414 = load i32, i32* %10, align 4
  %415 = icmp slt i32 %414, 0
  br i1 %415, label %416, label %421

416:                                              ; preds = %401
  %417 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %418 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = call i32 (i32, i8*, ...) @netdev_warn(i32 %419, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %620

421:                                              ; preds = %401
  %422 = load %struct.smsc75xx_priv*, %struct.smsc75xx_priv** %7, align 8
  %423 = getelementptr inbounds %struct.smsc75xx_priv, %struct.smsc75xx_priv* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = load i32, i32* @WAKE_PHY, align 4
  %426 = and i32 %424, %425
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %465

428:                                              ; preds = %421
  %429 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %430 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = call i32 @netdev_info(i32 %431, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  %433 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %434 = load i64, i64* @PMT_CTL, align 8
  %435 = call i32 @smsc75xx_read_reg_nopm(%struct.usbnet* %433, i64 %434, i32* %8)
  store i32 %435, i32* %10, align 4
  %436 = load i32, i32* %10, align 4
  %437 = icmp slt i32 %436, 0
  br i1 %437, label %438, label %443

438:                                              ; preds = %428
  %439 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %440 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 8
  %442 = call i32 (i32, i8*, ...) @netdev_warn(i32 %441, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %620

443:                                              ; preds = %428
  %444 = load i32, i32* @PMT_CTL_WUPS, align 4
  %445 = xor i32 %444, -1
  %446 = load i32, i32* %8, align 4
  %447 = and i32 %446, %445
  store i32 %447, i32* %8, align 4
  %448 = load i32, i32* @PMT_CTL_WUPS_ED, align 4
  %449 = load i32, i32* @PMT_CTL_ED_EN, align 4
  %450 = or i32 %448, %449
  %451 = load i32, i32* %8, align 4
  %452 = or i32 %451, %450
  store i32 %452, i32* %8, align 4
  %453 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %454 = load i64, i64* @PMT_CTL, align 8
  %455 = load i32, i32* %8, align 4
  %456 = call i32 @smsc75xx_write_reg_nopm(%struct.usbnet* %453, i64 %454, i32 %455)
  store i32 %456, i32* %10, align 4
  %457 = load i32, i32* %10, align 4
  %458 = icmp slt i32 %457, 0
  br i1 %458, label %459, label %464

459:                                              ; preds = %443
  %460 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %461 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = call i32 (i32, i8*, ...) @netdev_warn(i32 %462, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %620

464:                                              ; preds = %443
  br label %465

465:                                              ; preds = %464, %421
  %466 = load %struct.smsc75xx_priv*, %struct.smsc75xx_priv** %7, align 8
  %467 = getelementptr inbounds %struct.smsc75xx_priv, %struct.smsc75xx_priv* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  %469 = load i32, i32* @WAKE_MAGIC, align 4
  %470 = and i32 %468, %469
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %505

472:                                              ; preds = %465
  %473 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %474 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = call i32 @netdev_info(i32 %475, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0))
  %477 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %478 = load i64, i64* @WUCSR, align 8
  %479 = call i32 @smsc75xx_read_reg_nopm(%struct.usbnet* %477, i64 %478, i32* %8)
  store i32 %479, i32* %10, align 4
  %480 = load i32, i32* %10, align 4
  %481 = icmp slt i32 %480, 0
  br i1 %481, label %482, label %487

482:                                              ; preds = %472
  %483 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %484 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = call i32 (i32, i8*, ...) @netdev_warn(i32 %485, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %620

487:                                              ; preds = %472
  %488 = load i32, i32* @WUCSR_MPR, align 4
  %489 = load i32, i32* @WUCSR_MPEN, align 4
  %490 = or i32 %488, %489
  %491 = load i32, i32* %8, align 4
  %492 = or i32 %491, %490
  store i32 %492, i32* %8, align 4
  %493 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %494 = load i64, i64* @WUCSR, align 8
  %495 = load i32, i32* %8, align 4
  %496 = call i32 @smsc75xx_write_reg_nopm(%struct.usbnet* %493, i64 %494, i32 %495)
  store i32 %496, i32* %10, align 4
  %497 = load i32, i32* %10, align 4
  %498 = icmp slt i32 %497, 0
  br i1 %498, label %499, label %504

499:                                              ; preds = %487
  %500 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %501 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %500, i32 0, i32 0
  %502 = load i32, i32* %501, align 8
  %503 = call i32 (i32, i8*, ...) @netdev_warn(i32 %502, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %620

504:                                              ; preds = %487
  br label %505

505:                                              ; preds = %504, %465
  %506 = load %struct.smsc75xx_priv*, %struct.smsc75xx_priv** %7, align 8
  %507 = getelementptr inbounds %struct.smsc75xx_priv, %struct.smsc75xx_priv* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = load i32, i32* @WAKE_BCAST, align 4
  %510 = and i32 %508, %509
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %545

512:                                              ; preds = %505
  %513 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %514 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 8
  %516 = call i32 @netdev_info(i32 %515, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  %517 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %518 = load i64, i64* @WUCSR, align 8
  %519 = call i32 @smsc75xx_read_reg_nopm(%struct.usbnet* %517, i64 %518, i32* %8)
  store i32 %519, i32* %10, align 4
  %520 = load i32, i32* %10, align 4
  %521 = icmp slt i32 %520, 0
  br i1 %521, label %522, label %527

522:                                              ; preds = %512
  %523 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %524 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 8
  %526 = call i32 (i32, i8*, ...) @netdev_warn(i32 %525, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %620

527:                                              ; preds = %512
  %528 = load i32, i32* @WUCSR_BCAST_FR, align 4
  %529 = load i32, i32* @WUCSR_BCST_EN, align 4
  %530 = or i32 %528, %529
  %531 = load i32, i32* %8, align 4
  %532 = or i32 %531, %530
  store i32 %532, i32* %8, align 4
  %533 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %534 = load i64, i64* @WUCSR, align 8
  %535 = load i32, i32* %8, align 4
  %536 = call i32 @smsc75xx_write_reg_nopm(%struct.usbnet* %533, i64 %534, i32 %535)
  store i32 %536, i32* %10, align 4
  %537 = load i32, i32* %10, align 4
  %538 = icmp slt i32 %537, 0
  br i1 %538, label %539, label %544

539:                                              ; preds = %527
  %540 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %541 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 8
  %543 = call i32 (i32, i8*, ...) @netdev_warn(i32 %542, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %620

544:                                              ; preds = %527
  br label %545

545:                                              ; preds = %544, %505
  %546 = load %struct.smsc75xx_priv*, %struct.smsc75xx_priv** %7, align 8
  %547 = getelementptr inbounds %struct.smsc75xx_priv, %struct.smsc75xx_priv* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 8
  %549 = load i32, i32* @WAKE_UCAST, align 4
  %550 = and i32 %548, %549
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %585

552:                                              ; preds = %545
  %553 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %554 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %553, i32 0, i32 0
  %555 = load i32, i32* %554, align 8
  %556 = call i32 @netdev_info(i32 %555, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0))
  %557 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %558 = load i64, i64* @WUCSR, align 8
  %559 = call i32 @smsc75xx_read_reg_nopm(%struct.usbnet* %557, i64 %558, i32* %8)
  store i32 %559, i32* %10, align 4
  %560 = load i32, i32* %10, align 4
  %561 = icmp slt i32 %560, 0
  br i1 %561, label %562, label %567

562:                                              ; preds = %552
  %563 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %564 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 8
  %566 = call i32 (i32, i8*, ...) @netdev_warn(i32 %565, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %620

567:                                              ; preds = %552
  %568 = load i32, i32* @WUCSR_WUFR, align 4
  %569 = load i32, i32* @WUCSR_PFDA_EN, align 4
  %570 = or i32 %568, %569
  %571 = load i32, i32* %8, align 4
  %572 = or i32 %571, %570
  store i32 %572, i32* %8, align 4
  %573 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %574 = load i64, i64* @WUCSR, align 8
  %575 = load i32, i32* %8, align 4
  %576 = call i32 @smsc75xx_write_reg_nopm(%struct.usbnet* %573, i64 %574, i32 %575)
  store i32 %576, i32* %10, align 4
  %577 = load i32, i32* %10, align 4
  %578 = icmp slt i32 %577, 0
  br i1 %578, label %579, label %584

579:                                              ; preds = %567
  %580 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %581 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %580, i32 0, i32 0
  %582 = load i32, i32* %581, align 8
  %583 = call i32 (i32, i8*, ...) @netdev_warn(i32 %582, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %620

584:                                              ; preds = %567
  br label %585

585:                                              ; preds = %584, %545
  %586 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %587 = load i64, i64* @MAC_RX, align 8
  %588 = call i32 @smsc75xx_read_reg_nopm(%struct.usbnet* %586, i64 %587, i32* %8)
  store i32 %588, i32* %10, align 4
  %589 = load i32, i32* %10, align 4
  %590 = icmp slt i32 %589, 0
  br i1 %590, label %591, label %597

591:                                              ; preds = %585
  %592 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %593 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %592, i32 0, i32 0
  %594 = load i32, i32* %593, align 8
  %595 = load i32, i32* %10, align 4
  %596 = call i32 (i32, i8*, ...) @netdev_warn(i32 %594, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i32 %595)
  br label %620

597:                                              ; preds = %585
  %598 = load i32, i32* @MAC_RX_RXEN, align 4
  %599 = load i32, i32* %8, align 4
  %600 = or i32 %599, %598
  store i32 %600, i32* %8, align 4
  %601 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %602 = load i64, i64* @MAC_RX, align 8
  %603 = load i32, i32* %8, align 4
  %604 = call i32 @smsc75xx_write_reg_nopm(%struct.usbnet* %601, i64 %602, i32 %603)
  store i32 %604, i32* %10, align 4
  %605 = load i32, i32* %10, align 4
  %606 = icmp slt i32 %605, 0
  br i1 %606, label %607, label %613

607:                                              ; preds = %597
  %608 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %609 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %608, i32 0, i32 0
  %610 = load i32, i32* %609, align 8
  %611 = load i32, i32* %10, align 4
  %612 = call i32 (i32, i8*, ...) @netdev_warn(i32 %610, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i32 %611)
  br label %620

613:                                              ; preds = %597
  %614 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %615 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %614, i32 0, i32 0
  %616 = load i32, i32* %615, align 8
  %617 = call i32 @netdev_info(i32 %616, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0))
  %618 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %619 = call i32 @smsc75xx_enter_suspend0(%struct.usbnet* %618)
  store i32 %619, i32* %10, align 4
  br label %620

620:                                              ; preds = %613, %607, %591, %579, %562, %539, %522, %499, %482, %459, %438, %416, %396, %384, %368, %352, %337, %322, %307, %295, %262, %227, %187, %182, %157, %139, %134, %116, %105, %87, %56
  %621 = load i32, i32* %10, align 4
  %622 = icmp ne i32 %621, 0
  br i1 %622, label %623, label %631

623:                                              ; preds = %620
  %624 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %625 = load i64, i64* %624, align 8
  %626 = call i64 @PMSG_IS_AUTO(i64 %625)
  %627 = icmp ne i64 %626, 0
  br i1 %627, label %628, label %631

628:                                              ; preds = %623
  %629 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %630 = call i32 @usbnet_resume(%struct.usb_interface* %629)
  br label %631

631:                                              ; preds = %628, %623, %620
  %632 = load i32, i32* %10, align 4
  store i32 %632, i32* %3, align 4
  br label %633

633:                                              ; preds = %631, %31
  %634 = load i32, i32* %3, align 4
  ret i32 %634
}

declare dso_local %struct.usbnet* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usbnet_suspend(%struct.usb_interface*, i64) #1

declare dso_local i32 @netdev_warn(i32, i8*, ...) #1

declare dso_local i32 @smsc75xx_link_ok_nopm(%struct.usbnet*) #1

declare dso_local i32 @smsc75xx_autosuspend(%struct.usbnet*, i32) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @smsc75xx_read_reg_nopm(%struct.usbnet*, i64, i32*) #1

declare dso_local i32 @smsc75xx_write_reg_nopm(%struct.usbnet*, i64, i32) #1

declare dso_local i32 @smsc75xx_enter_suspend2(%struct.usbnet*) #1

declare dso_local i32 @smsc75xx_enable_phy_wakeup_interrupts(%struct.usbnet*, i32) #1

declare dso_local i32 @smsc75xx_mdio_read_nopm(i32, i32, i32) #1

declare dso_local i32 @smsc75xx_mdio_write_nopm(i32, i32, i32, i32) #1

declare dso_local i32 @smsc75xx_enter_suspend1(%struct.usbnet*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @smsc_crc(i32*, i32) #1

declare dso_local i32 @smsc75xx_write_wuff(%struct.usbnet*, i32, i32, i32) #1

declare dso_local i32 @smsc75xx_enter_suspend0(%struct.usbnet*) #1

declare dso_local i64 @PMSG_IS_AUTO(i64) #1

declare dso_local i32 @usbnet_resume(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
