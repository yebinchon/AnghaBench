; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_main.c_arc_emac_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_main.c_arc_emac_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32*, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.resource = type { i32 }
%struct.device_node = type { i32 }
%struct.phy_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.arc_emac_priv = type { i8*, i64, i32, i64, i64, i64, i64, %struct.device* }

@.str = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"failed to retrieve phy description from device tree\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"failed to retrieve registers base from device tree\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"failed to retrieve <irq> value from device tree\0A\00", align 1
@arc_emac_netdev_ops = common dso_local global i32 0, align 4
@arc_emac_ethtool_ops = common dso_local global i32 0, align 4
@TX_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Registers base address is 0x%p\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"failed to enable clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"failed to retrieve <clock-frequency> from device tree\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@R_ID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"ARC EMAC not detected, id=0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"ARC EMAC detected with id: 0x%x\0A\00", align 1
@R_POLLRATE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"IRQ is %d\0A\00", align 1
@arc_emac_intr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"could not allocate IRQ\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"MAC address is now %pM\0A\00", align 1
@RX_RING_SZ = common dso_local global i64 0, align 8
@TX_RING_SZ = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [33 x i8] c"failed to allocate data buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RX_BD_NUM = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [47 x i8] c"EMAC Device addr: Rx Ring [0x%x], Tx Ring[%x]\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"failed to probe MII bus\0A\00", align 1
@arc_emac_adjust_link = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [25 x i8] c"of_phy_connect() failed\0A\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"connected to %s phy with id 0x%x\0A\00", align 1
@arc_emac_poll = common dso_local global i32 0, align 4
@ARC_EMAC_NAPI_WEIGHT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [35 x i8] c"failed to register network device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arc_emac_probe(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.resource, align 4
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.phy_device*, align 8
  %10 = alloca %struct.arc_emac_priv*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %6, align 8
  store %struct.phy_device* null, %struct.phy_device** %9, align 8
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.device_node* @of_parse_phandle(i32 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %23, %struct.device_node** %8, align 8
  %24 = load %struct.device_node*, %struct.device_node** %8, align 8
  %25 = icmp ne %struct.device_node* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %306

31:                                               ; preds = %2
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = getelementptr inbounds %struct.device, %struct.device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @of_address_to_resource(i32 %34, i32 0, %struct.resource* %7)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %39, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %15, align 4
  br label %302

43:                                               ; preds = %31
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = getelementptr inbounds %struct.device, %struct.device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @irq_of_parse_and_map(i32 %46, i32 0)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %43
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %15, align 4
  br label %302

55:                                               ; preds = %43
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 5
  store i32* @arc_emac_netdev_ops, i32** %57, align 8
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 4
  store i32* @arc_emac_ethtool_ops, i32** %59, align 8
  %60 = load i32, i32* @TX_TIMEOUT, align 4
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = call %struct.arc_emac_priv* @netdev_priv(%struct.net_device* %63)
  store %struct.arc_emac_priv* %64, %struct.arc_emac_priv** %10, align 8
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %10, align 8
  %67 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %66, i32 0, i32 7
  store %struct.device* %65, %struct.device** %67, align 8
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = call i8* @devm_ioremap_resource(%struct.device* %68, %struct.resource* %7)
  %70 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %10, align 8
  %71 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %10, align 8
  %73 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @IS_ERR(i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %55
  %78 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %10, align 8
  %79 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @PTR_ERR(i8* %80)
  store i32 %81, i32* %15, align 4
  br label %302

82:                                               ; preds = %55
  %83 = load %struct.device*, %struct.device** %6, align 8
  %84 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %10, align 8
  %85 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %86)
  %88 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %10, align 8
  %89 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %82
  %93 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %10, align 8
  %94 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @clk_prepare_enable(i64 %95)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load %struct.device*, %struct.device** %6, align 8
  %101 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %302

102:                                              ; preds = %92
  %103 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %10, align 8
  %104 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @clk_get_rate(i64 %105)
  store i32 %106, i32* %13, align 4
  br label %119

107:                                              ; preds = %82
  %108 = load %struct.device*, %struct.device** %6, align 8
  %109 = getelementptr inbounds %struct.device, %struct.device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @of_property_read_u32(i32 %110, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32* %13)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load %struct.device*, %struct.device** %6, align 8
  %115 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %114, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %15, align 4
  br label %302

118:                                              ; preds = %107
  br label %119

119:                                              ; preds = %118, %102
  %120 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %10, align 8
  %121 = load i32, i32* @R_ID, align 4
  %122 = call i32 @arc_reg_get(%struct.arc_emac_priv* %120, i32 %121)
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp eq i32 %123, 392450
  br i1 %124, label %134, label %125

125:                                              ; preds = %119
  %126 = load i32, i32* %12, align 4
  %127 = icmp eq i32 %126, 523522
  br i1 %127, label %134, label %128

128:                                              ; preds = %125
  %129 = load %struct.device*, %struct.device** %6, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %129, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @ENODEV, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %15, align 4
  br label %291

134:                                              ; preds = %125, %119
  %135 = load %struct.device*, %struct.device** %6, align 8
  %136 = load i32, i32* %12, align 4
  %137 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %135, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %136)
  %138 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %10, align 8
  %139 = load i32, i32* @R_POLLRATE, align 4
  %140 = load i32, i32* %13, align 4
  %141 = udiv i32 %140, 1000000
  %142 = call i32 @arc_reg_set(%struct.arc_emac_priv* %138, i32 %139, i32 %141)
  %143 = load i32, i32* %14, align 4
  %144 = load %struct.net_device*, %struct.net_device** %4, align 8
  %145 = getelementptr inbounds %struct.net_device, %struct.net_device* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.device*, %struct.device** %6, align 8
  %147 = load %struct.net_device*, %struct.net_device** %4, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %146, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %149)
  %151 = load %struct.device*, %struct.device** %6, align 8
  %152 = load %struct.net_device*, %struct.net_device** %4, align 8
  %153 = getelementptr inbounds %struct.net_device, %struct.net_device* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @arc_emac_intr, align 4
  %156 = load %struct.net_device*, %struct.net_device** %4, align 8
  %157 = getelementptr inbounds %struct.net_device, %struct.net_device* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.net_device*, %struct.net_device** %4, align 8
  %160 = call i32 @devm_request_irq(%struct.device* %151, i32 %154, i32 %155, i32 0, i32 %158, %struct.net_device* %159)
  store i32 %160, i32* %15, align 4
  %161 = load i32, i32* %15, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %134
  %164 = load %struct.device*, %struct.device** %6, align 8
  %165 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %164, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  br label %291

