; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.gswip_priv = type { i32, i32*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.device*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32, i32*, %struct.gswip_priv* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@gswip_switch_ops = common dso_local global i32 0, align 4
@GSWIP_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"lantiq,gphy-fw\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"gphy fw probe failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"lantiq,xrx200-mdio\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"mdio probe failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"dsa switch register failed: %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"wrong CPU port defined, HW only supports port: %i\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"probed GSWIP version %lx mod %lx\0A\00", align 1
@GSWIP_VERSION_REV_MASK = common dso_local global i32 0, align 4
@GSWIP_VERSION_REV_SHIFT = common dso_local global i32 0, align 4
@GSWIP_VERSION_MOD_MASK = common dso_local global i32 0, align 4
@GSWIP_VERSION_MOD_SHIFT = common dso_local global i32 0, align 4
@GSWIP_MDIO_GLOB_ENABLE = common dso_local global i32 0, align 4
@GSWIP_MDIO_GLOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gswip_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gswip_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.gswip_priv*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.gswip_priv* @devm_kzalloc(%struct.device* %13, i32 64, i32 %14)
  store %struct.gswip_priv* %15, %struct.gswip_priv** %4, align 8
  %16 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %17 = icmp ne %struct.gswip_priv* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %239

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %22, i32 0)
  %24 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %25 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %24, i32 0, i32 7
  store i8* %23, i8** %25, align 8
  %26 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %27 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %26, i32 0, i32 7
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @IS_ERR(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %33 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %32, i32 0, i32 7
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @PTR_ERR(i8* %34)
  store i32 %35, i32* %2, align 4
  br label %239

36:                                               ; preds = %21
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %37, i32 1)
  %39 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %40 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %39, i32 0, i32 6
  store i8* %38, i8** %40, align 8
  %41 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %42 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %41, i32 0, i32 6
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @IS_ERR(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %48 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %47, i32 0, i32 6
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @PTR_ERR(i8* %49)
  store i32 %50, i32* %2, align 4
  br label %239

51:                                               ; preds = %36
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %52, i32 2)
  %54 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %55 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %57 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %56, i32 0, i32 5
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @IS_ERR(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %51
  %62 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %63 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %62, i32 0, i32 5
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @PTR_ERR(i8* %64)
  store i32 %65, i32* %2, align 4
  br label %239

66:                                               ; preds = %51
  %67 = load %struct.device*, %struct.device** %7, align 8
  %68 = call %struct.TYPE_6__* @of_device_get_match_data(%struct.device* %67)
  %69 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %70 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %69, i32 0, i32 3
  store %struct.TYPE_6__* %68, %struct.TYPE_6__** %70, align 8
  %71 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %72 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %71, i32 0, i32 3
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = icmp ne %struct.TYPE_6__* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %66
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %239

78:                                               ; preds = %66
  %79 = load %struct.device*, %struct.device** %7, align 8
  %80 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %81 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %80, i32 0, i32 3
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call %struct.TYPE_7__* @dsa_switch_alloc(%struct.device* %79, i32 %84)
  %86 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %87 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %86, i32 0, i32 2
  store %struct.TYPE_7__* %85, %struct.TYPE_7__** %87, align 8
  %88 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %89 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %88, i32 0, i32 2
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = icmp ne %struct.TYPE_7__* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %78
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %239

95:                                               ; preds = %78
  %96 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %97 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %98 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %97, i32 0, i32 2
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  store %struct.gswip_priv* %96, %struct.gswip_priv** %100, align 8
  %101 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %102 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %101, i32 0, i32 2
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  store i32* @gswip_switch_ops, i32** %104, align 8
  %105 = load %struct.device*, %struct.device** %7, align 8
  %106 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %107 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %106, i32 0, i32 4
  store %struct.device* %105, %struct.device** %107, align 8
  %108 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %109 = load i32, i32* @GSWIP_VERSION, align 4
  %110 = call i32 @gswip_switch_r(%struct.gswip_priv* %108, i32 %109)
  store i32 %110, i32* %10, align 4
  %111 = load %struct.device*, %struct.device** %7, align 8
  %112 = getelementptr inbounds %struct.device, %struct.device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call %struct.device_node* @of_get_compatible_child(i32 %113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %114, %struct.device_node** %6, align 8
  %115 = load %struct.device_node*, %struct.device_node** %6, align 8
  %116 = icmp ne %struct.device_node* %115, null
  br i1 %116, label %117, label %131

117:                                              ; preds = %95
  %118 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %119 = load %struct.device_node*, %struct.device_node** %6, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @gswip_gphy_fw_list(%struct.gswip_priv* %118, %struct.device_node* %119, i32 %120)
  store i32 %121, i32* %8, align 4
  %122 = load %struct.device_node*, %struct.device_node** %6, align 8
  %123 = call i32 @of_node_put(%struct.device_node* %122)
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %117
  %127 = load %struct.device*, %struct.device** %7, align 8
  %128 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %127, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %2, align 4
  br label %239

130:                                              ; preds = %117
  br label %131

131:                                              ; preds = %130, %95
  %132 = load %struct.device*, %struct.device** %7, align 8
  %133 = getelementptr inbounds %struct.device, %struct.device* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call %struct.device_node* @of_get_compatible_child(i32 %134, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store %struct.device_node* %135, %struct.device_node** %5, align 8
  %136 = load %struct.device_node*, %struct.device_node** %5, align 8
  %137 = icmp ne %struct.device_node* %136, null
  br i1 %137, label %138, label %148

138:                                              ; preds = %131
  %139 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %140 = load %struct.device_node*, %struct.device_node** %5, align 8
  %141 = call i32 @gswip_mdio(%struct.gswip_priv* %139, %struct.device_node* %140)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load %struct.device*, %struct.device** %7, align 8
  %146 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %145, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %216

147:                                              ; preds = %138
  br label %148

148:                                              ; preds = %147, %131
  %149 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %150 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %149, i32 0, i32 2
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = call i32 @dsa_register_switch(%struct.TYPE_7__* %151)
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %148
  %156 = load %struct.device*, %struct.device** %7, align 8
  %157 = load i32, i32* %8, align 4
  %158 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %156, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %157)
  br label %205

159:                                              ; preds = %148
  %160 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %161 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %160, i32 0, i32 2
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %164 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %163, i32 0, i32 3
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @dsa_is_cpu_port(%struct.TYPE_7__* %162, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %180, label %170

170:                                              ; preds = %159
  %171 = load %struct.device*, %struct.device** %7, align 8
  %172 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %173 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %172, i32 0, i32 3
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %171, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %8, align 4
  br label %196

180:                                              ; preds = %159
  %181 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %182 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %183 = call i32 @platform_set_drvdata(%struct.platform_device* %181, %struct.gswip_priv* %182)
  %184 = load %struct.device*, %struct.device** %7, align 8
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* @GSWIP_VERSION_REV_MASK, align 4
  %187 = and i32 %185, %186
  %188 = load i32, i32* @GSWIP_VERSION_REV_SHIFT, align 4
  %189 = ashr i32 %187, %188
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* @GSWIP_VERSION_MOD_MASK, align 4
  %192 = and i32 %190, %191
  %193 = load i32, i32* @GSWIP_VERSION_MOD_SHIFT, align 4
  %194 = ashr i32 %192, %193
  %195 = call i32 @dev_info(%struct.device* %184, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %189, i32 %194)
  store i32 0, i32* %2, align 4
  br label %239

196:                                              ; preds = %170
  %197 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %198 = load i32, i32* @GSWIP_MDIO_GLOB_ENABLE, align 4
  %199 = load i32, i32* @GSWIP_MDIO_GLOB, align 4
  %200 = call i32 @gswip_mdio_mask(%struct.gswip_priv* %197, i32 %198, i32 0, i32 %199)
  %201 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %202 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %201, i32 0, i32 2
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %202, align 8
  %204 = call i32 @dsa_unregister_switch(%struct.TYPE_7__* %203)
  br label %205

205:                                              ; preds = %196, %155
  %206 = load %struct.device_node*, %struct.device_node** %5, align 8
  %207 = icmp ne %struct.device_node* %206, null
  br i1 %207, label %208, label %215

208:                                              ; preds = %205
  %209 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %210 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %209, i32 0, i32 2
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @mdiobus_unregister(i32 %213)
  br label %215

215:                                              ; preds = %208, %205
  br label %216

216:                                              ; preds = %215, %144
  %217 = load %struct.device_node*, %struct.device_node** %5, align 8
  %218 = call i32 @of_node_put(%struct.device_node* %217)
  store i32 0, i32* %9, align 4
  br label %219

219:                                              ; preds = %234, %216
  %220 = load i32, i32* %9, align 4
  %221 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %222 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp slt i32 %220, %223
  br i1 %224, label %225, label %237

225:                                              ; preds = %219
  %226 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %227 = load %struct.gswip_priv*, %struct.gswip_priv** %4, align 8
  %228 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %9, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = call i32 @gswip_gphy_fw_remove(%struct.gswip_priv* %226, i32* %232)
  br label %234

234:                                              ; preds = %225
  %235 = load i32, i32* %9, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %9, align 4
  br label %219

237:                                              ; preds = %219
  %238 = load i32, i32* %8, align 4
  store i32 %238, i32* %2, align 4
  br label %239

239:                                              ; preds = %237, %180, %126, %92, %75, %61, %46, %31, %18
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local %struct.gswip_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.TYPE_6__* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.TYPE_7__* @dsa_switch_alloc(%struct.device*, i32) #1

declare dso_local i32 @gswip_switch_r(%struct.gswip_priv*, i32) #1

declare dso_local %struct.device_node* @of_get_compatible_child(i32, i8*) #1

declare dso_local i32 @gswip_gphy_fw_list(%struct.gswip_priv*, %struct.device_node*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @gswip_mdio(%struct.gswip_priv*, %struct.device_node*) #1

declare dso_local i32 @dsa_register_switch(%struct.TYPE_7__*) #1

declare dso_local i32 @dsa_is_cpu_port(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.gswip_priv*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @gswip_mdio_mask(%struct.gswip_priv*, i32, i32, i32) #1

declare dso_local i32 @dsa_unregister_switch(%struct.TYPE_7__*) #1

declare dso_local i32 @mdiobus_unregister(i32) #1

declare dso_local i32 @gswip_gphy_fw_remove(%struct.gswip_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
