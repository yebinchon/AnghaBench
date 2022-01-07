; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_spawn_phy_reprs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_spawn_phy_reprs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.nfp_eth_table* }
%struct.nfp_eth_table = type { i32, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.nfp_flower_priv = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.nfp_flower_repr_priv = type { %struct.nfp_repr* }
%struct.nfp_repr = type { %struct.nfp_flower_repr_priv* }
%struct.sk_buff = type { i32 }
%struct.nfp_reprs = type { i32* }
%struct.net_device = type { i32 }
%struct.nfp_port = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NFP_PORT_PHYS_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Phys Port %d Representor(%s) created\0A\00", align 1
@NFP_REPR_TYPE_PHYS_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Failed to notify firmware about repr creation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.nfp_flower_priv*)* @nfp_flower_spawn_phy_reprs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_spawn_phy_reprs(%struct.nfp_app* %0, %struct.nfp_flower_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca %struct.nfp_flower_priv*, align 8
  %6 = alloca %struct.nfp_eth_table*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nfp_flower_repr_priv*, align 8
  %9 = alloca %struct.nfp_repr*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nfp_reprs*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.net_device*, align 8
  %17 = alloca %struct.nfp_port*, align 8
  %18 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store %struct.nfp_flower_priv* %1, %struct.nfp_flower_priv** %5, align 8
  %19 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %20 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %19, i32 0, i32 2
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %22, align 8
  store %struct.nfp_eth_table* %23, %struct.nfp_eth_table** %6, align 8
  %24 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %5, align 8
  %25 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %24, i32 0, i32 1
  store i32* %25, i32** %7, align 8
  %26 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %27 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %6, align 8
  %28 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.sk_buff* @nfp_flower_cmsg_mac_repr_start(%struct.nfp_app* %26, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %10, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %242

36:                                               ; preds = %2
  %37 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %6, align 8
  %38 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  %41 = call %struct.nfp_reprs* @nfp_reprs_alloc(i64 %40)
  store %struct.nfp_reprs* %41, %struct.nfp_reprs** %11, align 8
  %42 = load %struct.nfp_reprs*, %struct.nfp_reprs** %11, align 8
  %43 = icmp ne %struct.nfp_reprs* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %12, align 4
  br label %238

47:                                               ; preds = %36
  store i32 0, i32* %14, align 4
  br label %48

48:                                               ; preds = %195, %47
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %6, align 8
  %51 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ult i32 %49, %52
  br i1 %53, label %54, label %198

54:                                               ; preds = %48
  %55 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %6, align 8
  %56 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = load i32, i32* %14, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %15, align 4
  %63 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %64 = call %struct.net_device* @nfp_repr_alloc(%struct.nfp_app* %63)
  store %struct.net_device* %64, %struct.net_device** %16, align 8
  %65 = load %struct.net_device*, %struct.net_device** %16, align 8
  %66 = icmp ne %struct.net_device* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %54
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %12, align 4
  br label %234

70:                                               ; preds = %54
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call %struct.nfp_flower_repr_priv* @kzalloc(i32 8, i32 %71)
  store %struct.nfp_flower_repr_priv* %72, %struct.nfp_flower_repr_priv** %8, align 8
  %73 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %8, align 8
  %74 = icmp ne %struct.nfp_flower_repr_priv* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %12, align 4
  %78 = load %struct.net_device*, %struct.net_device** %16, align 8
  %79 = call i32 @nfp_repr_free(%struct.net_device* %78)
  br label %234

80:                                               ; preds = %70
  %81 = load %struct.net_device*, %struct.net_device** %16, align 8
  %82 = call %struct.nfp_repr* @netdev_priv(%struct.net_device* %81)
  store %struct.nfp_repr* %82, %struct.nfp_repr** %9, align 8
  %83 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %8, align 8
  %84 = load %struct.nfp_repr*, %struct.nfp_repr** %9, align 8
  %85 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %84, i32 0, i32 0
  store %struct.nfp_flower_repr_priv* %83, %struct.nfp_flower_repr_priv** %85, align 8
  %86 = load %struct.nfp_repr*, %struct.nfp_repr** %9, align 8
  %87 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %8, align 8
  %88 = getelementptr inbounds %struct.nfp_flower_repr_priv, %struct.nfp_flower_repr_priv* %87, i32 0, i32 0
  store %struct.nfp_repr* %86, %struct.nfp_repr** %88, align 8
  %89 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %90 = load i32, i32* @NFP_PORT_PHYS_PORT, align 4
  %91 = load %struct.net_device*, %struct.net_device** %16, align 8
  %92 = call %struct.nfp_port* @nfp_port_alloc(%struct.nfp_app* %89, i32 %90, %struct.net_device* %91)
  store %struct.nfp_port* %92, %struct.nfp_port** %17, align 8
  %93 = load %struct.nfp_port*, %struct.nfp_port** %17, align 8
  %94 = call i64 @IS_ERR(%struct.nfp_port* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %80
  %97 = load %struct.nfp_port*, %struct.nfp_port** %17, align 8
  %98 = call i32 @PTR_ERR(%struct.nfp_port* %97)
  store i32 %98, i32* %12, align 4
  %99 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %8, align 8
  %100 = call i32 @kfree(%struct.nfp_flower_repr_priv* %99)
  %101 = load %struct.net_device*, %struct.net_device** %16, align 8
  %102 = call i32 @nfp_repr_free(%struct.net_device* %101)
  br label %234

103:                                              ; preds = %80
  %104 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %105 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %104, i32 0, i32 2
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %108 = load %struct.nfp_port*, %struct.nfp_port** %17, align 8
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @nfp_port_init_phy_port(%struct.TYPE_11__* %106, %struct.nfp_app* %107, %struct.nfp_port* %108, i32 %109)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %103
  %114 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %8, align 8
  %115 = call i32 @kfree(%struct.nfp_flower_repr_priv* %114)
  %116 = load %struct.nfp_port*, %struct.nfp_port** %17, align 8
  %117 = call i32 @nfp_port_free(%struct.nfp_port* %116)
  %118 = load %struct.net_device*, %struct.net_device** %16, align 8
  %119 = call i32 @nfp_repr_free(%struct.net_device* %118)
  br label %234

120:                                              ; preds = %103
  %121 = load %struct.net_device*, %struct.net_device** %16, align 8
  %122 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %5, align 8
  %123 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %122, i32 0, i32 0
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = call i32 @SET_NETDEV_DEV(%struct.net_device* %121, i32* %127)
  %129 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %130 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %129, i32 0, i32 2
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = load %struct.net_device*, %struct.net_device** %16, align 8
  %133 = load %struct.nfp_port*, %struct.nfp_port** %17, align 8
  %134 = call i32 @nfp_net_get_mac_addr(%struct.TYPE_11__* %131, %struct.net_device* %132, %struct.nfp_port* %133)
  %135 = load i32, i32* %15, align 4
  %136 = call i32 @nfp_flower_cmsg_phys_port(i32 %135)
  store i32 %136, i32* %18, align 4
  %137 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %138 = load %struct.net_device*, %struct.net_device** %16, align 8
  %139 = load i32, i32* %18, align 4
  %140 = load %struct.nfp_port*, %struct.nfp_port** %17, align 8
  %141 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %5, align 8
  %142 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %141, i32 0, i32 0
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @nfp_repr_init(%struct.nfp_app* %137, %struct.net_device* %138, i32 %139, %struct.nfp_port* %140, i32 %146)
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %120
  %151 = load %struct.nfp_flower_repr_priv*, %struct.nfp_flower_repr_priv** %8, align 8
  %152 = call i32 @kfree(%struct.nfp_flower_repr_priv* %151)
  %153 = load %struct.nfp_port*, %struct.nfp_port** %17, align 8
  %154 = call i32 @nfp_port_free(%struct.nfp_port* %153)
  %155 = load %struct.net_device*, %struct.net_device** %16, align 8
  %156 = call i32 @nfp_repr_free(%struct.net_device* %155)
  br label %234

157:                                              ; preds = %120
  %158 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %159 = load i32, i32* %14, align 4
  %160 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %6, align 8
  %161 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %160, i32 0, i32 1
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = load i32, i32* %14, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %6, align 8
  %169 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %168, i32 0, i32 1
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = load i32, i32* %14, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %15, align 4
  %177 = call i32 @nfp_flower_cmsg_mac_repr_add(%struct.sk_buff* %158, i32 %159, i32 %167, i32 %175, i32 %176)
  %178 = load %struct.nfp_reprs*, %struct.nfp_reprs** %11, align 8
  %179 = getelementptr inbounds %struct.nfp_reprs, %struct.nfp_reprs* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %15, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.net_device*, %struct.net_device** %16, align 8
  %186 = call i32 @RCU_INIT_POINTER(i32 %184, %struct.net_device* %185)
  %187 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %188 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %15, align 4
  %191 = load %struct.net_device*, %struct.net_device** %16, align 8
  %192 = getelementptr inbounds %struct.net_device, %struct.net_device* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @nfp_info(i32 %189, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %190, i32 %193)
  br label %195

195:                                              ; preds = %157
  %196 = load i32, i32* %14, align 4
  %197 = add i32 %196, 1
  store i32 %197, i32* %14, align 4
  br label %48

198:                                              ; preds = %48
  %199 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %200 = load i32, i32* @NFP_REPR_TYPE_PHYS_PORT, align 4
  %201 = load %struct.nfp_reprs*, %struct.nfp_reprs** %11, align 8
  %202 = call %struct.nfp_reprs* @nfp_app_reprs_set(%struct.nfp_app* %199, i32 %200, %struct.nfp_reprs* %201)
  %203 = load i32*, i32** %7, align 8
  %204 = call i32 @atomic_set(i32* %203, i32 0)
  %205 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %206 = load i32, i32* @NFP_REPR_TYPE_PHYS_PORT, align 4
  %207 = call i32 @nfp_flower_reprs_reify(%struct.nfp_app* %205, i32 %206, i32 1)
  store i32 %207, i32* %13, align 4
  %208 = load i32, i32* %13, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %198
  %211 = load i32, i32* %13, align 4
  store i32 %211, i32* %12, align 4
  %212 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %213 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @nfp_warn(i32 %214, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %230

216:                                              ; preds = %198
  %217 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %218 = load i32*, i32** %7, align 8
  %219 = load i32, i32* %13, align 4
  %220 = call i32 @nfp_flower_wait_repr_reify(%struct.nfp_app* %217, i32* %218, i32 %219)
  store i32 %220, i32* %12, align 4
  %221 = load i32, i32* %12, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %216
  br label %230

224:                                              ; preds = %216
  %225 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %226 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %229 = call i32 @nfp_ctrl_tx(i32 %227, %struct.sk_buff* %228)
  store i32 0, i32* %3, align 4
  br label %242

230:                                              ; preds = %223, %210
  %231 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %232 = load i32, i32* @NFP_REPR_TYPE_PHYS_PORT, align 4
  %233 = call %struct.nfp_reprs* @nfp_app_reprs_set(%struct.nfp_app* %231, i32 %232, %struct.nfp_reprs* null)
  store %struct.nfp_reprs* %233, %struct.nfp_reprs** %11, align 8
  br label %234

234:                                              ; preds = %230, %150, %113, %96, %75, %67
  %235 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %236 = load %struct.nfp_reprs*, %struct.nfp_reprs** %11, align 8
  %237 = call i32 @nfp_reprs_clean_and_free(%struct.nfp_app* %235, %struct.nfp_reprs* %236)
  br label %238

238:                                              ; preds = %234, %44
  %239 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %240 = call i32 @kfree_skb(%struct.sk_buff* %239)
  %241 = load i32, i32* %12, align 4
  store i32 %241, i32* %3, align 4
  br label %242

242:                                              ; preds = %238, %224, %33
  %243 = load i32, i32* %3, align 4
  ret i32 %243
}

declare dso_local %struct.sk_buff* @nfp_flower_cmsg_mac_repr_start(%struct.nfp_app*, i32) #1

declare dso_local %struct.nfp_reprs* @nfp_reprs_alloc(i64) #1

declare dso_local %struct.net_device* @nfp_repr_alloc(%struct.nfp_app*) #1

declare dso_local %struct.nfp_flower_repr_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @nfp_repr_free(%struct.net_device*) #1

declare dso_local %struct.nfp_repr* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.nfp_port* @nfp_port_alloc(%struct.nfp_app*, i32, %struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.nfp_port*) #1

declare dso_local i32 @PTR_ERR(%struct.nfp_port*) #1

declare dso_local i32 @kfree(%struct.nfp_flower_repr_priv*) #1

declare dso_local i32 @nfp_port_init_phy_port(%struct.TYPE_11__*, %struct.nfp_app*, %struct.nfp_port*, i32) #1

declare dso_local i32 @nfp_port_free(%struct.nfp_port*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @nfp_net_get_mac_addr(%struct.TYPE_11__*, %struct.net_device*, %struct.nfp_port*) #1

declare dso_local i32 @nfp_flower_cmsg_phys_port(i32) #1

declare dso_local i32 @nfp_repr_init(%struct.nfp_app*, %struct.net_device*, i32, %struct.nfp_port*, i32) #1

declare dso_local i32 @nfp_flower_cmsg_mac_repr_add(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, %struct.net_device*) #1

declare dso_local i32 @nfp_info(i32, i8*, i32, i32) #1

declare dso_local %struct.nfp_reprs* @nfp_app_reprs_set(%struct.nfp_app*, i32, %struct.nfp_reprs*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @nfp_flower_reprs_reify(%struct.nfp_app*, i32, i32) #1

declare dso_local i32 @nfp_warn(i32, i8*) #1

declare dso_local i32 @nfp_flower_wait_repr_reify(%struct.nfp_app*, i32*, i32) #1

declare dso_local i32 @nfp_ctrl_tx(i32, %struct.sk_buff*) #1

declare dso_local i32 @nfp_reprs_clean_and_free(%struct.nfp_app*, %struct.nfp_reprs*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