166:                                              ; preds = %134
  %167 = load %struct.device*, %struct.device** %6, align 8
  %168 = getelementptr inbounds %struct.device, %struct.device* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i8* @of_get_mac_address(i32 %169)
  store i8* %170, i8** %11, align 8
  %171 = load i8*, i8** %11, align 8
  %172 = call i64 @IS_ERR(i8* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %166
  %175 = load %struct.net_device*, %struct.net_device** %4, align 8
  %176 = getelementptr inbounds %struct.net_device, %struct.net_device* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i8*, i8** %11, align 8
  %179 = call i32 @ether_addr_copy(i32 %177, i8* %178)
  br label %183

180:                                              ; preds = %166
  %181 = load %struct.net_device*, %struct.net_device** %4, align 8
  %182 = call i32 @eth_hw_addr_random(%struct.net_device* %181)
  br label %183

183:                                              ; preds = %180, %174
  %184 = load %struct.net_device*, %struct.net_device** %4, align 8
  %185 = call i32 @arc_emac_set_address_internal(%struct.net_device* %184)
  %186 = load %struct.device*, %struct.device** %6, align 8
  %187 = load %struct.net_device*, %struct.net_device** %4, align 8
  %188 = getelementptr inbounds %struct.net_device, %struct.net_device* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %186, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %189)
  %191 = load %struct.device*, %struct.device** %6, align 8
  %192 = load i64, i64* @RX_RING_SZ, align 8
  %193 = load i64, i64* @TX_RING_SZ, align 8
  %194 = add nsw i64 %192, %193
  %195 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %10, align 8
  %196 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %195, i32 0, i32 4
  %197 = load i32, i32* @GFP_KERNEL, align 4
  %198 = call i64 @dmam_alloc_coherent(%struct.device* %191, i64 %194, i64* %196, i32 %197)
  %199 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %10, align 8
  %200 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %199, i32 0, i32 5
  store i64 %198, i64* %200, align 8
  %201 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %10, align 8
  %202 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %201, i32 0, i32 5
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %210, label %205

205:                                              ; preds = %183
  %206 = load %struct.device*, %struct.device** %6, align 8
  %207 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %206, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  %208 = load i32, i32* @ENOMEM, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %15, align 4
  br label %291

210:                                              ; preds = %183
  %211 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %10, align 8
  %212 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %211, i32 0, i32 5
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @RX_BD_NUM, align 8
  %215 = add nsw i64 %213, %214
  %216 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %10, align 8
  %217 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %216, i32 0, i32 6
  store i64 %215, i64* %217, align 8
  %218 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %10, align 8
  %219 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %218, i32 0, i32 4
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @RX_RING_SZ, align 8
  %222 = add nsw i64 %220, %221
  %223 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %10, align 8
  %224 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %223, i32 0, i32 3
  store i64 %222, i64* %224, align 8
  %225 = load %struct.device*, %struct.device** %6, align 8
  %226 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %10, align 8
  %227 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %226, i32 0, i32 4
  %228 = load i64, i64* %227, align 8
  %229 = trunc i64 %228 to i32
  %230 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %10, align 8
  %231 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %230, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  %233 = trunc i64 %232 to i32
  %234 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %225, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i64 0, i64 0), i32 %229, i32 %233)
  %235 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %10, align 8
  %236 = call i32 @arc_mdio_probe(%struct.arc_emac_priv* %235)
  store i32 %236, i32* %15, align 4
  %237 = load i32, i32* %15, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %210
  %240 = load %struct.device*, %struct.device** %6, align 8
  %241 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %240, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  br label %291

