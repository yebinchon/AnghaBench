; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_slowpath_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_slowpath_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32, i32, %struct.TYPE_19__*, %struct.TYPE_18__, i32, %struct.TYPE_11__* }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.qed_slowpath_params = type { i32, i32, i32, i32, i32, i32 }
%struct.qed_drv_load_params = type { i32, i32, i32, %struct.qed_drv_load_params*, i32, i32, i32, i32*, i32, %struct.qed_drv_load_params*, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { i32, i8* }
%struct.TYPE_15__ = type { i32, i8* }
%struct.TYPE_14__ = type { i32, i8* }
%struct.TYPE_13__ = type { i32, i8* }
%struct.TYPE_12__ = type { i32, i8* }
%struct.qed_hw_init_params = type { i32, i32, i32, %struct.qed_hw_init_params*, i32, i32, i32, i32*, i32, %struct.qed_hw_init_params*, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.qed_mcp_drv_version = type { i32, i32 }
%struct.qed_tunnel_info = type { i32, i32, i32, %struct.qed_tunnel_info*, i32, i32, i32, i32*, i32, %struct.qed_tunnel_info*, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.qed_hwfn = type { %struct.qed_ptt*, i32, i64 }
%struct.qed_ptt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@QED_FW_FILE_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to find fw file - /lib/firmware/%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to acquire PTT for aRFS\0A\00", align 1
@QED_DEFAULT_RX_USECS = common dso_local global i32 0, align 4
@QED_TUNN_CLSS_MAC_VLAN = common dso_local global i8* null, align 8
@QED_LOAD_REQ_LOCK_TO_DEFAULT = common dso_local global i32 0, align 4
@QED_OVERRIDE_FORCE_LOAD_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"HW initialization and function start completed successfully\0A\00", align 1
@QED_MODE_VXLAN_TUNN = common dso_local global i32 0, align 4
@QED_MODE_L2GENEVE_TUNN = common dso_local global i32 0, align 4
@QED_MODE_IPGENEVE_TUNN = common dso_local global i32 0, align 4
@QED_MODE_L2GRE_TUNN = common dso_local global i32 0, align 4
@QED_MODE_IPGRE_TUNN = common dso_local global i32 0, align 4
@MCP_DRV_VER_STR_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed sending drv version command\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, %struct.qed_slowpath_params*)* @qed_slowpath_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_slowpath_start(%struct.qed_dev* %0, %struct.qed_slowpath_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca %struct.qed_slowpath_params*, align 8
  %6 = alloca %struct.qed_drv_load_params, align 8
  %7 = alloca %struct.qed_hw_init_params, align 8
  %8 = alloca %struct.qed_mcp_drv_version, align 4
  %9 = alloca %struct.qed_tunnel_info, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.qed_hwfn*, align 8
  %12 = alloca %struct.qed_ptt*, align 8
  %13 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %4, align 8
  store %struct.qed_slowpath_params* %1, %struct.qed_slowpath_params** %5, align 8
  store i32* null, i32** %10, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  %16 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %17 = call i64 @qed_iov_wq_start(%struct.qed_dev* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %275

20:                                               ; preds = %2
  %21 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %22 = call i64 @qed_slowpath_wq_start(%struct.qed_dev* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %275

25:                                               ; preds = %20
  %26 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %27 = call i64 @IS_PF(%struct.qed_dev* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %65

29:                                               ; preds = %25
  %30 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %31 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %30, i32 0, i32 2
  %32 = load i32, i32* @QED_FW_FILE_NAME, align 4
  %33 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %34 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %33, i32 0, i32 5
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = call i32 @request_firmware(%struct.TYPE_19__** %31, i32 %32, i32* %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %42 = load i32, i32* @QED_FW_FILE_NAME, align 4
  %43 = call i32 (%struct.qed_dev*, i8*, ...) @DP_NOTICE(%struct.qed_dev* %41, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %275

44:                                               ; preds = %29
  %45 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %46 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %64

49:                                               ; preds = %44
  %50 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %51 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %50)
  %52 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %51)
  store %struct.qed_ptt* %52, %struct.qed_ptt** %12, align 8
  %53 = load %struct.qed_ptt*, %struct.qed_ptt** %12, align 8
  %54 = icmp ne %struct.qed_ptt* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.qed_ptt*, %struct.qed_ptt** %12, align 8
  %57 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %58 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %57)
  %59 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %58, i32 0, i32 0
  store %struct.qed_ptt* %56, %struct.qed_ptt** %59, align 8
  br label %63

60:                                               ; preds = %49
  %61 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %62 = call i32 (%struct.qed_dev*, i8*, ...) @DP_NOTICE(%struct.qed_dev* %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %275

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64, %25
  %66 = load i32, i32* @QED_DEFAULT_RX_USECS, align 4
  %67 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %68 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %70 = call i32 @qed_nic_setup(%struct.qed_dev* %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %275

74:                                               ; preds = %65
  %75 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %76 = call i64 @IS_PF(%struct.qed_dev* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %80 = load %struct.qed_slowpath_params*, %struct.qed_slowpath_params** %5, align 8
  %81 = getelementptr inbounds %struct.qed_slowpath_params, %struct.qed_slowpath_params* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @qed_slowpath_setup_int(%struct.qed_dev* %79, i32 %82)
  store i32 %83, i32* %13, align 4
  br label %87

84:                                               ; preds = %74
  %85 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %86 = call i32 @qed_slowpath_vf_setup_int(%struct.qed_dev* %85)
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %84, %78
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %272

91:                                               ; preds = %87
  %92 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %93 = call i64 @IS_PF(%struct.qed_dev* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %91
  %96 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %97 = call i32 @qed_alloc_stream_mem(%struct.qed_dev* %96)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %258

101:                                              ; preds = %95
  %102 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %103 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %102, i32 0, i32 2
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  store i32* %107, i32** %10, align 8
  %108 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %109 = call i32 @qed_dbg_pf_init(%struct.qed_dev* %108)
  br label %110

110:                                              ; preds = %101, %91
  %111 = bitcast %struct.qed_hw_init_params* %7 to %struct.qed_tunnel_info*
  %112 = call i32 @memset(%struct.qed_tunnel_info* %111, i32 0, i32 144)
  %113 = call i32 @memset(%struct.qed_tunnel_info* %9, i32 0, i32 144)
  %114 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %9, i32 0, i32 14
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  store i32 1, i32* %115, align 8
  %116 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %9, i32 0, i32 13
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  %118 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %9, i32 0, i32 12
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %9, i32 0, i32 11
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  %122 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %9, i32 0, i32 10
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  %124 = load i8*, i8** @QED_TUNN_CLSS_MAC_VLAN, align 8
  %125 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %9, i32 0, i32 14
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  %127 = load i8*, i8** @QED_TUNN_CLSS_MAC_VLAN, align 8
  %128 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %9, i32 0, i32 13
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = load i8*, i8** @QED_TUNN_CLSS_MAC_VLAN, align 8
  %131 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %9, i32 0, i32 12
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  %133 = load i8*, i8** @QED_TUNN_CLSS_MAC_VLAN, align 8
  %134 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %9, i32 0, i32 11
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  store i8* %133, i8** %135, align 8
  %136 = load i8*, i8** @QED_TUNN_CLSS_MAC_VLAN, align 8
  %137 = getelementptr inbounds %struct.qed_tunnel_info, %struct.qed_tunnel_info* %9, i32 0, i32 10
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  %139 = bitcast %struct.qed_tunnel_info* %9 to %struct.qed_hw_init_params*
  %140 = getelementptr inbounds %struct.qed_hw_init_params, %struct.qed_hw_init_params* %7, i32 0, i32 9
  store %struct.qed_hw_init_params* %139, %struct.qed_hw_init_params** %140, align 8
  %141 = getelementptr inbounds %struct.qed_hw_init_params, %struct.qed_hw_init_params* %7, i32 0, i32 0
  store i32 1, i32* %141, align 8
  %142 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %143 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = getelementptr inbounds %struct.qed_hw_init_params, %struct.qed_hw_init_params* %7, i32 0, i32 8
  store i32 %146, i32* %147, align 8
  %148 = getelementptr inbounds %struct.qed_hw_init_params, %struct.qed_hw_init_params* %7, i32 0, i32 1
  store i32 1, i32* %148, align 4
  %149 = load i32*, i32** %10, align 8
  %150 = getelementptr inbounds %struct.qed_hw_init_params, %struct.qed_hw_init_params* %7, i32 0, i32 7
  store i32* %149, i32** %150, align 8
  %151 = bitcast %struct.qed_drv_load_params* %6 to %struct.qed_tunnel_info*
  %152 = call i32 @memset(%struct.qed_tunnel_info* %151, i32 0, i32 144)
  %153 = call i32 (...) @is_kdump_kernel()
  %154 = getelementptr inbounds %struct.qed_drv_load_params, %struct.qed_drv_load_params* %6, i32 0, i32 6
  store i32 %153, i32* %154, align 8
  %155 = load i32, i32* @QED_LOAD_REQ_LOCK_TO_DEFAULT, align 4
  %156 = getelementptr inbounds %struct.qed_drv_load_params, %struct.qed_drv_load_params* %6, i32 0, i32 5
  store i32 %155, i32* %156, align 4
  %157 = getelementptr inbounds %struct.qed_drv_load_params, %struct.qed_drv_load_params* %6, i32 0, i32 2
  store i32 0, i32* %157, align 8
  %158 = load i32, i32* @QED_OVERRIDE_FORCE_LOAD_NONE, align 4
  %159 = getelementptr inbounds %struct.qed_drv_load_params, %struct.qed_drv_load_params* %6, i32 0, i32 4
  store i32 %158, i32* %159, align 8
  %160 = bitcast %struct.qed_drv_load_params* %6 to %struct.qed_hw_init_params*
  %161 = getelementptr inbounds %struct.qed_hw_init_params, %struct.qed_hw_init_params* %7, i32 0, i32 3
  store %struct.qed_hw_init_params* %160, %struct.qed_hw_init_params** %161, align 8
  %162 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %163 = bitcast %struct.qed_hw_init_params* %7 to %struct.qed_tunnel_info*
  %164 = call i32 @qed_hw_init(%struct.qed_dev* %162, %struct.qed_tunnel_info* %163)
  store i32 %164, i32* %13, align 4
  %165 = load i32, i32* %13, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %110
  br label %258

168:                                              ; preds = %110
  %169 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %170 = call i32 @DP_INFO(%struct.qed_dev* %169, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  %171 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %172 = call i64 @IS_PF(%struct.qed_dev* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %191

174:                                              ; preds = %168
  %175 = load i32, i32* @QED_MODE_VXLAN_TUNN, align 4
  %176 = call i32 @BIT(i32 %175)
  %177 = load i32, i32* @QED_MODE_L2GENEVE_TUNN, align 4
  %178 = call i32 @BIT(i32 %177)
  %179 = or i32 %176, %178
  %180 = load i32, i32* @QED_MODE_IPGENEVE_TUNN, align 4
  %181 = call i32 @BIT(i32 %180)
  %182 = or i32 %179, %181
  %183 = load i32, i32* @QED_MODE_L2GRE_TUNN, align 4
  %184 = call i32 @BIT(i32 %183)
  %185 = or i32 %182, %184
  %186 = load i32, i32* @QED_MODE_IPGRE_TUNN, align 4
  %187 = call i32 @BIT(i32 %186)
  %188 = or i32 %185, %187
  %189 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %190 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  br label %191

191:                                              ; preds = %174, %168
  %192 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %193 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %192)
  %194 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %191
  %198 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %199 = call i32 @qed_ll2_alloc_if(%struct.qed_dev* %198)
  store i32 %199, i32* %13, align 4
  %200 = load i32, i32* %13, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  br label %255

203:                                              ; preds = %197
  br label %204

204:                                              ; preds = %203, %191
  %205 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %206 = call i64 @IS_PF(%struct.qed_dev* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %249

208:                                              ; preds = %204
  %209 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %210 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %209)
  store %struct.qed_hwfn* %210, %struct.qed_hwfn** %11, align 8
  %211 = load %struct.qed_slowpath_params*, %struct.qed_slowpath_params** %5, align 8
  %212 = getelementptr inbounds %struct.qed_slowpath_params, %struct.qed_slowpath_params* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = shl i32 %213, 24
  %215 = load %struct.qed_slowpath_params*, %struct.qed_slowpath_params** %5, align 8
  %216 = getelementptr inbounds %struct.qed_slowpath_params, %struct.qed_slowpath_params* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = shl i32 %217, 16
  %219 = or i32 %214, %218
  %220 = load %struct.qed_slowpath_params*, %struct.qed_slowpath_params** %5, align 8
  %221 = getelementptr inbounds %struct.qed_slowpath_params, %struct.qed_slowpath_params* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = shl i32 %222, 8
  %224 = or i32 %219, %223
  %225 = load %struct.qed_slowpath_params*, %struct.qed_slowpath_params** %5, align 8
  %226 = getelementptr inbounds %struct.qed_slowpath_params, %struct.qed_slowpath_params* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %224, %227
  %229 = getelementptr inbounds %struct.qed_mcp_drv_version, %struct.qed_mcp_drv_version* %8, i32 0, i32 0
  store i32 %228, i32* %229, align 4
  %230 = getelementptr inbounds %struct.qed_mcp_drv_version, %struct.qed_mcp_drv_version* %8, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.qed_slowpath_params*, %struct.qed_slowpath_params** %5, align 8
  %233 = getelementptr inbounds %struct.qed_slowpath_params, %struct.qed_slowpath_params* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  %235 = load i64, i64* @MCP_DRV_VER_STR_SIZE, align 8
  %236 = sub nsw i64 %235, 4
  %237 = call i32 @strlcpy(i32 %231, i32 %234, i64 %236)
  %238 = load %struct.qed_hwfn*, %struct.qed_hwfn** %11, align 8
  %239 = load %struct.qed_hwfn*, %struct.qed_hwfn** %11, align 8
  %240 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @qed_mcp_send_drv_version(%struct.qed_hwfn* %238, i32 %241, %struct.qed_mcp_drv_version* %8)
  store i32 %242, i32* %13, align 4
  %243 = load i32, i32* %13, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %208
  %246 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %247 = call i32 (%struct.qed_dev*, i8*, ...) @DP_NOTICE(%struct.qed_dev* %246, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %252

248:                                              ; preds = %208
  br label %249

249:                                              ; preds = %248, %204
  %250 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %251 = call i32 @qed_reset_vport_stats(%struct.qed_dev* %250)
  store i32 0, i32* %3, align 4
  br label %313

252:                                              ; preds = %245
  %253 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %254 = call i32 @qed_ll2_dealloc_if(%struct.qed_dev* %253)
  br label %255

255:                                              ; preds = %252, %202
  %256 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %257 = call i32 @qed_hw_stop(%struct.qed_dev* %256)
  br label %258

258:                                              ; preds = %255, %167, %100
  %259 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %260 = call i32 @qed_hw_timers_stop_all(%struct.qed_dev* %259)
  %261 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %262 = call i64 @IS_PF(%struct.qed_dev* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %258
  %265 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %266 = call i32 @qed_slowpath_irq_free(%struct.qed_dev* %265)
  br label %267

267:                                              ; preds = %264, %258
  %268 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %269 = call i32 @qed_free_stream_mem(%struct.qed_dev* %268)
  %270 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %271 = call i32 @qed_disable_msix(%struct.qed_dev* %270)
  br label %272

272:                                              ; preds = %267, %90
  %273 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %274 = call i32 @qed_resc_free(%struct.qed_dev* %273)
  br label %275

275:                                              ; preds = %272, %73, %60, %40, %24, %19
  %276 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %277 = call i64 @IS_PF(%struct.qed_dev* %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %275
  %280 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %281 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %280, i32 0, i32 2
  %282 = load %struct.TYPE_19__*, %struct.TYPE_19__** %281, align 8
  %283 = call i32 @release_firmware(%struct.TYPE_19__* %282)
  br label %284

284:                                              ; preds = %279, %275
  %285 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %286 = call i64 @IS_PF(%struct.qed_dev* %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %307

288:                                              ; preds = %284
  %289 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %290 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = icmp eq i32 %291, 1
  br i1 %292, label %293, label %307

293:                                              ; preds = %288
  %294 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %295 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %294)
  %296 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %295, i32 0, i32 0
  %297 = load %struct.qed_ptt*, %struct.qed_ptt** %296, align 8
  %298 = icmp ne %struct.qed_ptt* %297, null
  br i1 %298, label %299, label %307

299:                                              ; preds = %293
  %300 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %301 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %300)
  %302 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %303 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %302)
  %304 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %303, i32 0, i32 0
  %305 = load %struct.qed_ptt*, %struct.qed_ptt** %304, align 8
  %306 = call i32 @qed_ptt_release(%struct.qed_hwfn* %301, %struct.qed_ptt* %305)
  br label %307

307:                                              ; preds = %299, %293, %288, %284
  %308 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %309 = call i32 @qed_iov_wq_stop(%struct.qed_dev* %308, i32 0)
  %310 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %311 = call i32 @qed_slowpath_wq_stop(%struct.qed_dev* %310)
  %312 = load i32, i32* %13, align 4
  store i32 %312, i32* %3, align 4
  br label %313

313:                                              ; preds = %307, %249
  %314 = load i32, i32* %3, align 4
  ret i32 %314
}

declare dso_local i64 @qed_iov_wq_start(%struct.qed_dev*) #1

declare dso_local i64 @qed_slowpath_wq_start(%struct.qed_dev*) #1

declare dso_local i64 @IS_PF(%struct.qed_dev*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_19__**, i32, i32*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*, ...) #1

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

declare dso_local %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev*) #1

declare dso_local i32 @qed_nic_setup(%struct.qed_dev*) #1

declare dso_local i32 @qed_slowpath_setup_int(%struct.qed_dev*, i32) #1

declare dso_local i32 @qed_slowpath_vf_setup_int(%struct.qed_dev*) #1

declare dso_local i32 @qed_alloc_stream_mem(%struct.qed_dev*) #1

declare dso_local i32 @qed_dbg_pf_init(%struct.qed_dev*) #1

declare dso_local i32 @memset(%struct.qed_tunnel_info*, i32, i32) #1

declare dso_local i32 @is_kdump_kernel(...) #1

declare dso_local i32 @qed_hw_init(%struct.qed_dev*, %struct.qed_tunnel_info*) #1

declare dso_local i32 @DP_INFO(%struct.qed_dev*, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @qed_ll2_alloc_if(%struct.qed_dev*) #1

declare dso_local i32 @strlcpy(i32, i32, i64) #1

declare dso_local i32 @qed_mcp_send_drv_version(%struct.qed_hwfn*, i32, %struct.qed_mcp_drv_version*) #1

declare dso_local i32 @qed_reset_vport_stats(%struct.qed_dev*) #1

declare dso_local i32 @qed_ll2_dealloc_if(%struct.qed_dev*) #1

declare dso_local i32 @qed_hw_stop(%struct.qed_dev*) #1

declare dso_local i32 @qed_hw_timers_stop_all(%struct.qed_dev*) #1

declare dso_local i32 @qed_slowpath_irq_free(%struct.qed_dev*) #1

declare dso_local i32 @qed_free_stream_mem(%struct.qed_dev*) #1

declare dso_local i32 @qed_disable_msix(%struct.qed_dev*) #1

declare dso_local i32 @qed_resc_free(%struct.qed_dev*) #1

declare dso_local i32 @release_firmware(%struct.TYPE_19__*) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_iov_wq_stop(%struct.qed_dev*, i32) #1

declare dso_local i32 @qed_slowpath_wq_stop(%struct.qed_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
