; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_fs_enet-main.c_fs_enet_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_fs_enet-main.c_fs_enet_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.of_device_id = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*)*, i32 (%struct.net_device*)* }
%struct.net_device = type { i32, i32, i32, i32, i32*, i32* }
%struct.fs_enet_private = type { i8*, i32, i32, %struct.TYPE_5__*, i32, i32, i64, i64, i64, i32, i32, %struct.sk_buff**, %struct.sk_buff**, %struct.fs_platform_info*, %struct.net_device*, %struct.TYPE_6__* }
%struct.sk_buff = type { i32 }
%struct.fs_platform_info = type { i32, i32, i32, i32, i32, i64, %struct.clk*, i32 }
%struct.clk = type opaque

@ENODEV = common dso_local global i32 0, align 4
@fs_enet_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"fsl,cpm-command\00", align 1
@RX_RING_SIZE = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fsl,mpc5125-fec\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"phy-connection-type\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"rmii\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"per\00", align 1
@fs_enet_netdev_ops = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@fs_timeout_work = common dso_local global i32 0, align 4
@fs_enet_napi = common dso_local global i32 0, align 4
@fs_ethtool_ops = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"%s: fs_enet: %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fs_enet_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_enet_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.fs_enet_private*, align 8
  %7 = alloca %struct.fs_platform_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.clk*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.clk*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @fs_enet_match, align 4
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call %struct.of_device_id* @of_match_device(i32 %18, %struct.TYPE_6__* %20)
  store %struct.of_device_id* %21, %struct.of_device_id** %4, align 8
  %22 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %23 = icmp ne %struct.of_device_id* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %384

27:                                               ; preds = %1
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.fs_platform_info* @kzalloc(i32 48, i32 %28)
  store %struct.fs_platform_info* %29, %struct.fs_platform_info** %7, align 8
  %30 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %31 = icmp ne %struct.fs_platform_info* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %384