242:                                              ; preds = %210
  %243 = load %struct.net_device*, %struct.net_device** %4, align 8
  %244 = load %struct.device_node*, %struct.device_node** %8, align 8
  %245 = load i32, i32* @arc_emac_adjust_link, align 4
  %246 = load i32, i32* %5, align 4
  %247 = call %struct.phy_device* @of_phy_connect(%struct.net_device* %243, %struct.device_node* %244, i32 %245, i32 0, i32 %246)
  store %struct.phy_device* %247, %struct.phy_device** %9, align 8
  %248 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %249 = icmp ne %struct.phy_device* %248, null
  br i1 %249, label %255, label %250

250:                                              ; preds = %242
  %251 = load %struct.device*, %struct.device** %6, align 8
  %252 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %251, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  %253 = load i32, i32* @ENODEV, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %15, align 4
  br label %288

255:                                              ; preds = %242
  %256 = load %struct.device*, %struct.device** %6, align 8
  %257 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %258 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %257, i32 0, i32 1
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %263 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %256, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i32 %261, i32 %264)
  %266 = load %struct.net_device*, %struct.net_device** %4, align 8
  %267 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %10, align 8
  %268 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %267, i32 0, i32 2
  %269 = load i32, i32* @arc_emac_poll, align 4
  %270 = load i32, i32* @ARC_EMAC_NAPI_WEIGHT, align 4
  %271 = call i32 @netif_napi_add(%struct.net_device* %266, i32* %268, i32 %269, i32 %270)
  %272 = load %struct.net_device*, %struct.net_device** %4, align 8
  %273 = call i32 @register_netdev(%struct.net_device* %272)
  store i32 %273, i32* %15, align 4
  %274 = load i32, i32* %15, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %255
  %277 = load %struct.device*, %struct.device** %6, align 8
  %278 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %277, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0))
  br label %282

279:                                              ; preds = %255
  %280 = load %struct.device_node*, %struct.device_node** %8, align 8
  %281 = call i32 @of_node_put(%struct.device_node* %280)
  store i32 0, i32* %3, align 4
  br label %306

282:                                              ; preds = %276
  %283 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %10, align 8
  %284 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %283, i32 0, i32 2
  %285 = call i32 @netif_napi_del(i32* %284)
  %286 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %287 = call i32 @phy_disconnect(%struct.phy_device* %286)
  br label %288

288:                                              ; preds = %282, %250
  %289 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %10, align 8
  %290 = call i32 @arc_mdio_remove(%struct.arc_emac_priv* %289)
  br label %291

291:                                              ; preds = %288, %239, %205, %163, %128
  %292 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %10, align 8
  %293 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %291
  %297 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %10, align 8
  %298 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = call i32 @clk_disable_unprepare(i64 %299)
  br label %301

301:                                              ; preds = %296, %291
  br label %302

302:                                              ; preds = %301, %113, %99, %77, %50, %38
  %303 = load %struct.device_node*, %struct.device_node** %8, align 8
  %304 = call i32 @of_node_put(%struct.device_node* %303)
  %305 = load i32, i32* %15, align 4
  store i32 %305, i32* %3, align 4
  br label %306

306:                                              ; preds = %302, %279, %26
  %307 = load i32, i32* %3, align 4
  ret i32 %307
}

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @of_address_to_resource(i32, i32, %struct.resource*) #1

declare dso_local i32 @irq_of_parse_and_map(i32, i32) #1

declare dso_local %struct.arc_emac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @clk_get_rate(i64) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @arc_reg_get(%struct.arc_emac_priv*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @arc_reg_set(%struct.arc_emac_priv*, i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i8* @of_get_mac_address(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i8*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @arc_emac_set_address_internal(%struct.net_device*) #1

declare dso_local i64 @dmam_alloc_coherent(%struct.device*, i64, i64*, i32) #1

declare dso_local i32 @arc_mdio_probe(%struct.arc_emac_priv*) #1

declare dso_local %struct.phy_device* @of_phy_connect(%struct.net_device*, %struct.device_node*, i32, i32, i32) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @phy_disconnect(%struct.phy_device*) #1

declare dso_local i32 @arc_mdio_remove(%struct.arc_emac_priv*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
