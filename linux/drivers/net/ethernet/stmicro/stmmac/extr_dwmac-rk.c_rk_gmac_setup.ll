; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk_gmac_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_rk_gmac_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_priv_data = type { i32, i32, i32, %struct.platform_device*, i64, i32*, i32, i32*, %struct.rk_gmac_ops*, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.plat_stmmacenet_data = type { i64 }
%struct.rk_gmac_ops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"phy regulator is not available yet, deferred probing\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"no regulator found\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"clock_in_out\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Can not read property: clock_in_out.\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"clock input or output? (%s).\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"tx_delay\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Can not read property: tx_delay.\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"set tx_delay to 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"TX delay(0x%x).\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"rx_delay\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"Can not read property: rx_delay.\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"set rx_delay to 0x%x\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"RX delay(0x%x).\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"rockchip,grf\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"phy-is-integrated\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"No PHY reset control found.\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"integrated PHY? (%s).\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rk_priv_data* (%struct.platform_device*, %struct.plat_stmmacenet_data*, %struct.rk_gmac_ops*)* @rk_gmac_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rk_priv_data* @rk_gmac_setup(%struct.platform_device* %0, %struct.plat_stmmacenet_data* %1, %struct.rk_gmac_ops* %2) #0 {
  %4 = alloca %struct.rk_priv_data*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.plat_stmmacenet_data*, align 8
  %7 = alloca %struct.rk_gmac_ops*, align 8
  %8 = alloca %struct.rk_priv_data*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.plat_stmmacenet_data* %1, %struct.plat_stmmacenet_data** %6, align 8
  store %struct.rk_gmac_ops* %2, %struct.rk_gmac_ops** %7, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %9, align 8
  store i8* null, i8** %11, align 8
  %15 = load %struct.device*, %struct.device** %9, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.rk_priv_data* @devm_kzalloc(%struct.device* %15, i32 72, i32 %16)
  store %struct.rk_priv_data* %17, %struct.rk_priv_data** %8, align 8
  %18 = load %struct.rk_priv_data*, %struct.rk_priv_data** %8, align 8
  %19 = icmp ne %struct.rk_priv_data* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.rk_priv_data* @ERR_PTR(i32 %22)
  store %struct.rk_priv_data* %23, %struct.rk_priv_data** %4, align 8
  br label %191

24:                                               ; preds = %3
  %25 = load %struct.device*, %struct.device** %9, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @of_get_phy_mode(i32 %27)
  %29 = load %struct.rk_priv_data*, %struct.rk_priv_data** %8, align 8
  %30 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 8
  %31 = load %struct.rk_gmac_ops*, %struct.rk_gmac_ops** %7, align 8
  %32 = load %struct.rk_priv_data*, %struct.rk_priv_data** %8, align 8
  %33 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %32, i32 0, i32 8
  store %struct.rk_gmac_ops* %31, %struct.rk_gmac_ops** %33, align 8
  %34 = load %struct.device*, %struct.device** %9, align 8
  %35 = call i32* @devm_regulator_get_optional(%struct.device* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.rk_priv_data*, %struct.rk_priv_data** %8, align 8
  %37 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %36, i32 0, i32 7
  store i32* %35, i32** %37, align 8
  %38 = load %struct.rk_priv_data*, %struct.rk_priv_data** %8, align 8
  %39 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %38, i32 0, i32 7
  %40 = load i32*, i32** %39, align 8
  %41 = call i64 @IS_ERR(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %24
  %44 = load %struct.rk_priv_data*, %struct.rk_priv_data** %8, align 8
  %45 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %44, i32 0, i32 7
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @PTR_ERR(i32* %46)
  %48 = load i32, i32* @EPROBE_DEFER, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load %struct.device*, %struct.device** %9, align 8
  %53 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %52, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @EPROBE_DEFER, align 4
  %55 = sub nsw i32 0, %54
  %56 = call %struct.rk_priv_data* @ERR_PTR(i32 %55)
  store %struct.rk_priv_data* %56, %struct.rk_priv_data** %4, align 8
  br label %191

57:                                               ; preds = %43
  %58 = load %struct.device*, %struct.device** %9, align 8
  %59 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.rk_priv_data*, %struct.rk_priv_data** %8, align 8
  %61 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %60, i32 0, i32 7
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %57, %24
  %63 = load %struct.device*, %struct.device** %9, align 8
  %64 = getelementptr inbounds %struct.device, %struct.device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @of_property_read_string(i32 %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %11)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.device*, %struct.device** %9, align 8
  %71 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %70, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %72 = load %struct.rk_priv_data*, %struct.rk_priv_data** %8, align 8
  %73 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %88

74:                                               ; preds = %62
  %75 = load %struct.device*, %struct.device** %9, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %76)
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %74
  %82 = load %struct.rk_priv_data*, %struct.rk_priv_data** %8, align 8
  %83 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  br label %87

84:                                               ; preds = %74
  %85 = load %struct.rk_priv_data*, %struct.rk_priv_data** %8, align 8
  %86 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  br label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %87, %69
  %89 = load %struct.device*, %struct.device** %9, align 8
  %90 = getelementptr inbounds %struct.device, %struct.device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @of_property_read_u32(i32 %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* %12)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %88
  %96 = load %struct.rk_priv_data*, %struct.rk_priv_data** %8, align 8
  %97 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %96, i32 0, i32 1
  store i32 48, i32* %97, align 4
  %98 = load %struct.device*, %struct.device** %9, align 8
  %99 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %98, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %100 = load %struct.device*, %struct.device** %9, align 8
  %101 = load %struct.rk_priv_data*, %struct.rk_priv_data** %8, align 8
  %102 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %103)
  br label %112

105:                                              ; preds = %88
  %106 = load %struct.device*, %struct.device** %9, align 8
  %107 = load i32, i32* %12, align 4
  %108 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.rk_priv_data*, %struct.rk_priv_data** %8, align 8
  %111 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %105, %95
  %113 = load %struct.device*, %struct.device** %9, align 8
  %114 = getelementptr inbounds %struct.device, %struct.device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @of_property_read_u32(i32 %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32* %12)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %112
  %120 = load %struct.rk_priv_data*, %struct.rk_priv_data** %8, align 8
  %121 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %120, i32 0, i32 2
  store i32 16, i32* %121, align 8
  %122 = load %struct.device*, %struct.device** %9, align 8
  %123 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %122, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  %124 = load %struct.device*, %struct.device** %9, align 8
  %125 = load %struct.rk_priv_data*, %struct.rk_priv_data** %8, align 8
  %126 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %124, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %127)
  br label %136

