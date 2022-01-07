; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_conn.c_mlx5_fpga_conn_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_conn.c_mlx5_fpga_conn_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_conn = type { %struct.TYPE_6__, i32, %struct.mlx5_fpga_device*, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mlx5_fpga_device = type { i32 }
%struct.mlx5_fpga_conn_attr = type { i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fpga_qpc = common dso_local global i32 0, align 4
@remote_mac_47_32 = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Failed to query local MAC: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to allocate SGID: %d\0A\00", align 1
@MLX5_ROCE_VERSION_2 = common dso_local global i32 0, align 4
@MLX5_ROCE_L3_TYPE_IPV6 = common dso_local global i32 0, align 4
@MLX5_FPGA_PORT_NUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to set SGID: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Reserved SGID index %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to create CQ: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Failed to create QP: %d\0A\00", align 1
@state = common dso_local global i32 0, align 4
@MLX5_FPGA_QPC_STATE_INIT = common dso_local global i32 0, align 4
@st = common dso_local global i32 0, align 4
@MLX5_FPGA_QPC_ST_RC = common dso_local global i32 0, align 4
@ether_type = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@vid = common dso_local global i32 0, align 4
@next_rcv_psn = common dso_local global i32 0, align 4
@next_send_psn = common dso_local global i32 0, align 4
@pkey = common dso_local global i32 0, align 4
@MLX5_FPGA_PKEY = common dso_local global i32 0, align 4
@remote_qpn = common dso_local global i32 0, align 4
@rnr_retry = common dso_local global i32 0, align 4
@retry_count = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to create FPGA RC QP: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"FPGA QPN is %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_fpga_conn* @mlx5_fpga_conn_create(%struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_conn_attr* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_fpga_conn*, align 8
  %5 = alloca %struct.mlx5_fpga_device*, align 8
  %6 = alloca %struct.mlx5_fpga_conn_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_fpga_conn*, align 8
  %9 = alloca %struct.mlx5_fpga_conn*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_device** %5, align 8
  store %struct.mlx5_fpga_conn_attr* %1, %struct.mlx5_fpga_conn_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.mlx5_fpga_conn_attr*, %struct.mlx5_fpga_conn_attr** %6, align 8
  %14 = getelementptr inbounds %struct.mlx5_fpga_conn_attr, %struct.mlx5_fpga_conn_attr* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.mlx5_fpga_conn* @ERR_PTR(i32 %19)
  store %struct.mlx5_fpga_conn* %20, %struct.mlx5_fpga_conn** %4, align 8
  br label %317

21:                                               ; preds = %3
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.mlx5_fpga_conn* @kzalloc(i32 48, i32 %22)
  store %struct.mlx5_fpga_conn* %23, %struct.mlx5_fpga_conn** %9, align 8
  %24 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %25 = icmp ne %struct.mlx5_fpga_conn* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.mlx5_fpga_conn* @ERR_PTR(i32 %28)
  store %struct.mlx5_fpga_conn* %29, %struct.mlx5_fpga_conn** %4, align 8
  br label %317

30:                                               ; preds = %21
  %31 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %32 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %33 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %32, i32 0, i32 2
  store %struct.mlx5_fpga_device* %31, %struct.mlx5_fpga_device** %33, align 8
  %34 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %35 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %40 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @spin_lock_init(i32* %42)
  %44 = load %struct.mlx5_fpga_conn_attr*, %struct.mlx5_fpga_conn_attr** %6, align 8
  %45 = getelementptr inbounds %struct.mlx5_fpga_conn_attr, %struct.mlx5_fpga_conn_attr* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %48 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %47, i32 0, i32 5
  store i64 %46, i64* %48, align 8
  %49 = load %struct.mlx5_fpga_conn_attr*, %struct.mlx5_fpga_conn_attr** %6, align 8
  %50 = getelementptr inbounds %struct.mlx5_fpga_conn_attr, %struct.mlx5_fpga_conn_attr* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %53 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @fpga_qpc, align 4
  %55 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %56 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** @remote_mac_47_32, align 8
  %59 = call i32* @MLX5_ADDR_OF(i32 %54, i32 %57, i32* %58)
  store i32* %59, i32** %10, align 8
  %60 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %61 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @mlx5_query_mac_address(i32 %62, i32* %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %30
  %68 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %12, align 4
  %72 = call %struct.mlx5_fpga_conn* @ERR_PTR(i32 %71)
  store %struct.mlx5_fpga_conn* %72, %struct.mlx5_fpga_conn** %8, align 8
  br label %312

73:                                               ; preds = %30
  %74 = load i32, i32* @fpga_qpc, align 4
  %75 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %76 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = call i32* @MLX5_ADDR_OF(i32 %74, i32 %77, i32* %78)
  store i32* %79, i32** %11, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 254, i32* %81, align 4
  %82 = load i32*, i32** %11, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  store i32 128, i32* %83, align 4
  %84 = load i32*, i32** %11, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 8
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @addrconf_addr_eui48(i32* %85, i32* %86)
  %88 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %89 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %92 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = call i32 @mlx5_core_reserved_gid_alloc(i32 %90, i32* %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %73
  %98 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %12, align 4
  %102 = call %struct.mlx5_fpga_conn* @ERR_PTR(i32 %101)
  store %struct.mlx5_fpga_conn* %102, %struct.mlx5_fpga_conn** %8, align 8
  br label %312

103:                                              ; preds = %73
  %104 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %105 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %108 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @MLX5_ROCE_VERSION_2, align 4
  %112 = load i32, i32* @MLX5_ROCE_L3_TYPE_IPV6, align 4
  %113 = load i32*, i32** %11, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* @MLX5_FPGA_PORT_NUM, align 4
  %116 = call i32 @mlx5_core_roce_gid_set(i32 %106, i32 %110, i32 %111, i32 %112, i32* %113, i32* %114, i32 1, i32 0, i32 %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %103
  %120 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* %12, align 4
  %124 = call %struct.mlx5_fpga_conn* @ERR_PTR(i32 %123)
  store %struct.mlx5_fpga_conn* %124, %struct.mlx5_fpga_conn** %8, align 8
  br label %303

125:                                              ; preds = %103
  %126 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %127 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %128 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device* %126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  %132 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %133 = load %struct.mlx5_fpga_conn_attr*, %struct.mlx5_fpga_conn_attr** %6, align 8
  %134 = getelementptr inbounds %struct.mlx5_fpga_conn_attr, %struct.mlx5_fpga_conn_attr* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.mlx5_fpga_conn_attr*, %struct.mlx5_fpga_conn_attr** %6, align 8
  %137 = getelementptr inbounds %struct.mlx5_fpga_conn_attr, %struct.mlx5_fpga_conn_attr* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %135, %138
  %140 = mul nsw i32 %139, 2
  %141 = call i32 @mlx5_fpga_conn_create_cq(%struct.mlx5_fpga_conn* %132, i32 %140)
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %125
  %145 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %145, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* %12, align 4
  %149 = call %struct.mlx5_fpga_conn* @ERR_PTR(i32 %148)
  store %struct.mlx5_fpga_conn* %149, %struct.mlx5_fpga_conn** %8, align 8
  br label %293

150:                                              ; preds = %125
  %151 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %152 = call i32 @mlx5_fpga_conn_arm_cq(%struct.mlx5_fpga_conn* %151)
  %153 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %154 = load %struct.mlx5_fpga_conn_attr*, %struct.mlx5_fpga_conn_attr** %6, align 8
  %155 = getelementptr inbounds %struct.mlx5_fpga_conn_attr, %struct.mlx5_fpga_conn_attr* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.mlx5_fpga_conn_attr*, %struct.mlx5_fpga_conn_attr** %6, align 8
  %158 = getelementptr inbounds %struct.mlx5_fpga_conn_attr, %struct.mlx5_fpga_conn_attr* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @mlx5_fpga_conn_create_qp(%struct.mlx5_fpga_conn* %153, i32 %156, i32 %159)
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %150
  %164 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %165 = load i32, i32* %12, align 4
  %166 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %164, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* %12, align 4
  %168 = call %struct.mlx5_fpga_conn* @ERR_PTR(i32 %167)
  store %struct.mlx5_fpga_conn* %168, %struct.mlx5_fpga_conn** %8, align 8
  br label %290

169:                                              ; preds = %150
  %170 = load i32, i32* @fpga_qpc, align 4
  %171 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %172 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @state, align 4
  %175 = load i32, i32* @MLX5_FPGA_QPC_STATE_INIT, align 4
  %176 = call i32 @MLX5_SET(i32 %170, i32 %173, i32 %174, i32 %175)
  %177 = load i32, i32* @fpga_qpc, align 4
  %178 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %179 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @MLX5_SET(i32 %177, i32 %180, i32 %181, i32 %182)
  %184 = load i32, i32* @fpga_qpc, align 4
  %185 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %186 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @st, align 4
  %189 = load i32, i32* @MLX5_FPGA_QPC_ST_RC, align 4
  %190 = call i32 @MLX5_SET(i32 %184, i32 %187, i32 %188, i32 %189)
  %191 = load i32, i32* @fpga_qpc, align 4
  %192 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %193 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @ether_type, align 4
  %196 = load i32, i32* @ETH_P_8021Q, align 4
  %197 = call i32 @MLX5_SET(i32 %191, i32 %194, i32 %195, i32 %196)
  %198 = load i32, i32* @fpga_qpc, align 4
  %199 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %200 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @vid, align 4
  %203 = call i32 @MLX5_SET(i32 %198, i32 %201, i32 %202, i32 0)
  %204 = load i32, i32* @fpga_qpc, align 4
  %205 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %206 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @next_rcv_psn, align 4
  %209 = call i32 @MLX5_SET(i32 %204, i32 %207, i32 %208, i32 1)
  %210 = load i32, i32* @fpga_qpc, align 4
  %211 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %212 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @next_send_psn, align 4
  %215 = call i32 @MLX5_SET(i32 %210, i32 %213, i32 %214, i32 0)
  %216 = load i32, i32* @fpga_qpc, align 4
  %217 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %218 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @pkey, align 4
  %221 = load i32, i32* @MLX5_FPGA_PKEY, align 4
  %222 = call i32 @MLX5_SET(i32 %216, i32 %219, i32 %220, i32 %221)
  %223 = load i32, i32* @fpga_qpc, align 4
  %224 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %225 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @remote_qpn, align 4
  %228 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %229 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @MLX5_SET(i32 %223, i32 %226, i32 %227, i32 %232)
  %234 = load i32, i32* @fpga_qpc, align 4
  %235 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %236 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @rnr_retry, align 4
  %239 = call i32 @MLX5_SET(i32 %234, i32 %237, i32 %238, i32 7)
  %240 = load i32, i32* @fpga_qpc, align 4
  %241 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %242 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @retry_count, align 4
  %245 = call i32 @MLX5_SET(i32 %240, i32 %243, i32 %244, i32 7)
  %246 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %247 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %250 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %249, i32 0, i32 3
  %251 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %252 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %251, i32 0, i32 1
  %253 = call i32 @mlx5_fpga_create_qp(i32 %248, i32* %250, i32* %252)
  store i32 %253, i32* %12, align 4
  %254 = load i32, i32* %12, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %262

256:                                              ; preds = %169
  %257 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %258 = load i32, i32* %12, align 4
  %259 = call i32 @mlx5_fpga_err(%struct.mlx5_fpga_device* %257, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %258)
  %260 = load i32, i32* %12, align 4
  %261 = call %struct.mlx5_fpga_conn* @ERR_PTR(i32 %260)
  store %struct.mlx5_fpga_conn* %261, %struct.mlx5_fpga_conn** %8, align 8
  br label %287

262:                                              ; preds = %169
  %263 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %264 = call i32 @mlx5_fpga_conn_connect(%struct.mlx5_fpga_conn* %263)
  store i32 %264, i32* %12, align 4
  %265 = load i32, i32* %12, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %262
  %268 = load i32, i32* %12, align 4
  %269 = call %struct.mlx5_fpga_conn* @ERR_PTR(i32 %268)
  store %struct.mlx5_fpga_conn* %269, %struct.mlx5_fpga_conn** %8, align 8
  br label %277

270:                                              ; preds = %262
  %271 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %272 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %273 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device* %271, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %274)
  %276 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  store %struct.mlx5_fpga_conn* %276, %struct.mlx5_fpga_conn** %8, align 8
  br label %315

277:                                              ; preds = %267
  %278 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %279 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %278, i32 0, i32 2
  %280 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %279, align 8
  %281 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %284 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @mlx5_fpga_destroy_qp(i32 %282, i32 %285)
  br label %287

287:                                              ; preds = %277, %256
  %288 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %289 = call i32 @mlx5_fpga_conn_destroy_qp(%struct.mlx5_fpga_conn* %288)
  br label %290

290:                                              ; preds = %287, %163
  %291 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %292 = call i32 @mlx5_fpga_conn_destroy_cq(%struct.mlx5_fpga_conn* %291)
  br label %293

293:                                              ; preds = %290, %144
  %294 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %295 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %298 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @MLX5_FPGA_PORT_NUM, align 4
  %302 = call i32 @mlx5_core_roce_gid_set(i32 %296, i32 %300, i32 0, i32 0, i32* null, i32* null, i32 0, i32 0, i32 %301)
  br label %303

303:                                              ; preds = %293, %119
  %304 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %305 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %308 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @mlx5_core_reserved_gid_free(i32 %306, i32 %310)
  br label %312

312:                                              ; preds = %303, %97, %67
  %313 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %9, align 8
  %314 = call i32 @kfree(%struct.mlx5_fpga_conn* %313)
  br label %315

315:                                              ; preds = %312, %270
  %316 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %8, align 8
  store %struct.mlx5_fpga_conn* %316, %struct.mlx5_fpga_conn** %4, align 8
  br label %317

317:                                              ; preds = %315, %26, %17
  %318 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  ret %struct.mlx5_fpga_conn* %318
}

declare dso_local %struct.mlx5_fpga_conn* @ERR_PTR(i32) #1

declare dso_local %struct.mlx5_fpga_conn* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32* @MLX5_ADDR_OF(i32, i32, i32*) #1

declare dso_local i32 @mlx5_query_mac_address(i32, i32*) #1

declare dso_local i32 @mlx5_fpga_err(%struct.mlx5_fpga_device*, i8*, i32) #1

declare dso_local i32 @addrconf_addr_eui48(i32*, i32*) #1

declare dso_local i32 @mlx5_core_reserved_gid_alloc(i32, i32*) #1

declare dso_local i32 @mlx5_core_roce_gid_set(i32, i32, i32, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device*, i8*, i32) #1

declare dso_local i32 @mlx5_fpga_conn_create_cq(%struct.mlx5_fpga_conn*, i32) #1

declare dso_local i32 @mlx5_fpga_conn_arm_cq(%struct.mlx5_fpga_conn*) #1

declare dso_local i32 @mlx5_fpga_conn_create_qp(%struct.mlx5_fpga_conn*, i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32, i32, i32) #1

declare dso_local i32 @mlx5_fpga_create_qp(i32, i32*, i32*) #1

declare dso_local i32 @mlx5_fpga_conn_connect(%struct.mlx5_fpga_conn*) #1

declare dso_local i32 @mlx5_fpga_destroy_qp(i32, i32) #1

declare dso_local i32 @mlx5_fpga_conn_destroy_qp(%struct.mlx5_fpga_conn*) #1

declare dso_local i32 @mlx5_fpga_conn_destroy_cq(%struct.mlx5_fpga_conn*) #1

declare dso_local i32 @mlx5_core_reserved_gid_free(i32, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_fpga_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