35:                                               ; preds = %27
  %36 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %37 = call i32 @IS_FEC(%struct.of_device_id* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %35
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @of_get_property(i32 %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %14)
  %45 = bitcast i8* %44 to i32*
  store i32* %45, i32** %8, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 4
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %39
  br label %380

52:                                               ; preds = %48
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %56 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %52, %35
  %58 = load i32, i32* @RX_RING_SIZE, align 4
  %59 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %60 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @TX_RING_SIZE, align 4
  %62 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %63 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %65 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %64, i32 0, i32 2
  store i32 240, i32* %65, align 8
  %66 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %67 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %66, i32 0, i32 3
  store i32 17, i32* %67, align 4
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @of_parse_phandle(i32 %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %73 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %74 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %73, i32 0, i32 5
  store i64 %72, i64* %74, align 8
  %75 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %76 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %103, label %79

79:                                               ; preds = %57
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @of_phy_is_fixed_link(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %79
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @of_phy_register_fixed_link(i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %380

95:                                               ; preds = %86
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @of_node_get(i32 %99)
  %101 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %102 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %101, i32 0, i32 5
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %95, %79, %57
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @of_device_is_compatible(i32 %107, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %103
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @of_get_property(i32 %114, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i8* %115, i8** %12, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %125

118:                                              ; preds = %110
  %119 = load i8*, i8** %12, align 8
  %120 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  %123 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %124 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %123, i32 0, i32 4
  store i32 1, i32* %124, align 8
  br label %125

125:                                              ; preds = %122, %118, %110
  br label %126

126:                                              ; preds = %125, %103
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = call %struct.clk* @devm_clk_get(%struct.TYPE_6__* %128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store %struct.clk* %129, %struct.clk** %9, align 8
  %130 = load %struct.clk*, %struct.clk** %9, align 8
  %131 = call i32 @IS_ERR(%struct.clk* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %126
  %134 = load %struct.clk*, %struct.clk** %9, align 8
  %135 = call i32 @clk_prepare_enable(%struct.clk* %134)
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* %15, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %362

139:                                              ; preds = %133
  %140 = load %struct.clk*, %struct.clk** %9, align 8
  %141 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %142 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %141, i32 0, i32 6
  store %struct.clk* %140, %struct.clk** %142, align 8
  br label %143

143:                                              ; preds = %139, %126
  %144 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %145 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %148 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %146, %149
  %151 = sext i32 %150 to i64
  %152 = mul i64 8, %151
  %153 = add i64 104, %152
  %154 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %155 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = mul i64 1, %157
  %159 = add i64 %153, %158
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %13, align 4
  %161 = load i32, i32* %13, align 4
  %162 = call %struct.net_device* @alloc_etherdev(i32 %161)
  store %struct.net_device* %162, %struct.net_device** %5, align 8
  %163 = load %struct.net_device*, %struct.net_device** %5, align 8
  %164 = icmp ne %struct.net_device* %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %143
  %166 = load i32, i32* @ENOMEM, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %15, align 4
  br label %351

168:                                              ; preds = %143
  %169 = load %struct.net_device*, %struct.net_device** %5, align 8
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = call i32 @SET_NETDEV_DEV(%struct.net_device* %169, %struct.TYPE_6__* %171)
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = load %struct.net_device*, %struct.net_device** %5, align 8
  %175 = call i32 @platform_set_drvdata(%struct.platform_device* %173, %struct.net_device* %174)
  %176 = load %struct.net_device*, %struct.net_device** %5, align 8
  %177 = call %struct.fs_enet_private* @netdev_priv(%struct.net_device* %176)
  store %struct.fs_enet_private* %177, %struct.fs_enet_private** %6, align 8
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %178, i32 0, i32 0
  %180 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %181 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %180, i32 0, i32 15
  store %struct.TYPE_6__* %179, %struct.TYPE_6__** %181, align 8
  %182 = load %struct.net_device*, %struct.net_device** %5, align 8
  %183 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %184 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %183, i32 0, i32 14
  store %struct.net_device* %182, %struct.net_device** %184, align 8
  %185 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %186 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %187 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %186, i32 0, i32 13
  store %struct.fs_platform_info* %185, %struct.fs_platform_info** %187, align 8
  %188 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %189 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %188, i32 0, i32 0
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %189, align 8
  %191 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %192 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %191, i32 0, i32 3
  store %struct.TYPE_5__* %190, %struct.TYPE_5__** %192, align 8
  %193 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %194 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %193, i32 0, i32 3
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %196, align 8
  %198 = load %struct.net_device*, %struct.net_device** %5, align 8
  %199 = call i32 %197(%struct.net_device* %198)
  store i32 %199, i32* %15, align 4
  %200 = load i32, i32* %15, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %168
  br label %348

203:                                              ; preds = %168
  %204 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %205 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %204, i64 1
  %206 = bitcast %struct.fs_enet_private* %205 to %struct.sk_buff**
  %207 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %208 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %207, i32 0, i32 11
  store %struct.sk_buff** %206, %struct.sk_buff*** %208, align 8
  %209 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %210 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %209, i32 0, i32 11
  %211 = load %struct.sk_buff**, %struct.sk_buff*** %210, align 8
  %212 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %213 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %211, i64 %215
  %217 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %218 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %217, i32 0, i32 12
  store %struct.sk_buff** %216, %struct.sk_buff*** %218, align 8
  %219 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %220 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %219, i32 0, i32 11
  %221 = load %struct.sk_buff**, %struct.sk_buff*** %220, align 8
  %222 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %223 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %221, i64 %225
  %227 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %228 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %226, i64 %230
  %232 = bitcast %struct.sk_buff** %231 to i8*
  %233 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %234 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %233, i32 0, i32 0
  store i8* %232, i8** %234, align 8
  %235 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %236 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %235, i32 0, i32 10
  %237 = call i32 @spin_lock_init(i32* %236)
  %238 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %239 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %238, i32 0, i32 9
  %240 = call i32 @spin_lock_init(i32* %239)
  %241 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %242 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call %struct.clk* @of_get_mac_address(i32 %244)
  store %struct.clk* %245, %struct.clk** %11, align 8
  %246 = load %struct.clk*, %struct.clk** %11, align 8
  %247 = call i32 @IS_ERR(%struct.clk* %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %255, label %249

249:                                              ; preds = %203
  %250 = load %struct.net_device*, %struct.net_device** %5, align 8
  %251 = getelementptr inbounds %struct.net_device, %struct.net_device* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.clk*, %struct.clk** %11, align 8
  %254 = call i32 @ether_addr_copy(i32 %252, %struct.clk* %253)
  br label %255

255:                                              ; preds = %249, %203
  %256 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %257 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %256, i32 0, i32 3
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 1
  %260 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %259, align 8
  %261 = load %struct.net_device*, %struct.net_device** %5, align 8
  %262 = call i32 %260(%struct.net_device* %261)
  store i32 %262, i32* %15, align 4
  %263 = load i32, i32* %15, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %255
  br label %340

266:                                              ; preds = %255
  %267 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %268 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %267, i32 0, i32 8
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %271 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %270, i32 0, i32 6
  store i64 %269, i64* %271, align 8
  %272 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %273 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %272, i32 0, i32 6
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %276 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = sext i32 %277 to i64
  %279 = add nsw i64 %274, %278
  %280 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %281 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %280, i32 0, i32 7
  store i64 %279, i64* %281, align 8
  %282 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %283 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %286 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %285, i32 0, i32 1
  store i32 %284, i32* %286, align 8
  %287 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %288 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %291 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %290, i32 0, i32 2
  store i32 %289, i32* %291, align 4
  %292 = load %struct.net_device*, %struct.net_device** %5, align 8
  %293 = getelementptr inbounds %struct.net_device, %struct.net_device* %292, i32 0, i32 5
  store i32* @fs_enet_netdev_ops, i32** %293, align 8
  %294 = load i32, i32* @HZ, align 4
  %295 = mul nsw i32 2, %294
  %296 = load %struct.net_device*, %struct.net_device** %5, align 8
  %297 = getelementptr inbounds %struct.net_device, %struct.net_device* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 8
  %298 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %299 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %298, i32 0, i32 5
  %300 = load i32, i32* @fs_timeout_work, align 4
  %301 = call i32 @INIT_WORK(i32* %299, i32 %300)
  %302 = load %struct.net_device*, %struct.net_device** %5, align 8
  %303 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %304 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %303, i32 0, i32 4
  %305 = load i32, i32* @fs_enet_napi, align 4
  %306 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %307 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @netif_napi_add(%struct.net_device* %302, i32* %304, i32 %305, i32 %308)
  %310 = load %struct.net_device*, %struct.net_device** %5, align 8
  %311 = getelementptr inbounds %struct.net_device, %struct.net_device* %310, i32 0, i32 4
  store i32* @fs_ethtool_ops, i32** %311, align 8
  %312 = load %struct.net_device*, %struct.net_device** %5, align 8
  %313 = call i32 @netif_carrier_off(%struct.net_device* %312)
  %314 = load i32, i32* @NETIF_F_SG, align 4
  %315 = load %struct.net_device*, %struct.net_device** %5, align 8
  %316 = getelementptr inbounds %struct.net_device, %struct.net_device* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 4
  %318 = or i32 %317, %314
  store i32 %318, i32* %316, align 4
  %319 = load %struct.net_device*, %struct.net_device** %5, align 8
  %320 = call i32 @register_netdev(%struct.net_device* %319)
  store i32 %320, i32* %15, align 4
  %321 = load i32, i32* %15, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %266
  br label %332

324:                                              ; preds = %266
  %325 = load %struct.net_device*, %struct.net_device** %5, align 8
  %326 = getelementptr inbounds %struct.net_device, %struct.net_device* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.net_device*, %struct.net_device** %5, align 8
  %329 = getelementptr inbounds %struct.net_device, %struct.net_device* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %327, i32 %330)
  store i32 0, i32* %2, align 4
  br label %384

332:                                              ; preds = %323
  %333 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %334 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %333, i32 0, i32 3
  %335 = load %struct.TYPE_5__*, %struct.TYPE_5__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i32 0, i32 3
  %337 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %336, align 8
  %338 = load %struct.net_device*, %struct.net_device** %5, align 8
  %339 = call i32 %337(%struct.net_device* %338)
  br label %340

340:                                              ; preds = %332, %265
  %341 = load %struct.fs_enet_private*, %struct.fs_enet_private** %6, align 8
  %342 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %341, i32 0, i32 3
  %343 = load %struct.TYPE_5__*, %struct.TYPE_5__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i32 0, i32 2
  %345 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %344, align 8
  %346 = load %struct.net_device*, %struct.net_device** %5, align 8
  %347 = call i32 %345(%struct.net_device* %346)
  br label %348

348:                                              ; preds = %340, %202
  %349 = load %struct.net_device*, %struct.net_device** %5, align 8
  %350 = call i32 @free_netdev(%struct.net_device* %349)
  br label %351

351:                                              ; preds = %348, %165
  %352 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %353 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %352, i32 0, i32 6
  %354 = load %struct.clk*, %struct.clk** %353, align 8
  %355 = icmp ne %struct.clk* %354, null
  br i1 %355, label %356, label %361

356:                                              ; preds = %351
  %357 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %358 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %357, i32 0, i32 6
  %359 = load %struct.clk*, %struct.clk** %358, align 8
  %360 = call i32 @clk_disable_unprepare(%struct.clk* %359)
  br label %361

361:                                              ; preds = %356, %351
  br label %362

362:                                              ; preds = %361, %138
  %363 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %364 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %363, i32 0, i32 5
  %365 = load i64, i64* %364, align 8
  %366 = call i32 @of_node_put(i64 %365)
  %367 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %368 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = call i64 @of_phy_is_fixed_link(i32 %370)
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %379

373:                                              ; preds = %362
  %374 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %375 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @of_phy_deregister_fixed_link(i32 %377)
  br label %379

379:                                              ; preds = %373, %362
  br label %380

380:                                              ; preds = %379, %94, %51
  %381 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  %382 = call i32 @kfree(%struct.fs_platform_info* %381)
  %383 = load i32, i32* %15, align 4
  store i32 %383, i32* %2, align 4
  br label %384

384:                                              ; preds = %380, %324, %32, %24
  %385 = load i32, i32* %2, align 4
  ret i32 %385
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_6__*) #1

declare dso_local %struct.fs_platform_info* @kzalloc(i32, i32) #1

declare dso_local i32 @IS_FEC(%struct.of_device_id*) #1

declare dso_local i8* @of_get_property(i32, i8*, i32*) #1

declare dso_local i64 @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i64 @of_phy_is_fixed_link(i32) #1

declare dso_local i32 @of_phy_register_fixed_link(i32) #1

declare dso_local i64 @of_node_get(i32) #1

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.TYPE_6__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local %struct.fs_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.clk* @of_get_mac_address(i32) #1

declare dso_local i32 @ether_addr_copy(i32, %struct.clk*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

declare dso_local i32 @of_node_put(i64) #1

declare dso_local i32 @of_phy_deregister_fixed_link(i32) #1

declare dso_local i32 @kfree(%struct.fs_platform_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