129:                                              ; preds = %112
  %130 = load %struct.device*, %struct.device** %9, align 8
  %131 = load i32, i32* %12, align 4
  %132 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %130, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %12, align 4
  %134 = load %struct.rk_priv_data*, %struct.rk_priv_data** %8, align 8
  %135 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %129, %119
  %137 = load %struct.device*, %struct.device** %9, align 8
  %138 = getelementptr inbounds %struct.device, %struct.device* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @syscon_regmap_lookup_by_phandle(i32 %139, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %141 = load %struct.rk_priv_data*, %struct.rk_priv_data** %8, align 8
  %142 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %141, i32 0, i32 6
  store i32 %140, i32* %142, align 8
  %143 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %6, align 8
  %144 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %178

147:                                              ; preds = %136
  %148 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %6, align 8
  %149 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i64 @of_property_read_bool(i64 %150, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0))
  %152 = load %struct.rk_priv_data*, %struct.rk_priv_data** %8, align 8
  %153 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %152, i32 0, i32 4
  store i64 %151, i64* %153, align 8
  %154 = load %struct.rk_priv_data*, %struct.rk_priv_data** %8, align 8
  %155 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %177

158:                                              ; preds = %147
  %159 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %6, align 8
  %160 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i32* @of_reset_control_get(i64 %161, i32* null)
  %163 = load %struct.rk_priv_data*, %struct.rk_priv_data** %8, align 8
  %164 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %163, i32 0, i32 5
  store i32* %162, i32** %164, align 8
  %165 = load %struct.rk_priv_data*, %struct.rk_priv_data** %8, align 8
  %166 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %165, i32 0, i32 5
  %167 = load i32*, i32** %166, align 8
  %168 = call i64 @IS_ERR(i32* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %158
  %171 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %172 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %171, i32 0, i32 0
  %173 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %172, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0))
  %174 = load %struct.rk_priv_data*, %struct.rk_priv_data** %8, align 8
  %175 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %174, i32 0, i32 5
  store i32* null, i32** %175, align 8
  br label %176

176:                                              ; preds = %170, %158
  br label %177

177:                                              ; preds = %176, %147
  br label %178

178:                                              ; preds = %177, %136
  %179 = load %struct.device*, %struct.device** %9, align 8
  %180 = load %struct.rk_priv_data*, %struct.rk_priv_data** %8, align 8
  %181 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0)
  %186 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %179, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i8* %185)
  %187 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %188 = load %struct.rk_priv_data*, %struct.rk_priv_data** %8, align 8
  %189 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %188, i32 0, i32 3
  store %struct.platform_device* %187, %struct.platform_device** %189, align 8
  %190 = load %struct.rk_priv_data*, %struct.rk_priv_data** %8, align 8
  store %struct.rk_priv_data* %190, %struct.rk_priv_data** %4, align 8
  br label %191

191:                                              ; preds = %178, %51, %20
  %192 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  ret %struct.rk_priv_data* %192
}

declare dso_local %struct.rk_priv_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.rk_priv_data* @ERR_PTR(i32) #1

declare dso_local i32 @of_get_phy_mode(i32) #1

declare dso_local i32* @devm_regulator_get_optional(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @of_property_read_string(i32, i8*, i8**) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @of_property_read_bool(i64, i8*) #1

declare dso_local i32* @of_reset_control_get(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
