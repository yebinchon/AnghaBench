; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_bnx2x_fcoe_ofld1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_bnx2x_fcoe_ofld1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, i32, %struct.cnic_local* }
%struct.cnic_local = type { %struct.cnic_context* }
%struct.cnic_context = type { i32, i32 }
%struct.kwqe = type { i32 }
%struct.bnx2x = type { i32 }
%struct.fcoe_kwqe_conn_offload1 = type { i32 }
%struct.fcoe_kwqe_conn_offload2 = type { i32 }
%struct.fcoe_kwqe_conn_offload3 = type { i32 }
%struct.fcoe_kwqe_conn_offload4 = type { i32 }
%struct.fcoe_conn_offload_ramrod_params = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.fcoe_context = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.regpair = type { i32 }
%union.l5cm_specific_data = type { i32 }
%struct.fcoe_kcqe = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.kcqe = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BNX2X_FCOE_L5_CID_BASE = common dso_local global i64 0, align 8
@CTX_FL_OFFLD_START = common dso_local global i32 0, align 4
@CDU_REGION_NUMBER_XCM_AG = common dso_local global i32 0, align 4
@FCOE_CONNECTION_TYPE = common dso_local global i32 0, align 4
@CDU_REGION_NUMBER_UCM_AG = common dso_local global i32 0, align 4
@CNIC_KWQ16_DATA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"fcoe_offload size too big\0A\00", align 1
@FCOE_RAMROD_CMD_ID_OFFLOAD_CONN = common dso_local global i32 0, align 4
@FCOE_KCQE_OPCODE_OFFLOAD_CONN = common dso_local global i32 0, align 4
@FCOE_KCQE_COMPLETION_STATUS_CTX_ALLOC_FAILURE = common dso_local global i32 0, align 4
@CNIC_ULP_FCOE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, %struct.kwqe**, i32, i32*)* @cnic_bnx2x_fcoe_ofld1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_bnx2x_fcoe_ofld1(%struct.cnic_dev* %0, %struct.kwqe** %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cnic_dev*, align 8
  %7 = alloca %struct.kwqe**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cnic_local*, align 8
  %14 = alloca %struct.bnx2x*, align 8
  %15 = alloca %struct.fcoe_kwqe_conn_offload1*, align 8
  %16 = alloca %struct.fcoe_kwqe_conn_offload2*, align 8
  %17 = alloca %struct.fcoe_kwqe_conn_offload3*, align 8
  %18 = alloca %struct.fcoe_kwqe_conn_offload4*, align 8
  %19 = alloca %struct.fcoe_conn_offload_ramrod_params*, align 8
  %20 = alloca %struct.cnic_context*, align 8
  %21 = alloca %struct.fcoe_context*, align 8
  %22 = alloca %struct.regpair, align 4
  %23 = alloca %union.l5cm_specific_data, align 4
  %24 = alloca %struct.fcoe_kcqe, align 4
  %25 = alloca [1 x %struct.kcqe*], align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %6, align 8
  store %struct.kwqe** %1, %struct.kwqe*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %28 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %29 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %28, i32 0, i32 2
  %30 = load %struct.cnic_local*, %struct.cnic_local** %29, align 8
  store %struct.cnic_local* %30, %struct.cnic_local** %13, align 8
  %31 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %32 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.bnx2x* @netdev_priv(i32 %33)
  store %struct.bnx2x* %34, %struct.bnx2x** %14, align 8
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %42

37:                                               ; preds = %4
  %38 = load i32, i32* %8, align 4
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %204

42:                                               ; preds = %4
  %43 = load %struct.kwqe**, %struct.kwqe*** %7, align 8
  %44 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %43, i64 0
  %45 = load %struct.kwqe*, %struct.kwqe** %44, align 8
  %46 = bitcast %struct.kwqe* %45 to %struct.fcoe_kwqe_conn_offload1*
  store %struct.fcoe_kwqe_conn_offload1* %46, %struct.fcoe_kwqe_conn_offload1** %15, align 8
  %47 = load %struct.kwqe**, %struct.kwqe*** %7, align 8
  %48 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %47, i64 1
  %49 = load %struct.kwqe*, %struct.kwqe** %48, align 8
  %50 = bitcast %struct.kwqe* %49 to %struct.fcoe_kwqe_conn_offload2*
  store %struct.fcoe_kwqe_conn_offload2* %50, %struct.fcoe_kwqe_conn_offload2** %16, align 8
  %51 = load %struct.kwqe**, %struct.kwqe*** %7, align 8
  %52 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %51, i64 2
  %53 = load %struct.kwqe*, %struct.kwqe** %52, align 8
  %54 = bitcast %struct.kwqe* %53 to %struct.fcoe_kwqe_conn_offload3*
  store %struct.fcoe_kwqe_conn_offload3* %54, %struct.fcoe_kwqe_conn_offload3** %17, align 8
  %55 = load %struct.kwqe**, %struct.kwqe*** %7, align 8
  %56 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %55, i64 3
  %57 = load %struct.kwqe*, %struct.kwqe** %56, align 8
  %58 = bitcast %struct.kwqe* %57 to %struct.fcoe_kwqe_conn_offload4*
  store %struct.fcoe_kwqe_conn_offload4* %58, %struct.fcoe_kwqe_conn_offload4** %18, align 8
  %59 = load i32*, i32** %9, align 8
  store i32 4, i32* %59, align 4
  %60 = load %struct.fcoe_kwqe_conn_offload1*, %struct.fcoe_kwqe_conn_offload1** %15, align 8
  %61 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload1, %struct.fcoe_kwqe_conn_offload1* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %65 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sge i32 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %42
  br label %180

69:                                               ; preds = %42
  %70 = load i64, i64* @BNX2X_FCOE_L5_CID_BASE, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %12, align 4
  %75 = load %struct.cnic_local*, %struct.cnic_local** %13, align 8
  %76 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %75, i32 0, i32 0
  %77 = load %struct.cnic_context*, %struct.cnic_context** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %77, i64 %79
  store %struct.cnic_context* %80, %struct.cnic_context** %20, align 8
  %81 = load i32, i32* @CTX_FL_OFFLD_START, align 4
  %82 = load %struct.cnic_context*, %struct.cnic_context** %20, align 8
  %83 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %82, i32 0, i32 1
  %84 = call i64 @test_bit(i32 %81, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %69
  br label %180

87:                                               ; preds = %69
  %88 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @cnic_alloc_bnx2x_conn_resc(%struct.cnic_dev* %88, i32 %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 0, i32* %10, align 4
  br label %180

94:                                               ; preds = %87
  %95 = load %struct.cnic_context*, %struct.cnic_context** %20, align 8
  %96 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %11, align 4
  %98 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call %struct.fcoe_context* @cnic_get_bnx2x_ctx(%struct.cnic_dev* %98, i32 %99, i32 1, %struct.regpair* %22)
  store %struct.fcoe_context* %100, %struct.fcoe_context** %21, align 8
  %101 = load %struct.fcoe_context*, %struct.fcoe_context** %21, align 8
  %102 = icmp ne %struct.fcoe_context* %101, null
  br i1 %102, label %103, label %123

103:                                              ; preds = %94
  %104 = load %struct.bnx2x*, %struct.bnx2x** %14, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @BNX2X_HW_CID(%struct.bnx2x* %104, i32 %105)
  store i32 %106, i32* %26, align 4
  %107 = load i32, i32* %26, align 4
  %108 = load i32, i32* @CDU_REGION_NUMBER_XCM_AG, align 4
  %109 = load i32, i32* @FCOE_CONNECTION_TYPE, align 4
  %110 = call i32 @CDU_RSRVD_VALUE_TYPE_A(i32 %107, i32 %108, i32 %109)
  store i32 %110, i32* %27, align 4
  %111 = load i32, i32* %27, align 4
  %112 = load %struct.fcoe_context*, %struct.fcoe_context** %21, align 8
  %113 = getelementptr inbounds %struct.fcoe_context, %struct.fcoe_context* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* %26, align 4
  %116 = load i32, i32* @CDU_REGION_NUMBER_UCM_AG, align 4
  %117 = load i32, i32* @FCOE_CONNECTION_TYPE, align 4
  %118 = call i32 @CDU_RSRVD_VALUE_TYPE_A(i32 %115, i32 %116, i32 %117)
  store i32 %118, i32* %27, align 4
  %119 = load i32, i32* %27, align 4
  %120 = load %struct.fcoe_context*, %struct.fcoe_context** %21, align 8
  %121 = getelementptr inbounds %struct.fcoe_context, %struct.fcoe_context* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 4
  br label %123

123:                                              ; preds = %103, %94
  %124 = load i32, i32* @CNIC_KWQ16_DATA_SIZE, align 4
  %125 = sext i32 %124 to i64
  %126 = icmp ugt i64 28, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %129 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @netdev_err(i32 %130, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %180

132:                                              ; preds = %123
  %133 = load %struct.cnic_local*, %struct.cnic_local** %13, align 8
  %134 = load i32, i32* %12, align 4
  %135 = call %struct.fcoe_kcqe* @cnic_get_kwqe_16_data(%struct.cnic_local* %133, i32 %134, %union.l5cm_specific_data* %23)
  %136 = bitcast %struct.fcoe_kcqe* %135 to %struct.fcoe_conn_offload_ramrod_params*
  store %struct.fcoe_conn_offload_ramrod_params* %136, %struct.fcoe_conn_offload_ramrod_params** %19, align 8
  %137 = load %struct.fcoe_conn_offload_ramrod_params*, %struct.fcoe_conn_offload_ramrod_params** %19, align 8
  %138 = icmp ne %struct.fcoe_conn_offload_ramrod_params* %137, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %132
  br label %180

140:                                              ; preds = %132
  %141 = load %struct.fcoe_conn_offload_ramrod_params*, %struct.fcoe_conn_offload_ramrod_params** %19, align 8
  %142 = bitcast %struct.fcoe_conn_offload_ramrod_params* %141 to %struct.fcoe_kcqe*
  %143 = call i32 @memset(%struct.fcoe_kcqe* %142, i32 0, i32 28)
  %144 = load %struct.fcoe_conn_offload_ramrod_params*, %struct.fcoe_conn_offload_ramrod_params** %19, align 8
  %145 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_params, %struct.fcoe_conn_offload_ramrod_params* %144, i32 0, i32 6
  %146 = load %struct.fcoe_kwqe_conn_offload1*, %struct.fcoe_kwqe_conn_offload1** %15, align 8
  %147 = bitcast %struct.fcoe_kwqe_conn_offload1* %146 to %struct.fcoe_kwqe_conn_offload4*
  %148 = call i32 @memcpy(i32* %145, %struct.fcoe_kwqe_conn_offload4* %147, i32 4)
  %149 = load %struct.fcoe_conn_offload_ramrod_params*, %struct.fcoe_conn_offload_ramrod_params** %19, align 8
  %150 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_params, %struct.fcoe_conn_offload_ramrod_params* %149, i32 0, i32 5
  %151 = load %struct.fcoe_kwqe_conn_offload2*, %struct.fcoe_kwqe_conn_offload2** %16, align 8
  %152 = bitcast %struct.fcoe_kwqe_conn_offload2* %151 to %struct.fcoe_kwqe_conn_offload4*
  %153 = call i32 @memcpy(i32* %150, %struct.fcoe_kwqe_conn_offload4* %152, i32 4)
  %154 = load %struct.fcoe_conn_offload_ramrod_params*, %struct.fcoe_conn_offload_ramrod_params** %19, align 8
  %155 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_params, %struct.fcoe_conn_offload_ramrod_params* %154, i32 0, i32 4
  %156 = load %struct.fcoe_kwqe_conn_offload3*, %struct.fcoe_kwqe_conn_offload3** %17, align 8
  %157 = bitcast %struct.fcoe_kwqe_conn_offload3* %156 to %struct.fcoe_kwqe_conn_offload4*
  %158 = call i32 @memcpy(i32* %155, %struct.fcoe_kwqe_conn_offload4* %157, i32 4)
  %159 = load %struct.fcoe_conn_offload_ramrod_params*, %struct.fcoe_conn_offload_ramrod_params** %19, align 8
  %160 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_params, %struct.fcoe_conn_offload_ramrod_params* %159, i32 0, i32 3
  %161 = load %struct.fcoe_kwqe_conn_offload4*, %struct.fcoe_kwqe_conn_offload4** %18, align 8
  %162 = call i32 @memcpy(i32* %160, %struct.fcoe_kwqe_conn_offload4* %161, i32 4)
  %163 = load %struct.bnx2x*, %struct.bnx2x** %14, align 8
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @BNX2X_HW_CID(%struct.bnx2x* %163, i32 %164)
  store i32 %165, i32* %11, align 4
  %166 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %167 = load i32, i32* @FCOE_RAMROD_CMD_ID_OFFLOAD_CONN, align 4
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* @FCOE_CONNECTION_TYPE, align 4
  %170 = call i32 @cnic_submit_kwqe_16(%struct.cnic_dev* %166, i32 %167, i32 %168, i32 %169, %union.l5cm_specific_data* %23)
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %140
  %174 = load i32, i32* @CTX_FL_OFFLD_START, align 4
  %175 = load %struct.cnic_context*, %struct.cnic_context** %20, align 8
  %176 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %175, i32 0, i32 1
  %177 = call i32 @set_bit(i32 %174, i32* %176)
  br label %178

178:                                              ; preds = %173, %140
  %179 = load i32, i32* %10, align 4
  store i32 %179, i32* %5, align 4
  br label %204

180:                                              ; preds = %139, %127, %93, %86, %68
  %181 = load i32, i32* %11, align 4
  %182 = icmp ne i32 %181, -1
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @cnic_free_bnx2x_conn_resc(%struct.cnic_dev* %184, i32 %185)
  br label %187

187:                                              ; preds = %183, %180
  %188 = call i32 @memset(%struct.fcoe_kcqe* %24, i32 0, i32 28)
  %189 = load i32, i32* @FCOE_KCQE_OPCODE_OFFLOAD_CONN, align 4
  %190 = getelementptr inbounds %struct.fcoe_kcqe, %struct.fcoe_kcqe* %24, i32 0, i32 2
  store i32 %189, i32* %190, align 4
  %191 = load %struct.fcoe_kwqe_conn_offload1*, %struct.fcoe_kwqe_conn_offload1** %15, align 8
  %192 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload1, %struct.fcoe_kwqe_conn_offload1* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = getelementptr inbounds %struct.fcoe_kcqe, %struct.fcoe_kcqe* %24, i32 0, i32 0
  store i32 %193, i32* %194, align 4
  %195 = load i32, i32* @FCOE_KCQE_COMPLETION_STATUS_CTX_ALLOC_FAILURE, align 4
  %196 = getelementptr inbounds %struct.fcoe_kcqe, %struct.fcoe_kcqe* %24, i32 0, i32 1
  store i32 %195, i32* %196, align 4
  %197 = bitcast %struct.fcoe_kcqe* %24 to %struct.kcqe*
  %198 = getelementptr inbounds [1 x %struct.kcqe*], [1 x %struct.kcqe*]* %25, i64 0, i64 0
  store %struct.kcqe* %197, %struct.kcqe** %198, align 8
  %199 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %200 = load i32, i32* @CNIC_ULP_FCOE, align 4
  %201 = getelementptr inbounds [1 x %struct.kcqe*], [1 x %struct.kcqe*]* %25, i64 0, i64 0
  %202 = call i32 @cnic_reply_bnx2x_kcqes(%struct.cnic_dev* %199, i32 %200, %struct.kcqe** %201, i32 1)
  %203 = load i32, i32* %10, align 4
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %187, %178, %37
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @cnic_alloc_bnx2x_conn_resc(%struct.cnic_dev*, i32) #1

declare dso_local %struct.fcoe_context* @cnic_get_bnx2x_ctx(%struct.cnic_dev*, i32, i32, %struct.regpair*) #1

declare dso_local i32 @BNX2X_HW_CID(%struct.bnx2x*, i32) #1

declare dso_local i32 @CDU_RSRVD_VALUE_TYPE_A(i32, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local %struct.fcoe_kcqe* @cnic_get_kwqe_16_data(%struct.cnic_local*, i32, %union.l5cm_specific_data*) #1

declare dso_local i32 @memset(%struct.fcoe_kcqe*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.fcoe_kwqe_conn_offload4*, i32) #1

declare dso_local i32 @cnic_submit_kwqe_16(%struct.cnic_dev*, i32, i32, i32, %union.l5cm_specific_data*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cnic_free_bnx2x_conn_resc(%struct.cnic_dev*, i32) #1

declare dso_local i32 @cnic_reply_bnx2x_kcqes(%struct.cnic_dev*, i32, %struct.kcqe**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
