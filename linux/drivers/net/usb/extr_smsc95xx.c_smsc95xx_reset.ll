; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__*, i64* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.smsc95xx_priv = type { i32 }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"entering smsc95xx_reset\0A\00", align 1
@HW_CFG = common dso_local global i32 0, align 4
@HW_CFG_LRST_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"timeout waiting for completion of Lite Reset\0A\00", align 1
@PM_CTRL = common dso_local global i32 0, align 4
@PM_CTL_PHY_RST_ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"timeout waiting for PHY Reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"MAC Address: %pM\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Read Value from HW_CFG : 0x%08x\0A\00", align 1
@HW_CFG_BIR_ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [58 x i8] c"Read Value from HW_CFG after writing HW_CFG_BIR_: 0x%08x\0A\00", align 1
@turbo_mode = common dso_local global i64 0, align 8
@MAX_SINGLE_PACKET_SIZE = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@DEFAULT_HS_BURST_CAP_SIZE = common dso_local global i32 0, align 4
@HS_USB_PKT_SIZE = common dso_local global i32 0, align 4
@DEFAULT_FS_BURST_CAP_SIZE = common dso_local global i32 0, align 4
@FS_USB_PKT_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"rx_urb_size=%ld\0A\00", align 1
@BURST_CAP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c"Read Value from BURST_CAP after writing: 0x%08x\0A\00", align 1
@BULK_IN_DLY = common dso_local global i32 0, align 4
@DEFAULT_BULK_IN_DELAY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [51 x i8] c"Read Value from BULK_IN_DLY after writing: 0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Read Value from HW_CFG: 0x%08x\0A\00", align 1
@HW_CFG_MEF_ = common dso_local global i32 0, align 4
@HW_CFG_BCE_ = common dso_local global i32 0, align 4
@HW_CFG_RXDOFF_ = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [46 x i8] c"Read Value from HW_CFG after writing: 0x%08x\0A\00", align 1
@INT_STS = common dso_local global i32 0, align 4
@INT_STS_CLEAR_ALL_ = common dso_local global i32 0, align 4
@ID_REV = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"ID_REV = 0x%08x\0A\00", align 1
@LED_GPIO_CFG_SPD_LED = common dso_local global i32 0, align 4
@LED_GPIO_CFG_LNK_LED = common dso_local global i32 0, align 4
@LED_GPIO_CFG_FDX_LED = common dso_local global i32 0, align 4
@LED_GPIO_CFG = common dso_local global i32 0, align 4
@FLOW = common dso_local global i32 0, align 4
@AFC_CFG = common dso_local global i32 0, align 4
@AFC_CFG_DEFAULT = common dso_local global i32 0, align 4
@MAC_CR = common dso_local global i32 0, align 4
@VLAN1 = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [41 x i8] c"Failed to set checksum offload features\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Failed to init PHY\0A\00", align 1
@INT_EP_CTL = common dso_local global i32 0, align 4
@INT_EP_CTL_PHY_INT_ = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [25 x i8] c"Failed to start TX path\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Failed to start RX path\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"smsc95xx_reset, return 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @smsc95xx_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc95xx_reset(%struct.usbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.smsc95xx_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  %10 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %11 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %10, i32 0, i32 3
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.smsc95xx_priv*
  store %struct.smsc95xx_priv* %15, %struct.smsc95xx_priv** %4, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %17 = load i32, i32* @ifup, align 4
  %18 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %19 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = call i32 (%struct.usbnet*, i32, %struct.TYPE_7__*, i8*, ...) @netif_dbg(%struct.usbnet* %16, i32 %17, %struct.TYPE_7__* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %23 = load i32, i32* @HW_CFG, align 4
  %24 = load i32, i32* @HW_CFG_LRST_, align 4
  %25 = call i32 @smsc95xx_write_reg(%struct.usbnet* %22, i32 %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %2, align 4
  br label %463

30:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %51, %30
  %32 = call i32 @msleep(i32 10)
  %33 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %34 = load i32, i32* @HW_CFG, align 4
  %35 = call i32 @smsc95xx_read_reg(%struct.usbnet* %33, i32 %34, i32* %5)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %2, align 4
  br label %463

40:                                               ; preds = %31
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @HW_CFG_LRST_, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 100
  br label %51

51:                                               ; preds = %48, %43
  %52 = phi i1 [ false, %43 ], [ %50, %48 ]
  br i1 %52, label %31, label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %9, align 4
  %55 = icmp sge i32 %54, 100
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %58 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = call i32 @netdev_warn(%struct.TYPE_7__* %59, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %2, align 4
  br label %463

62:                                               ; preds = %53
  %63 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %64 = load i32, i32* @PM_CTRL, align 4
  %65 = load i32, i32* @PM_CTL_PHY_RST_, align 4
  %66 = call i32 @smsc95xx_write_reg(%struct.usbnet* %63, i32 %64, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %2, align 4
  br label %463

71:                                               ; preds = %62
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %92, %71
  %73 = call i32 @msleep(i32 10)
  %74 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %75 = load i32, i32* @PM_CTRL, align 4
  %76 = call i32 @smsc95xx_read_reg(%struct.usbnet* %74, i32 %75, i32* %5)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %2, align 4
  br label %463

81:                                               ; preds = %72
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @PM_CTL_PHY_RST_, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %90, 100
  br label %92

92:                                               ; preds = %89, %84
  %93 = phi i1 [ false, %84 ], [ %91, %89 ]
  br i1 %93, label %72, label %94

94:                                               ; preds = %92
  %95 = load i32, i32* %9, align 4
  %96 = icmp sge i32 %95, 100
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %99 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %98, i32 0, i32 1
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = call i32 @netdev_warn(%struct.TYPE_7__* %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %2, align 4
  br label %463

103:                                              ; preds = %94
  %104 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %105 = call i32 @smsc95xx_set_mac_address(%struct.usbnet* %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %2, align 4
  br label %463

110:                                              ; preds = %103
  %111 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %112 = load i32, i32* @ifup, align 4
  %113 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %114 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %113, i32 0, i32 1
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %117 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %116, i32 0, i32 1
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (%struct.usbnet*, i32, %struct.TYPE_7__*, i8*, ...) @netif_dbg(%struct.usbnet* %111, i32 %112, %struct.TYPE_7__* %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %120)
  %122 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %123 = load i32, i32* @HW_CFG, align 4
  %124 = call i32 @smsc95xx_read_reg(%struct.usbnet* %122, i32 %123, i32* %5)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %110
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %2, align 4
  br label %463

129:                                              ; preds = %110
  %130 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %131 = load i32, i32* @ifup, align 4
  %132 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %133 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %132, i32 0, i32 1
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = call i32 (%struct.usbnet*, i32, %struct.TYPE_7__*, i8*, ...) @netif_dbg(%struct.usbnet* %130, i32 %131, %struct.TYPE_7__* %134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @HW_CFG_BIR_, align 4
  %138 = load i32, i32* %5, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %5, align 4
  %140 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %141 = load i32, i32* @HW_CFG, align 4
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @smsc95xx_write_reg(%struct.usbnet* %140, i32 %141, i32 %142)
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %129
  %147 = load i32, i32* %8, align 4
  store i32 %147, i32* %2, align 4
  br label %463

148:                                              ; preds = %129
  %149 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %150 = load i32, i32* @HW_CFG, align 4
  %151 = call i32 @smsc95xx_read_reg(%struct.usbnet* %149, i32 %150, i32* %5)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = load i32, i32* %8, align 4
  store i32 %155, i32* %2, align 4
  br label %463

156:                                              ; preds = %148
  %157 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %158 = load i32, i32* @ifup, align 4
  %159 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %160 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %159, i32 0, i32 1
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = call i32 (%struct.usbnet*, i32, %struct.TYPE_7__*, i8*, ...) @netif_dbg(%struct.usbnet* %157, i32 %158, %struct.TYPE_7__* %161, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %162)
  %164 = load i64, i64* @turbo_mode, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %156
  store i32 0, i32* %7, align 4
  %167 = load i32, i32* @MAX_SINGLE_PACKET_SIZE, align 4
  %168 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %169 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  br label %193

170:                                              ; preds = %156
  %171 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %172 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %171, i32 0, i32 2
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @USB_SPEED_HIGH, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %170
  %179 = load i32, i32* @DEFAULT_HS_BURST_CAP_SIZE, align 4
  %180 = load i32, i32* @HS_USB_PKT_SIZE, align 4
  %181 = sdiv i32 %179, %180
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* @DEFAULT_HS_BURST_CAP_SIZE, align 4
  %183 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %184 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  br label %192

185:                                              ; preds = %170
  %186 = load i32, i32* @DEFAULT_FS_BURST_CAP_SIZE, align 4
  %187 = load i32, i32* @FS_USB_PKT_SIZE, align 4
  %188 = sdiv i32 %186, %187
  store i32 %188, i32* %7, align 4
  %189 = load i32, i32* @DEFAULT_FS_BURST_CAP_SIZE, align 4
  %190 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %191 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  br label %192

192:                                              ; preds = %185, %178
  br label %193

193:                                              ; preds = %192, %166
  %194 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %195 = load i32, i32* @ifup, align 4
  %196 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %197 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %196, i32 0, i32 1
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  %199 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %200 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 (%struct.usbnet*, i32, %struct.TYPE_7__*, i8*, ...) @netif_dbg(%struct.usbnet* %194, i32 %195, %struct.TYPE_7__* %198, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %201)
  %203 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %204 = load i32, i32* @BURST_CAP, align 4
  %205 = load i32, i32* %7, align 4
  %206 = call i32 @smsc95xx_write_reg(%struct.usbnet* %203, i32 %204, i32 %205)
  store i32 %206, i32* %8, align 4
  %207 = load i32, i32* %8, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %193
  %210 = load i32, i32* %8, align 4
  store i32 %210, i32* %2, align 4
  br label %463

211:                                              ; preds = %193
  %212 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %213 = load i32, i32* @BURST_CAP, align 4
  %214 = call i32 @smsc95xx_read_reg(%struct.usbnet* %212, i32 %213, i32* %5)
  store i32 %214, i32* %8, align 4
  %215 = load i32, i32* %8, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %211
  %218 = load i32, i32* %8, align 4
  store i32 %218, i32* %2, align 4
  br label %463

219:                                              ; preds = %211
  %220 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %221 = load i32, i32* @ifup, align 4
  %222 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %223 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %222, i32 0, i32 1
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  %225 = load i32, i32* %5, align 4
  %226 = call i32 (%struct.usbnet*, i32, %struct.TYPE_7__*, i8*, ...) @netif_dbg(%struct.usbnet* %220, i32 %221, %struct.TYPE_7__* %224, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %225)
  %227 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %228 = load i32, i32* @BULK_IN_DLY, align 4
  %229 = load i32, i32* @DEFAULT_BULK_IN_DELAY, align 4
  %230 = call i32 @smsc95xx_write_reg(%struct.usbnet* %227, i32 %228, i32 %229)
  store i32 %230, i32* %8, align 4
  %231 = load i32, i32* %8, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %219
  %234 = load i32, i32* %8, align 4
  store i32 %234, i32* %2, align 4
  br label %463

235:                                              ; preds = %219
  %236 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %237 = load i32, i32* @BULK_IN_DLY, align 4
  %238 = call i32 @smsc95xx_read_reg(%struct.usbnet* %236, i32 %237, i32* %5)
  store i32 %238, i32* %8, align 4
  %239 = load i32, i32* %8, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %235
  %242 = load i32, i32* %8, align 4
  store i32 %242, i32* %2, align 4
  br label %463

243:                                              ; preds = %235
  %244 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %245 = load i32, i32* @ifup, align 4
  %246 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %247 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %246, i32 0, i32 1
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %247, align 8
  %249 = load i32, i32* %5, align 4
  %250 = call i32 (%struct.usbnet*, i32, %struct.TYPE_7__*, i8*, ...) @netif_dbg(%struct.usbnet* %244, i32 %245, %struct.TYPE_7__* %248, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %249)
  %251 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %252 = load i32, i32* @HW_CFG, align 4
  %253 = call i32 @smsc95xx_read_reg(%struct.usbnet* %251, i32 %252, i32* %5)
  store i32 %253, i32* %8, align 4
  %254 = load i32, i32* %8, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %243
  %257 = load i32, i32* %8, align 4
  store i32 %257, i32* %2, align 4
  br label %463

258:                                              ; preds = %243
  %259 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %260 = load i32, i32* @ifup, align 4
  %261 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %262 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %261, i32 0, i32 1
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %262, align 8
  %264 = load i32, i32* %5, align 4
  %265 = call i32 (%struct.usbnet*, i32, %struct.TYPE_7__*, i8*, ...) @netif_dbg(%struct.usbnet* %259, i32 %260, %struct.TYPE_7__* %263, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %264)
  %266 = load i64, i64* @turbo_mode, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %258
  %269 = load i32, i32* @HW_CFG_MEF_, align 4
  %270 = load i32, i32* @HW_CFG_BCE_, align 4
  %271 = or i32 %269, %270
  %272 = load i32, i32* %5, align 4
  %273 = or i32 %272, %271
  store i32 %273, i32* %5, align 4
  br label %274

274:                                              ; preds = %268, %258
  %275 = load i32, i32* @HW_CFG_RXDOFF_, align 4
  %276 = xor i32 %275, -1
  %277 = load i32, i32* %5, align 4
  %278 = and i32 %277, %276
  store i32 %278, i32* %5, align 4
  %279 = load i32, i32* @NET_IP_ALIGN, align 4
  %280 = shl i32 %279, 9
  %281 = load i32, i32* %5, align 4
  %282 = or i32 %281, %280
  store i32 %282, i32* %5, align 4
  %283 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %284 = load i32, i32* @HW_CFG, align 4
  %285 = load i32, i32* %5, align 4
  %286 = call i32 @smsc95xx_write_reg(%struct.usbnet* %283, i32 %284, i32 %285)
  store i32 %286, i32* %8, align 4
  %287 = load i32, i32* %8, align 4
  %288 = icmp slt i32 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %274
  %290 = load i32, i32* %8, align 4
  store i32 %290, i32* %2, align 4
  br label %463

291:                                              ; preds = %274
  %292 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %293 = load i32, i32* @HW_CFG, align 4
  %294 = call i32 @smsc95xx_read_reg(%struct.usbnet* %292, i32 %293, i32* %5)
  store i32 %294, i32* %8, align 4
  %295 = load i32, i32* %8, align 4
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %291
  %298 = load i32, i32* %8, align 4
  store i32 %298, i32* %2, align 4
  br label %463

299:                                              ; preds = %291
  %300 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %301 = load i32, i32* @ifup, align 4
  %302 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %303 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %302, i32 0, i32 1
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %303, align 8
  %305 = load i32, i32* %5, align 4
  %306 = call i32 (%struct.usbnet*, i32, %struct.TYPE_7__*, i8*, ...) @netif_dbg(%struct.usbnet* %300, i32 %301, %struct.TYPE_7__* %304, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i32 %305)
  %307 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %308 = load i32, i32* @INT_STS, align 4
  %309 = load i32, i32* @INT_STS_CLEAR_ALL_, align 4
  %310 = call i32 @smsc95xx_write_reg(%struct.usbnet* %307, i32 %308, i32 %309)
  store i32 %310, i32* %8, align 4
  %311 = load i32, i32* %8, align 4
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %299
  %314 = load i32, i32* %8, align 4
  store i32 %314, i32* %2, align 4
  br label %463

315:                                              ; preds = %299
  %316 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %317 = load i32, i32* @ID_REV, align 4
  %318 = call i32 @smsc95xx_read_reg(%struct.usbnet* %316, i32 %317, i32* %5)
  store i32 %318, i32* %8, align 4
  %319 = load i32, i32* %8, align 4
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %315
  %322 = load i32, i32* %8, align 4
  store i32 %322, i32* %2, align 4
  br label %463

323:                                              ; preds = %315
  %324 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %325 = load i32, i32* @ifup, align 4
  %326 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %327 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %326, i32 0, i32 1
  %328 = load %struct.TYPE_7__*, %struct.TYPE_7__** %327, align 8
  %329 = load i32, i32* %5, align 4
  %330 = call i32 (%struct.usbnet*, i32, %struct.TYPE_7__*, i8*, ...) @netif_dbg(%struct.usbnet* %324, i32 %325, %struct.TYPE_7__* %328, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %329)
  %331 = load i32, i32* @LED_GPIO_CFG_SPD_LED, align 4
  %332 = load i32, i32* @LED_GPIO_CFG_LNK_LED, align 4
  %333 = or i32 %331, %332
  %334 = load i32, i32* @LED_GPIO_CFG_FDX_LED, align 4
  %335 = or i32 %333, %334
  store i32 %335, i32* %6, align 4
  %336 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %337 = load i32, i32* @LED_GPIO_CFG, align 4
  %338 = load i32, i32* %6, align 4
  %339 = call i32 @smsc95xx_write_reg(%struct.usbnet* %336, i32 %337, i32 %338)
  store i32 %339, i32* %8, align 4
  %340 = load i32, i32* %8, align 4
  %341 = icmp slt i32 %340, 0
  br i1 %341, label %342, label %344

342:                                              ; preds = %323
  %343 = load i32, i32* %8, align 4
  store i32 %343, i32* %2, align 4
  br label %463

344:                                              ; preds = %323
  %345 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %346 = load i32, i32* @FLOW, align 4
  %347 = call i32 @smsc95xx_write_reg(%struct.usbnet* %345, i32 %346, i32 0)
  store i32 %347, i32* %8, align 4
  %348 = load i32, i32* %8, align 4
  %349 = icmp slt i32 %348, 0
  br i1 %349, label %350, label %352

350:                                              ; preds = %344
  %351 = load i32, i32* %8, align 4
  store i32 %351, i32* %2, align 4
  br label %463

352:                                              ; preds = %344
  %353 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %354 = load i32, i32* @AFC_CFG, align 4
  %355 = load i32, i32* @AFC_CFG_DEFAULT, align 4
  %356 = call i32 @smsc95xx_write_reg(%struct.usbnet* %353, i32 %354, i32 %355)
  store i32 %356, i32* %8, align 4
  %357 = load i32, i32* %8, align 4
  %358 = icmp slt i32 %357, 0
  br i1 %358, label %359, label %361

359:                                              ; preds = %352
  %360 = load i32, i32* %8, align 4
  store i32 %360, i32* %2, align 4
  br label %463

361:                                              ; preds = %352
  %362 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %363 = load i32, i32* @MAC_CR, align 4
  %364 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %4, align 8
  %365 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %364, i32 0, i32 0
  %366 = call i32 @smsc95xx_read_reg(%struct.usbnet* %362, i32 %363, i32* %365)
  store i32 %366, i32* %8, align 4
  %367 = load i32, i32* %8, align 4
  %368 = icmp slt i32 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %361
  %370 = load i32, i32* %8, align 4
  store i32 %370, i32* %2, align 4
  br label %463

371:                                              ; preds = %361
  %372 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %373 = load i32, i32* @VLAN1, align 4
  %374 = load i64, i64* @ETH_P_8021Q, align 8
  %375 = trunc i64 %374 to i32
  %376 = call i32 @smsc95xx_write_reg(%struct.usbnet* %372, i32 %373, i32 %375)
  store i32 %376, i32* %8, align 4
  %377 = load i32, i32* %8, align 4
  %378 = icmp slt i32 %377, 0
  br i1 %378, label %379, label %381

379:                                              ; preds = %371
  %380 = load i32, i32* %8, align 4
  store i32 %380, i32* %2, align 4
  br label %463

381:                                              ; preds = %371
  %382 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %383 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %382, i32 0, i32 1
  %384 = load %struct.TYPE_7__*, %struct.TYPE_7__** %383, align 8
  %385 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %386 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %385, i32 0, i32 1
  %387 = load %struct.TYPE_7__*, %struct.TYPE_7__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @smsc95xx_set_features(%struct.TYPE_7__* %384, i32 %389)
  store i32 %390, i32* %8, align 4
  %391 = load i32, i32* %8, align 4
  %392 = icmp slt i32 %391, 0
  br i1 %392, label %393, label %399

393:                                              ; preds = %381
  %394 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %395 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %394, i32 0, i32 1
  %396 = load %struct.TYPE_7__*, %struct.TYPE_7__** %395, align 8
  %397 = call i32 @netdev_warn(%struct.TYPE_7__* %396, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  %398 = load i32, i32* %8, align 4
  store i32 %398, i32* %2, align 4
  br label %463

399:                                              ; preds = %381
  %400 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %401 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %400, i32 0, i32 1
  %402 = load %struct.TYPE_7__*, %struct.TYPE_7__** %401, align 8
  %403 = call i32 @smsc95xx_set_multicast(%struct.TYPE_7__* %402)
  %404 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %405 = call i32 @smsc95xx_phy_initialize(%struct.usbnet* %404)
  store i32 %405, i32* %8, align 4
  %406 = load i32, i32* %8, align 4
  %407 = icmp slt i32 %406, 0
  br i1 %407, label %408, label %414

408:                                              ; preds = %399
  %409 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %410 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %409, i32 0, i32 1
  %411 = load %struct.TYPE_7__*, %struct.TYPE_7__** %410, align 8
  %412 = call i32 @netdev_warn(%struct.TYPE_7__* %411, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %413 = load i32, i32* %8, align 4
  store i32 %413, i32* %2, align 4
  br label %463

414:                                              ; preds = %399
  %415 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %416 = load i32, i32* @INT_EP_CTL, align 4
  %417 = call i32 @smsc95xx_read_reg(%struct.usbnet* %415, i32 %416, i32* %5)
  store i32 %417, i32* %8, align 4
  %418 = load i32, i32* %8, align 4
  %419 = icmp slt i32 %418, 0
  br i1 %419, label %420, label %422

420:                                              ; preds = %414
  %421 = load i32, i32* %8, align 4
  store i32 %421, i32* %2, align 4
  br label %463

422:                                              ; preds = %414
  %423 = load i32, i32* @INT_EP_CTL_PHY_INT_, align 4
  %424 = load i32, i32* %5, align 4
  %425 = or i32 %424, %423
  store i32 %425, i32* %5, align 4
  %426 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %427 = load i32, i32* @INT_EP_CTL, align 4
  %428 = load i32, i32* %5, align 4
  %429 = call i32 @smsc95xx_write_reg(%struct.usbnet* %426, i32 %427, i32 %428)
  store i32 %429, i32* %8, align 4
  %430 = load i32, i32* %8, align 4
  %431 = icmp slt i32 %430, 0
  br i1 %431, label %432, label %434

432:                                              ; preds = %422
  %433 = load i32, i32* %8, align 4
  store i32 %433, i32* %2, align 4
  br label %463

434:                                              ; preds = %422
  %435 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %436 = call i32 @smsc95xx_start_tx_path(%struct.usbnet* %435)
  store i32 %436, i32* %8, align 4
  %437 = load i32, i32* %8, align 4
  %438 = icmp slt i32 %437, 0
  br i1 %438, label %439, label %445

439:                                              ; preds = %434
  %440 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %441 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %440, i32 0, i32 1
  %442 = load %struct.TYPE_7__*, %struct.TYPE_7__** %441, align 8
  %443 = call i32 @netdev_warn(%struct.TYPE_7__* %442, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %444 = load i32, i32* %8, align 4
  store i32 %444, i32* %2, align 4
  br label %463

445:                                              ; preds = %434
  %446 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %447 = call i32 @smsc95xx_start_rx_path(%struct.usbnet* %446, i32 0)
  store i32 %447, i32* %8, align 4
  %448 = load i32, i32* %8, align 4
  %449 = icmp slt i32 %448, 0
  br i1 %449, label %450, label %456

450:                                              ; preds = %445
  %451 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %452 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %451, i32 0, i32 1
  %453 = load %struct.TYPE_7__*, %struct.TYPE_7__** %452, align 8
  %454 = call i32 @netdev_warn(%struct.TYPE_7__* %453, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  %455 = load i32, i32* %8, align 4
  store i32 %455, i32* %2, align 4
  br label %463

456:                                              ; preds = %445
  %457 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %458 = load i32, i32* @ifup, align 4
  %459 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %460 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %459, i32 0, i32 1
  %461 = load %struct.TYPE_7__*, %struct.TYPE_7__** %460, align 8
  %462 = call i32 (%struct.usbnet*, i32, %struct.TYPE_7__*, i8*, ...) @netif_dbg(%struct.usbnet* %457, i32 %458, %struct.TYPE_7__* %461, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %463

463:                                              ; preds = %456, %450, %439, %432, %420, %408, %393, %379, %369, %359, %350, %342, %321, %313, %297, %289, %256, %241, %233, %217, %209, %154, %146, %127, %108, %97, %79, %69, %56, %38, %28
  %464 = load i32, i32* %2, align 4
  ret i32 %464
}

declare dso_local i32 @netif_dbg(%struct.usbnet*, i32, %struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @smsc95xx_write_reg(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @smsc95xx_read_reg(%struct.usbnet*, i32, i32*) #1

declare dso_local i32 @netdev_warn(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @smsc95xx_set_mac_address(%struct.usbnet*) #1

declare dso_local i32 @smsc95xx_set_features(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @smsc95xx_set_multicast(%struct.TYPE_7__*) #1

declare dso_local i32 @smsc95xx_phy_initialize(%struct.usbnet*) #1

declare dso_local i32 @smsc95xx_start_tx_path(%struct.usbnet*) #1

declare dso_local i32 @smsc95xx_start_rx_path(%struct.usbnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
