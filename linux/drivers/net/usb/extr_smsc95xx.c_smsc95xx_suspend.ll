; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.usbnet = type { %struct.TYPE_8__*, i64* }
%struct.TYPE_8__ = type { i32* }
%struct.smsc95xx_priv = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"usbnet_suspend error\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"error during last resume\0A\00", align 1
@PM_EVENT_AUTO_SUSPEND = common dso_local global i64 0, align 8
@FEATURE_REMOTE_WAKEUP = common dso_local global i32 0, align 4
@SUPPORTED_WAKE = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"entering SUSPEND2 mode\0A\00", align 1
@WUCSR = common dso_local global i32 0, align 4
@WUCSR_MPEN_ = common dso_local global i32 0, align 4
@WUCSR_WAKE_EN_ = common dso_local global i32 0, align 4
@PM_CTRL = common dso_local global i32 0, align 4
@PM_CTL_ED_EN_ = common dso_local global i32 0, align 4
@PM_CTL_WOL_EN_ = common dso_local global i32 0, align 4
@PHY_INT_MASK_ANEG_COMP_ = common dso_local global i32 0, align 4
@PHY_INT_MASK_LINK_DOWN_ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"error enabling PHY wakeup ints\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"entering SUSPEND1 mode\0A\00", align 1
@WAKE_BCAST = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@WAKE_ARP = common dso_local global i32 0, align 4
@WAKE_UCAST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FEATURE_8_WAKEUP_FILTERS = common dso_local global i32 0, align 4
@LAN9500A_WUFF_NUM = common dso_local global i32 0, align 4
@LAN9500_WUFF_NUM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Unable to allocate filter_mask\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@__const.smsc95xx_suspend.bcast = private unnamed_addr constant [6 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@.str.6 = private unnamed_addr constant [30 x i8] c"enabling broadcast detection\0A\00", align 1
@__const.smsc95xx_suspend.mcast = private unnamed_addr constant [3 x i32] [i32 1, i32 0, i32 94], align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"enabling multicast detection\0A\00", align 1
@__const.smsc95xx_suspend.arp = private unnamed_addr constant [2 x i32] [i32 8, i32 6], align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"enabling ARP detection\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"enabling unicast detection\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@WUFF = common dso_local global i32 0, align 4
@WUCSR_WUFR_ = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@WUCSR_MPR_ = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"enabling pattern match wakeup\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"disabling pattern match wakeup\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"enabling magic packet wakeup\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"disabling magic packet wakeup\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"entering SUSPEND0 mode\0A\00", align 1
@CARRIER_CHECK_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i64)* @smsc95xx_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc95xx_suspend(%struct.usb_interface* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca %struct.usbnet*, align 8
  %7 = alloca %struct.smsc95xx_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [6 x i32], align 16
  %19 = alloca [3 x i32], align 4
  %20 = alloca [2 x i32], align 4
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i64 %1, i64* %21, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %5, align 8
  %22 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %23 = call %struct.usbnet* @usb_get_intfdata(%struct.usb_interface* %22)
  store %struct.usbnet* %23, %struct.usbnet** %6, align 8
  %24 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %25 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.smsc95xx_priv*
  store %struct.smsc95xx_priv* %29, %struct.smsc95xx_priv** %7, align 8
  %30 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @usbnet_suspend(%struct.usb_interface* %30, i64 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %2
  %37 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %38 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = call i32 @netdev_warn(%struct.TYPE_8__* %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %3, align 4
  br label %761

42:                                               ; preds = %2
  %43 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %7, align 8
  %44 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %43, i32 0, i32 2
  %45 = call i32 @cancel_delayed_work_sync(i32* %44)
  %46 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %7, align 8
  %47 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %52 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = call i32 @netdev_warn(%struct.TYPE_8__* %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %7, align 8
  %56 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %50, %42
  %58 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %59 = call i32 @smsc95xx_link_ok_nopm(%struct.usbnet* %58)
  store i32 %59, i32* %9, align 4
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PM_EVENT_AUTO_SUSPEND, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %57
  %65 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %7, align 8
  %66 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @FEATURE_REMOTE_WAKEUP, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @smsc95xx_autosuspend(%struct.usbnet* %72, i32 %73)
  store i32 %74, i32* %10, align 4
  br label %740

75:                                               ; preds = %64, %57
  %76 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %7, align 8
  %77 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @SUPPORTED_WAKE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %75
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %141, label %85

85:                                               ; preds = %82
  %86 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %7, align 8
  %87 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @WAKE_PHY, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %141, label %92

92:                                               ; preds = %85, %75
  %93 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %94 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = call i32 @netdev_info(%struct.TYPE_8__* %95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %97 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %98 = load i32, i32* @WUCSR, align 4
  %99 = call i32 @smsc95xx_read_reg_nopm(%struct.usbnet* %97, i32 %98, i32* %8)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  br label %740

103:                                              ; preds = %92
  %104 = load i32, i32* @WUCSR_MPEN_, align 4
  %105 = load i32, i32* @WUCSR_WAKE_EN_, align 4
  %106 = or i32 %104, %105
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %8, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %8, align 4
  %110 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %111 = load i32, i32* @WUCSR, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @smsc95xx_write_reg_nopm(%struct.usbnet* %110, i32 %111, i32 %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %103
  br label %740

117:                                              ; preds = %103
  %118 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %119 = load i32, i32* @PM_CTRL, align 4
  %120 = call i32 @smsc95xx_read_reg_nopm(%struct.usbnet* %118, i32 %119, i32* %8)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %740

124:                                              ; preds = %117
  %125 = load i32, i32* @PM_CTL_ED_EN_, align 4
  %126 = load i32, i32* @PM_CTL_WOL_EN_, align 4
  %127 = or i32 %125, %126
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %8, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %8, align 4
  %131 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %132 = load i32, i32* @PM_CTRL, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @smsc95xx_write_reg_nopm(%struct.usbnet* %131, i32 %132, i32 %133)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %124
  br label %740

138:                                              ; preds = %124
  %139 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %140 = call i32 @smsc95xx_enter_suspend2(%struct.usbnet* %139)
  store i32 %140, i32* %10, align 4
  br label %740

141:                                              ; preds = %85, %82
  %142 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %7, align 8
  %143 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @WAKE_PHY, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %172

148:                                              ; preds = %141
  %149 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %150 = load i32, i32* @PHY_INT_MASK_ANEG_COMP_, align 4
  %151 = load i32, i32* @PHY_INT_MASK_LINK_DOWN_, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @smsc95xx_enable_phy_wakeup_interrupts(%struct.usbnet* %149, i32 %152)
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %10, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %148
  %157 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %158 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %157, i32 0, i32 0
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = call i32 @netdev_warn(%struct.TYPE_8__* %159, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %740

161:                                              ; preds = %148
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %161
  %165 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %166 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %165, i32 0, i32 0
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = call i32 @netdev_info(%struct.TYPE_8__* %167, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %169 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %170 = call i32 @smsc95xx_enter_suspend1(%struct.usbnet* %169)
  store i32 %170, i32* %10, align 4
  br label %740

171:                                              ; preds = %161
  br label %172

172:                                              ; preds = %171, %141
  %173 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %7, align 8
  %174 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @WAKE_BCAST, align 4
  %177 = load i32, i32* @WAKE_MCAST, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @WAKE_ARP, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @WAKE_UCAST, align 4
  %182 = or i32 %180, %181
  %183 = and i32 %175, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %607

185:                                              ; preds = %172
  %186 = load i32, i32* @GFP_KERNEL, align 4
  %187 = call i32* @kcalloc(i32 32, i32 4, i32 %186)
  store i32* %187, i32** %11, align 8
  %188 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %7, align 8
  %189 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @FEATURE_8_WAKEUP_FILTERS, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %185
  %195 = load i32, i32* @LAN9500A_WUFF_NUM, align 4
  br label %198

196:                                              ; preds = %185
  %197 = load i32, i32* @LAN9500_WUFF_NUM, align 4
  br label %198

198:                                              ; preds = %196, %194
  %199 = phi i32 [ %195, %194 ], [ %197, %196 ]
  store i32 %199, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %200 = load i32*, i32** %11, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %209, label %202

202:                                              ; preds = %198
  %203 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %204 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %203, i32 0, i32 0
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %204, align 8
  %206 = call i32 @netdev_warn(%struct.TYPE_8__* %205, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %207 = load i32, i32* @ENOMEM, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %10, align 4
  br label %740

209:                                              ; preds = %198
  %210 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %211 = call i32 @memset(i32* %210, i32 0, i32 8)
  %212 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %213 = call i32 @memset(i32* %212, i32 0, i32 8)
  %214 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %215 = call i32 @memset(i32* %214, i32 0, i32 16)
  %216 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %7, align 8
  %217 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @WAKE_BCAST, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %285

222:                                              ; preds = %209
  %223 = bitcast [6 x i32]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %223, i8* align 16 bitcast ([6 x i32]* @__const.smsc95xx_suspend.bcast to i8*), i64 24, i1 false)
  %224 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %225 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %224, i32 0, i32 0
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %225, align 8
  %227 = call i32 @netdev_info(%struct.TYPE_8__* %226, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %228 = load i32*, i32** %11, align 8
  %229 = load i32, i32* %17, align 4
  %230 = mul nsw i32 %229, 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %228, i64 %231
  store i32 63, i32* %232, align 4
  %233 = load i32*, i32** %11, align 8
  %234 = load i32, i32* %17, align 4
  %235 = mul nsw i32 %234, 4
  %236 = add nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %233, i64 %237
  store i32 0, i32* %238, align 4
  %239 = load i32*, i32** %11, align 8
  %240 = load i32, i32* %17, align 4
  %241 = mul nsw i32 %240, 4
  %242 = add nsw i32 %241, 2
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %239, i64 %243
  store i32 0, i32* %244, align 4
  %245 = load i32*, i32** %11, align 8
  %246 = load i32, i32* %17, align 4
  %247 = mul nsw i32 %246, 4
  %248 = add nsw i32 %247, 3
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %245, i64 %249
  store i32 0, i32* %250, align 4
  %251 = load i32, i32* %17, align 4
  %252 = srem i32 %251, 4
  %253 = mul nsw i32 %252, 8
  %254 = zext i32 %253 to i64
  %255 = shl i64 5, %254
  %256 = load i32, i32* %17, align 4
  %257 = sdiv i32 %256, 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = sext i32 %260 to i64
  %262 = or i64 %261, %255
  %263 = trunc i64 %262 to i32
  store i32 %263, i32* %259, align 4
  %264 = load i32, i32* %17, align 4
  %265 = srem i32 %264, 4
  %266 = mul nsw i32 %265, 8
  %267 = shl i32 0, %266
  %268 = load i32, i32* %17, align 4
  %269 = sdiv i32 %268, 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = or i32 %272, %267
  store i32 %273, i32* %271, align 4
  %274 = getelementptr inbounds [6 x i32], [6 x i32]* %18, i64 0, i64 0
  %275 = load i32, i32* %17, align 4
  %276 = call i32 @smsc_crc(i32* %274, i32 6, i32 %275)
  %277 = load i32, i32* %17, align 4
  %278 = sdiv i32 %277, 2
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = or i32 %281, %276
  store i32 %282, i32* %280, align 4
  %283 = load i32, i32* %17, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %17, align 4
  br label %285

285:                                              ; preds = %222, %209
  %286 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %7, align 8
  %287 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @WAKE_MCAST, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %355

292:                                              ; preds = %285
  %293 = bitcast [3 x i32]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %293, i8* align 4 bitcast ([3 x i32]* @__const.smsc95xx_suspend.mcast to i8*), i64 12, i1 false)
  %294 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %295 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %294, i32 0, i32 0
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %295, align 8
  %297 = call i32 @netdev_info(%struct.TYPE_8__* %296, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %298 = load i32*, i32** %11, align 8
  %299 = load i32, i32* %17, align 4
  %300 = mul nsw i32 %299, 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %298, i64 %301
  store i32 7, i32* %302, align 4
  %303 = load i32*, i32** %11, align 8
  %304 = load i32, i32* %17, align 4
  %305 = mul nsw i32 %304, 4
  %306 = add nsw i32 %305, 1
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %303, i64 %307
  store i32 0, i32* %308, align 4
  %309 = load i32*, i32** %11, align 8
  %310 = load i32, i32* %17, align 4
  %311 = mul nsw i32 %310, 4
  %312 = add nsw i32 %311, 2
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %309, i64 %313
  store i32 0, i32* %314, align 4
  %315 = load i32*, i32** %11, align 8
  %316 = load i32, i32* %17, align 4
  %317 = mul nsw i32 %316, 4
  %318 = add nsw i32 %317, 3
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %315, i64 %319
  store i32 0, i32* %320, align 4
  %321 = load i32, i32* %17, align 4
  %322 = srem i32 %321, 4
  %323 = mul nsw i32 %322, 8
  %324 = zext i32 %323 to i64
  %325 = shl i64 9, %324
  %326 = load i32, i32* %17, align 4
  %327 = sdiv i32 %326, 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = sext i32 %330 to i64
  %332 = or i64 %331, %325
  %333 = trunc i64 %332 to i32
  store i32 %333, i32* %329, align 4
  %334 = load i32, i32* %17, align 4
  %335 = srem i32 %334, 4
  %336 = mul nsw i32 %335, 8
  %337 = shl i32 0, %336
  %338 = load i32, i32* %17, align 4
  %339 = sdiv i32 %338, 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = or i32 %342, %337
  store i32 %343, i32* %341, align 4
  %344 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %345 = load i32, i32* %17, align 4
  %346 = call i32 @smsc_crc(i32* %344, i32 3, i32 %345)
  %347 = load i32, i32* %17, align 4
  %348 = sdiv i32 %347, 2
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = or i32 %351, %346
  store i32 %352, i32* %350, align 4
  %353 = load i32, i32* %17, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %17, align 4
  br label %355

355:                                              ; preds = %292, %285
  %356 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %7, align 8
  %357 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* @WAKE_ARP, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %425

362:                                              ; preds = %355
  %363 = bitcast [2 x i32]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %363, i8* align 4 bitcast ([2 x i32]* @__const.smsc95xx_suspend.arp to i8*), i64 8, i1 false)
  %364 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %365 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %364, i32 0, i32 0
  %366 = load %struct.TYPE_8__*, %struct.TYPE_8__** %365, align 8
  %367 = call i32 @netdev_info(%struct.TYPE_8__* %366, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %368 = load i32*, i32** %11, align 8
  %369 = load i32, i32* %17, align 4
  %370 = mul nsw i32 %369, 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %368, i64 %371
  store i32 3, i32* %372, align 4
  %373 = load i32*, i32** %11, align 8
  %374 = load i32, i32* %17, align 4
  %375 = mul nsw i32 %374, 4
  %376 = add nsw i32 %375, 1
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %373, i64 %377
  store i32 0, i32* %378, align 4
  %379 = load i32*, i32** %11, align 8
  %380 = load i32, i32* %17, align 4
  %381 = mul nsw i32 %380, 4
  %382 = add nsw i32 %381, 2
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %379, i64 %383
  store i32 0, i32* %384, align 4
  %385 = load i32*, i32** %11, align 8
  %386 = load i32, i32* %17, align 4
  %387 = mul nsw i32 %386, 4
  %388 = add nsw i32 %387, 3
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %385, i64 %389
  store i32 0, i32* %390, align 4
  %391 = load i32, i32* %17, align 4
  %392 = srem i32 %391, 4
  %393 = mul nsw i32 %392, 8
  %394 = zext i32 %393 to i64
  %395 = shl i64 5, %394
  %396 = load i32, i32* %17, align 4
  %397 = sdiv i32 %396, 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = sext i32 %400 to i64
  %402 = or i64 %401, %395
  %403 = trunc i64 %402 to i32
  store i32 %403, i32* %399, align 4
  %404 = load i32, i32* %17, align 4
  %405 = srem i32 %404, 4
  %406 = mul nsw i32 %405, 8
  %407 = shl i32 12, %406
  %408 = load i32, i32* %17, align 4
  %409 = sdiv i32 %408, 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %410
  %412 = load i32, i32* %411, align 4
  %413 = or i32 %412, %407
  store i32 %413, i32* %411, align 4
  %414 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %415 = load i32, i32* %17, align 4
  %416 = call i32 @smsc_crc(i32* %414, i32 2, i32 %415)
  %417 = load i32, i32* %17, align 4
  %418 = sdiv i32 %417, 2
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = or i32 %421, %416
  store i32 %422, i32* %420, align 4
  %423 = load i32, i32* %17, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %17, align 4
  br label %425

425:                                              ; preds = %362, %355
  %426 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %7, align 8
  %427 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = load i32, i32* @WAKE_UCAST, align 4
  %430 = and i32 %428, %429
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %499

432:                                              ; preds = %425
  %433 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %434 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %433, i32 0, i32 0
  %435 = load %struct.TYPE_8__*, %struct.TYPE_8__** %434, align 8
  %436 = call i32 @netdev_info(%struct.TYPE_8__* %435, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %437 = load i32*, i32** %11, align 8
  %438 = load i32, i32* %17, align 4
  %439 = mul nsw i32 %438, 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %437, i64 %440
  store i32 63, i32* %441, align 4
  %442 = load i32*, i32** %11, align 8
  %443 = load i32, i32* %17, align 4
  %444 = mul nsw i32 %443, 4
  %445 = add nsw i32 %444, 1
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i32, i32* %442, i64 %446
  store i32 0, i32* %447, align 4
  %448 = load i32*, i32** %11, align 8
  %449 = load i32, i32* %17, align 4
  %450 = mul nsw i32 %449, 4
  %451 = add nsw i32 %450, 2
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32, i32* %448, i64 %452
  store i32 0, i32* %453, align 4
  %454 = load i32*, i32** %11, align 8
  %455 = load i32, i32* %17, align 4
  %456 = mul nsw i32 %455, 4
  %457 = add nsw i32 %456, 3
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i32, i32* %454, i64 %458
  store i32 0, i32* %459, align 4
  %460 = load i32, i32* %17, align 4
  %461 = srem i32 %460, 4
  %462 = mul nsw i32 %461, 8
  %463 = zext i32 %462 to i64
  %464 = shl i64 1, %463
  %465 = load i32, i32* %17, align 4
  %466 = sdiv i32 %465, 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %467
  %469 = load i32, i32* %468, align 4
  %470 = sext i32 %469 to i64
  %471 = or i64 %470, %464
  %472 = trunc i64 %471 to i32
  store i32 %472, i32* %468, align 4
  %473 = load i32, i32* %17, align 4
  %474 = srem i32 %473, 4
  %475 = mul nsw i32 %474, 8
  %476 = shl i32 0, %475
  %477 = load i32, i32* %17, align 4
  %478 = sdiv i32 %477, 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %479
  %481 = load i32, i32* %480, align 4
  %482 = or i32 %481, %476
  store i32 %482, i32* %480, align 4
  %483 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %484 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %483, i32 0, i32 0
  %485 = load %struct.TYPE_8__*, %struct.TYPE_8__** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %485, i32 0, i32 0
  %487 = load i32*, i32** %486, align 8
  %488 = load i32, i32* @ETH_ALEN, align 4
  %489 = load i32, i32* %17, align 4
  %490 = call i32 @smsc_crc(i32* %487, i32 %488, i32 %489)
  %491 = load i32, i32* %17, align 4
  %492 = sdiv i32 %491, 2
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %493
  %495 = load i32, i32* %494, align 4
  %496 = or i32 %495, %490
  store i32 %496, i32* %494, align 4
  %497 = load i32, i32* %17, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %17, align 4
  br label %499

499:                                              ; preds = %432, %425
  store i32 0, i32* %16, align 4
  br label %500

500:                                              ; preds = %520, %499
  %501 = load i32, i32* %16, align 4
  %502 = load i32, i32* %15, align 4
  %503 = mul nsw i32 %502, 4
  %504 = icmp slt i32 %501, %503
  br i1 %504, label %505, label %523

505:                                              ; preds = %500
  %506 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %507 = load i32, i32* @WUFF, align 4
  %508 = load i32*, i32** %11, align 8
  %509 = load i32, i32* %16, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i32, i32* %508, i64 %510
  %512 = load i32, i32* %511, align 4
  %513 = call i32 @smsc95xx_write_reg_nopm(%struct.usbnet* %506, i32 %507, i32 %512)
  store i32 %513, i32* %10, align 4
  %514 = load i32, i32* %10, align 4
  %515 = icmp slt i32 %514, 0
  br i1 %515, label %516, label %519

516:                                              ; preds = %505
  %517 = load i32*, i32** %11, align 8
  %518 = call i32 @kfree(i32* %517)
  br label %740

519:                                              ; preds = %505
  br label %520

520:                                              ; preds = %519
  %521 = load i32, i32* %16, align 4
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %16, align 4
  br label %500

523:                                              ; preds = %500
  %524 = load i32*, i32** %11, align 8
  %525 = call i32 @kfree(i32* %524)
  store i32 0, i32* %16, align 4
  br label %526

526:                                              ; preds = %543, %523
  %527 = load i32, i32* %16, align 4
  %528 = load i32, i32* %15, align 4
  %529 = sdiv i32 %528, 4
  %530 = icmp slt i32 %527, %529
  br i1 %530, label %531, label %546

531:                                              ; preds = %526
  %532 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %533 = load i32, i32* @WUFF, align 4
  %534 = load i32, i32* %16, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %535
  %537 = load i32, i32* %536, align 4
  %538 = call i32 @smsc95xx_write_reg_nopm(%struct.usbnet* %532, i32 %533, i32 %537)
  store i32 %538, i32* %10, align 4
  %539 = load i32, i32* %10, align 4
  %540 = icmp slt i32 %539, 0
  br i1 %540, label %541, label %542

541:                                              ; preds = %531
  br label %740

542:                                              ; preds = %531
  br label %543

543:                                              ; preds = %542
  %544 = load i32, i32* %16, align 4
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* %16, align 4
  br label %526

546:                                              ; preds = %526
  store i32 0, i32* %16, align 4
  br label %547

547:                                              ; preds = %564, %546
  %548 = load i32, i32* %16, align 4
  %549 = load i32, i32* %15, align 4
  %550 = sdiv i32 %549, 4
  %551 = icmp slt i32 %548, %550
  br i1 %551, label %552, label %567

552:                                              ; preds = %547
  %553 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %554 = load i32, i32* @WUFF, align 4
  %555 = load i32, i32* %16, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %556
  %558 = load i32, i32* %557, align 4
  %559 = call i32 @smsc95xx_write_reg_nopm(%struct.usbnet* %553, i32 %554, i32 %558)
  store i32 %559, i32* %10, align 4
  %560 = load i32, i32* %10, align 4
  %561 = icmp slt i32 %560, 0
  br i1 %561, label %562, label %563

562:                                              ; preds = %552
  br label %740

563:                                              ; preds = %552
  br label %564

564:                                              ; preds = %563
  %565 = load i32, i32* %16, align 4
  %566 = add nsw i32 %565, 1
  store i32 %566, i32* %16, align 4
  br label %547

567:                                              ; preds = %547
  store i32 0, i32* %16, align 4
  br label %568

568:                                              ; preds = %585, %567
  %569 = load i32, i32* %16, align 4
  %570 = load i32, i32* %15, align 4
  %571 = sdiv i32 %570, 2
  %572 = icmp slt i32 %569, %571
  br i1 %572, label %573, label %588

573:                                              ; preds = %568
  %574 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %575 = load i32, i32* @WUFF, align 4
  %576 = load i32, i32* %16, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %577
  %579 = load i32, i32* %578, align 4
  %580 = call i32 @smsc95xx_write_reg_nopm(%struct.usbnet* %574, i32 %575, i32 %579)
  store i32 %580, i32* %10, align 4
  %581 = load i32, i32* %10, align 4
  %582 = icmp slt i32 %581, 0
  br i1 %582, label %583, label %584

583:                                              ; preds = %573
  br label %740

584:                                              ; preds = %573
  br label %585

585:                                              ; preds = %584
  %586 = load i32, i32* %16, align 4
  %587 = add nsw i32 %586, 1
  store i32 %587, i32* %16, align 4
  br label %568

588:                                              ; preds = %568
  %589 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %590 = load i32, i32* @WUCSR, align 4
  %591 = call i32 @smsc95xx_read_reg_nopm(%struct.usbnet* %589, i32 %590, i32* %8)
  store i32 %591, i32* %10, align 4
  %592 = load i32, i32* %10, align 4
  %593 = icmp slt i32 %592, 0
  br i1 %593, label %594, label %595

594:                                              ; preds = %588
  br label %740

595:                                              ; preds = %588
  %596 = load i32, i32* @WUCSR_WUFR_, align 4
  %597 = load i32, i32* %8, align 4
  %598 = or i32 %597, %596
  store i32 %598, i32* %8, align 4
  %599 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %600 = load i32, i32* @WUCSR, align 4
  %601 = load i32, i32* %8, align 4
  %602 = call i32 @smsc95xx_write_reg_nopm(%struct.usbnet* %599, i32 %600, i32 %601)
  store i32 %602, i32* %10, align 4
  %603 = load i32, i32* %10, align 4
  %604 = icmp slt i32 %603, 0
  br i1 %604, label %605, label %606

605:                                              ; preds = %595
  br label %740

606:                                              ; preds = %595
  br label %607

607:                                              ; preds = %606, %172
  %608 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %7, align 8
  %609 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %608, i32 0, i32 1
  %610 = load i32, i32* %609, align 4
  %611 = load i32, i32* @WAKE_MAGIC, align 4
  %612 = and i32 %610, %611
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %614, label %633

614:                                              ; preds = %607
  %615 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %616 = load i32, i32* @WUCSR, align 4
  %617 = call i32 @smsc95xx_read_reg_nopm(%struct.usbnet* %615, i32 %616, i32* %8)
  store i32 %617, i32* %10, align 4
  %618 = load i32, i32* %10, align 4
  %619 = icmp slt i32 %618, 0
  br i1 %619, label %620, label %621

620:                                              ; preds = %614
  br label %740

621:                                              ; preds = %614
  %622 = load i32, i32* @WUCSR_MPR_, align 4
  %623 = load i32, i32* %8, align 4
  %624 = or i32 %623, %622
  store i32 %624, i32* %8, align 4
  %625 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %626 = load i32, i32* @WUCSR, align 4
  %627 = load i32, i32* %8, align 4
  %628 = call i32 @smsc95xx_write_reg_nopm(%struct.usbnet* %625, i32 %626, i32 %627)
  store i32 %628, i32* %10, align 4
  %629 = load i32, i32* %10, align 4
  %630 = icmp slt i32 %629, 0
  br i1 %630, label %631, label %632

631:                                              ; preds = %621
  br label %740

632:                                              ; preds = %621
  br label %633

633:                                              ; preds = %632, %607
  %634 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %635 = load i32, i32* @WUCSR, align 4
  %636 = call i32 @smsc95xx_read_reg_nopm(%struct.usbnet* %634, i32 %635, i32* %8)
  store i32 %636, i32* %10, align 4
  %637 = load i32, i32* %10, align 4
  %638 = icmp slt i32 %637, 0
  br i1 %638, label %639, label %640

639:                                              ; preds = %633
  br label %740

640:                                              ; preds = %633
  %641 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %7, align 8
  %642 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %641, i32 0, i32 1
  %643 = load i32, i32* %642, align 4
  %644 = load i32, i32* @WAKE_BCAST, align 4
  %645 = load i32, i32* @WAKE_MCAST, align 4
  %646 = or i32 %644, %645
  %647 = load i32, i32* @WAKE_ARP, align 4
  %648 = or i32 %646, %647
  %649 = load i32, i32* @WAKE_UCAST, align 4
  %650 = or i32 %648, %649
  %651 = and i32 %643, %650
  %652 = icmp ne i32 %651, 0
  br i1 %652, label %653, label %661

653:                                              ; preds = %640
  %654 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %655 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %654, i32 0, i32 0
  %656 = load %struct.TYPE_8__*, %struct.TYPE_8__** %655, align 8
  %657 = call i32 @netdev_info(%struct.TYPE_8__* %656, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %658 = load i32, i32* @WUCSR_WAKE_EN_, align 4
  %659 = load i32, i32* %8, align 4
  %660 = or i32 %659, %658
  store i32 %660, i32* %8, align 4
  br label %670

661:                                              ; preds = %640
  %662 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %663 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %662, i32 0, i32 0
  %664 = load %struct.TYPE_8__*, %struct.TYPE_8__** %663, align 8
  %665 = call i32 @netdev_info(%struct.TYPE_8__* %664, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %666 = load i32, i32* @WUCSR_WAKE_EN_, align 4
  %667 = xor i32 %666, -1
  %668 = load i32, i32* %8, align 4
  %669 = and i32 %668, %667
  store i32 %669, i32* %8, align 4
  br label %670

670:                                              ; preds = %661, %653
  %671 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %7, align 8
  %672 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %671, i32 0, i32 1
  %673 = load i32, i32* %672, align 4
  %674 = load i32, i32* @WAKE_MAGIC, align 4
  %675 = and i32 %673, %674
  %676 = icmp ne i32 %675, 0
  br i1 %676, label %677, label %685

677:                                              ; preds = %670
  %678 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %679 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %678, i32 0, i32 0
  %680 = load %struct.TYPE_8__*, %struct.TYPE_8__** %679, align 8
  %681 = call i32 @netdev_info(%struct.TYPE_8__* %680, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %682 = load i32, i32* @WUCSR_MPEN_, align 4
  %683 = load i32, i32* %8, align 4
  %684 = or i32 %683, %682
  store i32 %684, i32* %8, align 4
  br label %694

685:                                              ; preds = %670
  %686 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %687 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %686, i32 0, i32 0
  %688 = load %struct.TYPE_8__*, %struct.TYPE_8__** %687, align 8
  %689 = call i32 @netdev_info(%struct.TYPE_8__* %688, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %690 = load i32, i32* @WUCSR_MPEN_, align 4
  %691 = xor i32 %690, -1
  %692 = load i32, i32* %8, align 4
  %693 = and i32 %692, %691
  store i32 %693, i32* %8, align 4
  br label %694

694:                                              ; preds = %685, %677
  %695 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %696 = load i32, i32* @WUCSR, align 4
  %697 = load i32, i32* %8, align 4
  %698 = call i32 @smsc95xx_write_reg_nopm(%struct.usbnet* %695, i32 %696, i32 %697)
  store i32 %698, i32* %10, align 4
  %699 = load i32, i32* %10, align 4
  %700 = icmp slt i32 %699, 0
  br i1 %700, label %701, label %702

701:                                              ; preds = %694
  br label %740

702:                                              ; preds = %694
  %703 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %704 = load i32, i32* @PM_CTRL, align 4
  %705 = call i32 @smsc95xx_read_reg_nopm(%struct.usbnet* %703, i32 %704, i32* %8)
  store i32 %705, i32* %10, align 4
  %706 = load i32, i32* %10, align 4
  %707 = icmp slt i32 %706, 0
  br i1 %707, label %708, label %709

708:                                              ; preds = %702
  br label %740

709:                                              ; preds = %702
  %710 = load i32, i32* @PM_CTL_WOL_EN_, align 4
  %711 = load i32, i32* %8, align 4
  %712 = or i32 %711, %710
  store i32 %712, i32* %8, align 4
  %713 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %7, align 8
  %714 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %713, i32 0, i32 1
  %715 = load i32, i32* %714, align 4
  %716 = load i32, i32* @WAKE_PHY, align 4
  %717 = and i32 %715, %716
  %718 = icmp ne i32 %717, 0
  br i1 %718, label %719, label %723

719:                                              ; preds = %709
  %720 = load i32, i32* @PM_CTL_ED_EN_, align 4
  %721 = load i32, i32* %8, align 4
  %722 = or i32 %721, %720
  store i32 %722, i32* %8, align 4
  br label %723

723:                                              ; preds = %719, %709
  %724 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %725 = load i32, i32* @PM_CTRL, align 4
  %726 = load i32, i32* %8, align 4
  %727 = call i32 @smsc95xx_write_reg_nopm(%struct.usbnet* %724, i32 %725, i32 %726)
  store i32 %727, i32* %10, align 4
  %728 = load i32, i32* %10, align 4
  %729 = icmp slt i32 %728, 0
  br i1 %729, label %730, label %731

730:                                              ; preds = %723
  br label %740

731:                                              ; preds = %723
  %732 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %733 = call i32 @smsc95xx_start_rx_path(%struct.usbnet* %732, i32 1)
  %734 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %735 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %734, i32 0, i32 0
  %736 = load %struct.TYPE_8__*, %struct.TYPE_8__** %735, align 8
  %737 = call i32 @netdev_info(%struct.TYPE_8__* %736, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  %738 = load %struct.usbnet*, %struct.usbnet** %6, align 8
  %739 = call i32 @smsc95xx_enter_suspend0(%struct.usbnet* %738)
  store i32 %739, i32* %10, align 4
  br label %740

740:                                              ; preds = %731, %730, %708, %701, %639, %631, %620, %605, %594, %583, %562, %541, %516, %202, %164, %156, %138, %137, %123, %116, %102, %71
  %741 = load i32, i32* %10, align 4
  %742 = icmp ne i32 %741, 0
  br i1 %742, label %743, label %751

743:                                              ; preds = %740
  %744 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %745 = load i64, i64* %744, align 8
  %746 = call i64 @PMSG_IS_AUTO(i64 %745)
  %747 = icmp ne i64 %746, 0
  br i1 %747, label %748, label %751

748:                                              ; preds = %743
  %749 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %750 = call i32 @usbnet_resume(%struct.usb_interface* %749)
  br label %751

751:                                              ; preds = %748, %743, %740
  %752 = load i32, i32* %10, align 4
  %753 = icmp ne i32 %752, 0
  br i1 %753, label %754, label %759

754:                                              ; preds = %751
  %755 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %7, align 8
  %756 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %755, i32 0, i32 2
  %757 = load i32, i32* @CARRIER_CHECK_DELAY, align 4
  %758 = call i32 @schedule_delayed_work(i32* %756, i32 %757)
  br label %759

759:                                              ; preds = %754, %751
  %760 = load i32, i32* %10, align 4
  store i32 %760, i32* %3, align 4
  br label %761

761:                                              ; preds = %759, %36
  %762 = load i32, i32* %3, align 4
  ret i32 %762
}

declare dso_local %struct.usbnet* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usbnet_suspend(%struct.usb_interface*, i64) #1

declare dso_local i32 @netdev_warn(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @smsc95xx_link_ok_nopm(%struct.usbnet*) #1

declare dso_local i32 @smsc95xx_autosuspend(%struct.usbnet*, i32) #1

declare dso_local i32 @netdev_info(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @smsc95xx_read_reg_nopm(%struct.usbnet*, i32, i32*) #1

declare dso_local i32 @smsc95xx_write_reg_nopm(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @smsc95xx_enter_suspend2(%struct.usbnet*) #1

declare dso_local i32 @smsc95xx_enable_phy_wakeup_interrupts(%struct.usbnet*, i32) #1

declare dso_local i32 @smsc95xx_enter_suspend1(%struct.usbnet*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @smsc_crc(i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @smsc95xx_start_rx_path(%struct.usbnet*, i32) #1

declare dso_local i32 @smsc95xx_enter_suspend0(%struct.usbnet*) #1

declare dso_local i64 @PMSG_IS_AUTO(i64) #1

declare dso_local i32 @usbnet_resume(%struct.usb_interface*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
