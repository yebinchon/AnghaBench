; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.mlxsw_bus_info = type { i32, i64 }
%struct.mlxsw_sp = type { i64, %struct.TYPE_4__*, i64, %struct.TYPE_5__, %struct.mlxsw_bus_info*, %struct.mlxsw_core* }
%struct.TYPE_4__ = type { i32 (i64)*, i32 (i64)*, i64 (%struct.mlxsw_sp*)*, i64 (%struct.mlxsw_sp*, i32)* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Failed to get base mac\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to initialize KVDL\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to initialize FIDs\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Failed to set traps\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to initialize devlink traps\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to initialize buffers\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Failed to initialize LAG\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Failed to init span system\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Failed to initialize switchdev\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Failed to init counter pool\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Failed to initialize ACL actions\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Failed to initialize NVE\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Failed to initialize ACL\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Failed to initialize router\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Failed to init ptp clock\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Failed to initialize PTP\0A\00", align 1
@mlxsw_sp_netdevice_event = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [36 x i8] c"Failed to register netdev notifier\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Failed to init pipeline debug\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Failed to create ports\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_core*, %struct.mlxsw_bus_info*)* @mlxsw_sp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_init(%struct.mlxsw_core* %0, %struct.mlxsw_bus_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_core*, align 8
  %5 = alloca %struct.mlxsw_bus_info*, align 8
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %4, align 8
  store %struct.mlxsw_bus_info* %1, %struct.mlxsw_bus_info** %5, align 8
  %8 = load %struct.mlxsw_core*, %struct.mlxsw_core** %4, align 8
  %9 = call %struct.mlxsw_sp* @mlxsw_core_driver_priv(%struct.mlxsw_core* %8)
  store %struct.mlxsw_sp* %9, %struct.mlxsw_sp** %6, align 8
  %10 = load %struct.mlxsw_core*, %struct.mlxsw_core** %4, align 8
  %11 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %11, i32 0, i32 5
  store %struct.mlxsw_core* %10, %struct.mlxsw_core** %12, align 8
  %13 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %5, align 8
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %14, i32 0, i32 4
  store %struct.mlxsw_bus_info* %13, %struct.mlxsw_bus_info** %15, align 8
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %17 = call i32 @mlxsw_sp_fw_rev_validate(%struct.mlxsw_sp* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %384

22:                                               ; preds = %2
  %23 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %24 = call i32 @mlxsw_sp_base_mac_get(%struct.mlxsw_sp* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %28, i32 0, i32 4
  %30 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %29, align 8
  %31 = getelementptr inbounds %struct.mlxsw_bus_info, %struct.mlxsw_bus_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %384

35:                                               ; preds = %22
  %36 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %37 = call i32 @mlxsw_sp_kvdl_init(%struct.mlxsw_sp* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %41, i32 0, i32 4
  %43 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %42, align 8
  %44 = getelementptr inbounds %struct.mlxsw_bus_info, %struct.mlxsw_bus_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %384

48:                                               ; preds = %35
  %49 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %50 = call i32 @mlxsw_sp_fids_init(%struct.mlxsw_sp* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %55 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %54, i32 0, i32 4
  %56 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %55, align 8
  %57 = getelementptr inbounds %struct.mlxsw_bus_info, %struct.mlxsw_bus_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %380

60:                                               ; preds = %48
  %61 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %62 = call i32 @mlxsw_sp_traps_init(%struct.mlxsw_sp* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %67 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %66, i32 0, i32 4
  %68 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %67, align 8
  %69 = getelementptr inbounds %struct.mlxsw_bus_info, %struct.mlxsw_bus_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %377

72:                                               ; preds = %60
  %73 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %74 = call i32 @mlxsw_sp_devlink_traps_init(%struct.mlxsw_sp* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %79 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %78, i32 0, i32 4
  %80 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %79, align 8
  %81 = getelementptr inbounds %struct.mlxsw_bus_info, %struct.mlxsw_bus_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %374

84:                                               ; preds = %72
  %85 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %86 = call i32 @mlxsw_sp_buffers_init(%struct.mlxsw_sp* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %91 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %90, i32 0, i32 4
  %92 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %91, align 8
  %93 = getelementptr inbounds %struct.mlxsw_bus_info, %struct.mlxsw_bus_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @dev_err(i32 %94, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %371

96:                                               ; preds = %84
  %97 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %98 = call i32 @mlxsw_sp_lag_init(%struct.mlxsw_sp* %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %103 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %102, i32 0, i32 4
  %104 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %103, align 8
  %105 = getelementptr inbounds %struct.mlxsw_bus_info, %struct.mlxsw_bus_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @dev_err(i32 %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %368

108:                                              ; preds = %96
  %109 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %110 = call i32 @mlxsw_sp_span_init(%struct.mlxsw_sp* %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %115 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %114, i32 0, i32 4
  %116 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %115, align 8
  %117 = getelementptr inbounds %struct.mlxsw_bus_info, %struct.mlxsw_bus_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @dev_err(i32 %118, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %365

120:                                              ; preds = %108
  %121 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %122 = call i32 @mlxsw_sp_switchdev_init(%struct.mlxsw_sp* %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %127 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %126, i32 0, i32 4
  %128 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %127, align 8
  %129 = getelementptr inbounds %struct.mlxsw_bus_info, %struct.mlxsw_bus_info* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @dev_err(i32 %130, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %362

132:                                              ; preds = %120
  %133 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %134 = call i32 @mlxsw_sp_counter_pool_init(%struct.mlxsw_sp* %133)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %139 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %138, i32 0, i32 4
  %140 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %139, align 8
  %141 = getelementptr inbounds %struct.mlxsw_bus_info, %struct.mlxsw_bus_info* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @dev_err(i32 %142, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %359

144:                                              ; preds = %132
  %145 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %146 = call i32 @mlxsw_sp_afa_init(%struct.mlxsw_sp* %145)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %144
  %150 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %151 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %150, i32 0, i32 4
  %152 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %151, align 8
  %153 = getelementptr inbounds %struct.mlxsw_bus_info, %struct.mlxsw_bus_info* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @dev_err(i32 %154, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %356

156:                                              ; preds = %144
  %157 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %158 = call i32 @mlxsw_sp_nve_init(%struct.mlxsw_sp* %157)
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %156
  %162 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %163 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %162, i32 0, i32 4
  %164 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %163, align 8
  %165 = getelementptr inbounds %struct.mlxsw_bus_info, %struct.mlxsw_bus_info* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @dev_err(i32 %166, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %353

168:                                              ; preds = %156
  %169 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %170 = call i32 @mlxsw_sp_acl_init(%struct.mlxsw_sp* %169)
  store i32 %170, i32* %7, align 4
  %171 = load i32, i32* %7, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %168
  %174 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %175 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %174, i32 0, i32 4
  %176 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %175, align 8
  %177 = getelementptr inbounds %struct.mlxsw_bus_info, %struct.mlxsw_bus_info* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @dev_err(i32 %178, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  br label %350

180:                                              ; preds = %168
  %181 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %182 = call i32 @mlxsw_sp_router_init(%struct.mlxsw_sp* %181)
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* %7, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %180
  %186 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %187 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %186, i32 0, i32 4
  %188 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %187, align 8
  %189 = getelementptr inbounds %struct.mlxsw_bus_info, %struct.mlxsw_bus_info* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @dev_err(i32 %190, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  br label %347

192:                                              ; preds = %180
  %193 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %194 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %193, i32 0, i32 4
  %195 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %194, align 8
  %196 = getelementptr inbounds %struct.mlxsw_bus_info, %struct.mlxsw_bus_info* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %231

199:                                              ; preds = %192
  %200 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %201 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %200, i32 0, i32 1
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 3
  %204 = load i64 (%struct.mlxsw_sp*, i32)*, i64 (%struct.mlxsw_sp*, i32)** %203, align 8
  %205 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %206 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %207 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %206, i32 0, i32 4
  %208 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %207, align 8
  %209 = getelementptr inbounds %struct.mlxsw_bus_info, %struct.mlxsw_bus_info* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i64 %204(%struct.mlxsw_sp* %205, i32 %210)
  %212 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %213 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %212, i32 0, i32 0
  store i64 %211, i64* %213, align 8
  %214 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %215 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = call i64 @IS_ERR(i64 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %230

219:                                              ; preds = %199
  %220 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %221 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @PTR_ERR(i64 %222)
  store i32 %223, i32* %7, align 4
  %224 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %225 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %224, i32 0, i32 4
  %226 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %225, align 8
  %227 = getelementptr inbounds %struct.mlxsw_bus_info, %struct.mlxsw_bus_info* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @dev_err(i32 %228, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  br label %344

230:                                              ; preds = %199
  br label %231

231:                                              ; preds = %230, %192
  %232 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %233 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %263

236:                                              ; preds = %231
  %237 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %238 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %237, i32 0, i32 1
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 2
  %241 = load i64 (%struct.mlxsw_sp*)*, i64 (%struct.mlxsw_sp*)** %240, align 8
  %242 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %243 = call i64 %241(%struct.mlxsw_sp* %242)
  %244 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %245 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %244, i32 0, i32 2
  store i64 %243, i64* %245, align 8
  %246 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %247 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = call i64 @IS_ERR(i64 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %262

251:                                              ; preds = %236
  %252 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %253 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %252, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  %255 = call i32 @PTR_ERR(i64 %254)
  store i32 %255, i32* %7, align 4
  %256 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %257 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %256, i32 0, i32 4
  %258 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %257, align 8
  %259 = getelementptr inbounds %struct.mlxsw_bus_info, %struct.mlxsw_bus_info* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @dev_err(i32 %260, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  br label %328

262:                                              ; preds = %236
  br label %263

263:                                              ; preds = %262, %231
  %264 = load i32, i32* @mlxsw_sp_netdevice_event, align 4
  %265 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %266 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %265, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 0
  store i32 %264, i32* %267, align 8
  %268 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %269 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %268, i32 0, i32 3
  %270 = call i32 @register_netdevice_notifier(%struct.TYPE_5__* %269)
  store i32 %270, i32* %7, align 4
  %271 = load i32, i32* %7, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %263
  %274 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %275 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %274, i32 0, i32 4
  %276 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %275, align 8
  %277 = getelementptr inbounds %struct.mlxsw_bus_info, %struct.mlxsw_bus_info* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @dev_err(i32 %278, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0))
  br label %312

280:                                              ; preds = %263
  %281 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %282 = call i32 @mlxsw_sp_dpipe_init(%struct.mlxsw_sp* %281)
  store i32 %282, i32* %7, align 4
  %283 = load i32, i32* %7, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %292

285:                                              ; preds = %280
  %286 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %287 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %286, i32 0, i32 4
  %288 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %287, align 8
  %289 = getelementptr inbounds %struct.mlxsw_bus_info, %struct.mlxsw_bus_info* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @dev_err(i32 %290, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  br label %308

292:                                              ; preds = %280
  %293 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %294 = call i32 @mlxsw_sp_ports_create(%struct.mlxsw_sp* %293)
  store i32 %294, i32* %7, align 4
  %295 = load i32, i32* %7, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %304

297:                                              ; preds = %292
  %298 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %299 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %298, i32 0, i32 4
  %300 = load %struct.mlxsw_bus_info*, %struct.mlxsw_bus_info** %299, align 8
  %301 = getelementptr inbounds %struct.mlxsw_bus_info, %struct.mlxsw_bus_info* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @dev_err(i32 %302, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0))
  br label %305

304:                                              ; preds = %292
  store i32 0, i32* %3, align 4
  br label %384

305:                                              ; preds = %297
  %306 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %307 = call i32 @mlxsw_sp_dpipe_fini(%struct.mlxsw_sp* %306)
  br label %308

308:                                              ; preds = %305, %285
  %309 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %310 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %309, i32 0, i32 3
  %311 = call i32 @unregister_netdevice_notifier(%struct.TYPE_5__* %310)
  br label %312

312:                                              ; preds = %308, %273
  %313 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %314 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %327

317:                                              ; preds = %312
  %318 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %319 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %318, i32 0, i32 1
  %320 = load %struct.TYPE_4__*, %struct.TYPE_4__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 1
  %322 = load i32 (i64)*, i32 (i64)** %321, align 8
  %323 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %324 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %323, i32 0, i32 2
  %325 = load i64, i64* %324, align 8
  %326 = call i32 %322(i64 %325)
  br label %327

327:                                              ; preds = %317, %312
  br label %328

328:                                              ; preds = %327, %251
  %329 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %330 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %343

333:                                              ; preds = %328
  %334 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %335 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %334, i32 0, i32 1
  %336 = load %struct.TYPE_4__*, %struct.TYPE_4__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 0
  %338 = load i32 (i64)*, i32 (i64)** %337, align 8
  %339 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %340 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = call i32 %338(i64 %341)
  br label %343

343:                                              ; preds = %333, %328
  br label %344

344:                                              ; preds = %343, %219
  %345 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %346 = call i32 @mlxsw_sp_router_fini(%struct.mlxsw_sp* %345)
  br label %347

347:                                              ; preds = %344, %185
  %348 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %349 = call i32 @mlxsw_sp_acl_fini(%struct.mlxsw_sp* %348)
  br label %350

350:                                              ; preds = %347, %173
  %351 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %352 = call i32 @mlxsw_sp_nve_fini(%struct.mlxsw_sp* %351)
  br label %353

353:                                              ; preds = %350, %161
  %354 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %355 = call i32 @mlxsw_sp_afa_fini(%struct.mlxsw_sp* %354)
  br label %356

356:                                              ; preds = %353, %149
  %357 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %358 = call i32 @mlxsw_sp_counter_pool_fini(%struct.mlxsw_sp* %357)
  br label %359

359:                                              ; preds = %356, %137
  %360 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %361 = call i32 @mlxsw_sp_switchdev_fini(%struct.mlxsw_sp* %360)
  br label %362

362:                                              ; preds = %359, %125
  %363 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %364 = call i32 @mlxsw_sp_span_fini(%struct.mlxsw_sp* %363)
  br label %365

365:                                              ; preds = %362, %113
  %366 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %367 = call i32 @mlxsw_sp_lag_fini(%struct.mlxsw_sp* %366)
  br label %368

368:                                              ; preds = %365, %101
  %369 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %370 = call i32 @mlxsw_sp_buffers_fini(%struct.mlxsw_sp* %369)
  br label %371

371:                                              ; preds = %368, %89
  %372 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %373 = call i32 @mlxsw_sp_devlink_traps_fini(%struct.mlxsw_sp* %372)
  br label %374

374:                                              ; preds = %371, %77
  %375 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %376 = call i32 @mlxsw_sp_traps_fini(%struct.mlxsw_sp* %375)
  br label %377

377:                                              ; preds = %374, %65
  %378 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %379 = call i32 @mlxsw_sp_fids_fini(%struct.mlxsw_sp* %378)
  br label %380

380:                                              ; preds = %377, %53
  %381 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %382 = call i32 @mlxsw_sp_kvdl_fini(%struct.mlxsw_sp* %381)
  %383 = load i32, i32* %7, align 4
  store i32 %383, i32* %3, align 4
  br label %384

384:                                              ; preds = %380, %304, %40, %27, %20
  %385 = load i32, i32* %3, align 4
  ret i32 %385
}

declare dso_local %struct.mlxsw_sp* @mlxsw_core_driver_priv(%struct.mlxsw_core*) #1

declare dso_local i32 @mlxsw_sp_fw_rev_validate(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_base_mac_get(%struct.mlxsw_sp*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mlxsw_sp_kvdl_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_fids_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_traps_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_devlink_traps_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_buffers_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_lag_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_span_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_switchdev_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_counter_pool_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_afa_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_nve_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_acl_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_router_init(%struct.mlxsw_sp*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @register_netdevice_notifier(%struct.TYPE_5__*) #1

declare dso_local i32 @mlxsw_sp_dpipe_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_ports_create(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_dpipe_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @unregister_netdevice_notifier(%struct.TYPE_5__*) #1

declare dso_local i32 @mlxsw_sp_router_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_acl_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_nve_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_afa_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_counter_pool_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_switchdev_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_span_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_lag_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_buffers_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_devlink_traps_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_traps_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_fids_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_kvdl_fini(%struct.mlxsw_sp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
