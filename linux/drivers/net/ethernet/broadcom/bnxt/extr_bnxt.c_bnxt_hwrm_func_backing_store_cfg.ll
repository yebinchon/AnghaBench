; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_func_backing_store_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_func_backing_store_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.bnxt_ctx_mem_info* }
%struct.bnxt_ctx_mem_info = type { i32, %struct.bnxt_ctx_pg_info**, i32, i32, %struct.bnxt_ctx_pg_info, i32, i64, %struct.bnxt_ctx_pg_info, i32, %struct.bnxt_ctx_pg_info, i32, i32, i32, %struct.bnxt_ctx_pg_info, i32, i32, %struct.bnxt_ctx_pg_info, i32, i32, %struct.bnxt_ctx_pg_info, i32, i32, i32, %struct.bnxt_ctx_pg_info }
%struct.bnxt_ctx_pg_info = type { i32, i32 }
%struct.hwrm_func_backing_store_cfg_input = type { i8*, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i32, i32, i8*, i8*, i32, i32, i8*, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i32 }

@HWRM_FUNC_BACKING_STORE_CFG = common dso_local global i32 0, align 4
@FUNC_BACKING_STORE_CFG_REQ_ENABLES_QP = common dso_local global i32 0, align 4
@FUNC_BACKING_STORE_CFG_REQ_ENABLES_SRQ = common dso_local global i32 0, align 4
@FUNC_BACKING_STORE_CFG_REQ_ENABLES_CQ = common dso_local global i32 0, align 4
@FUNC_BACKING_STORE_CFG_REQ_ENABLES_VNIC = common dso_local global i32 0, align 4
@FUNC_BACKING_STORE_CFG_REQ_ENABLES_STAT = common dso_local global i32 0, align 4
@FUNC_BACKING_STORE_CFG_REQ_ENABLES_MRAV = common dso_local global i32 0, align 4
@FUNC_BACKING_STORE_CFG_REQ_FLAGS_MRAV_RESERVATION_SPLIT = common dso_local global i32 0, align 4
@FUNC_BACKING_STORE_CFG_REQ_ENABLES_TIM = common dso_local global i32 0, align 4
@FUNC_BACKING_STORE_CFG_REQ_ENABLES_TQM_SP = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i32)* @bnxt_hwrm_func_backing_store_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_func_backing_store_cfg(%struct.bnxt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hwrm_func_backing_store_cfg_input, align 8
  %7 = alloca %struct.bnxt_ctx_mem_info*, align 8
  %8 = alloca %struct.bnxt_ctx_pg_info*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = bitcast %struct.hwrm_func_backing_store_cfg_input* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 256, i1 false)
  %17 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 0
  %19 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %18, align 8
  store %struct.bnxt_ctx_mem_info* %19, %struct.bnxt_ctx_mem_info** %7, align 8
  store i32 0, i32* %11, align 4
  %20 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %7, align 8
  %21 = icmp ne %struct.bnxt_ctx_mem_info* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %280

23:                                               ; preds = %2
  %24 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %25 = load i32, i32* @HWRM_FUNC_BACKING_STORE_CFG, align 4
  %26 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %24, %struct.hwrm_func_backing_store_cfg_input* %6, i32 %25, i32 -1, i32 -1)
  %27 = load i32, i32* %5, align 4
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 38
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @FUNC_BACKING_STORE_CFG_REQ_ENABLES_QP, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %23
  %35 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %7, align 8
  %36 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %35, i32 0, i32 23
  store %struct.bnxt_ctx_pg_info* %36, %struct.bnxt_ctx_pg_info** %8, align 8
  %37 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %8, align 8
  %38 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @cpu_to_le32(i32 %39)
  %41 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 37
  store i8* %40, i8** %41, align 8
  %42 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %7, align 8
  %43 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %42, i32 0, i32 22
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 36
  store i8* %45, i8** %46, align 8
  %47 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %7, align 8
  %48 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %47, i32 0, i32 21
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @cpu_to_le16(i32 %49)
  %51 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 35
  store i8* %50, i8** %51, align 8
  %52 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %7, align 8
  %53 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %52, i32 0, i32 20
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @cpu_to_le16(i32 %54)
  %56 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 34
  store i8* %55, i8** %56, align 8
  %57 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %8, align 8
  %58 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 33
  %60 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 32
  %61 = call i32 @bnxt_hwrm_set_pg_attr(i32* %58, i32* %59, i32* %60)
  br label %62

62:                                               ; preds = %34, %23
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @FUNC_BACKING_STORE_CFG_REQ_ENABLES_SRQ, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %62
  %68 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %7, align 8
  %69 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %68, i32 0, i32 19
  store %struct.bnxt_ctx_pg_info* %69, %struct.bnxt_ctx_pg_info** %8, align 8
  %70 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %8, align 8
  %71 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @cpu_to_le32(i32 %72)
  %74 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 31
  store i8* %73, i8** %74, align 8
  %75 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %7, align 8
  %76 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %75, i32 0, i32 18
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @cpu_to_le16(i32 %77)
  %79 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 30
  store i8* %78, i8** %79, align 8
  %80 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %7, align 8
  %81 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %80, i32 0, i32 17
  %82 = load i32, i32* %81, align 8
  %83 = call i8* @cpu_to_le16(i32 %82)
  %84 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 29
  store i8* %83, i8** %84, align 8
  %85 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %8, align 8
  %86 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 28
  %88 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 27
  %89 = call i32 @bnxt_hwrm_set_pg_attr(i32* %86, i32* %87, i32* %88)
  br label %90

90:                                               ; preds = %67, %62
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @FUNC_BACKING_STORE_CFG_REQ_ENABLES_CQ, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %118

95:                                               ; preds = %90
  %96 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %7, align 8
  %97 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %96, i32 0, i32 16
  store %struct.bnxt_ctx_pg_info* %97, %struct.bnxt_ctx_pg_info** %8, align 8
  %98 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %8, align 8
  %99 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @cpu_to_le32(i32 %100)
  %102 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 26
  store i8* %101, i8** %102, align 8
  %103 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %7, align 8
  %104 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %103, i32 0, i32 15
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @cpu_to_le16(i32 %105)
  %107 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 25
  store i8* %106, i8** %107, align 8
  %108 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %7, align 8
  %109 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %108, i32 0, i32 14
  %110 = load i32, i32* %109, align 8
  %111 = call i8* @cpu_to_le16(i32 %110)
  %112 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 24
  store i8* %111, i8** %112, align 8
  %113 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %8, align 8
  %114 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 23
  %116 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 22
  %117 = call i32 @bnxt_hwrm_set_pg_attr(i32* %114, i32* %115, i32* %116)
  br label %118

118:                                              ; preds = %95, %90
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @FUNC_BACKING_STORE_CFG_REQ_ENABLES_VNIC, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %146

123:                                              ; preds = %118
  %124 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %7, align 8
  %125 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %124, i32 0, i32 13
  store %struct.bnxt_ctx_pg_info* %125, %struct.bnxt_ctx_pg_info** %8, align 8
  %126 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %7, align 8
  %127 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %126, i32 0, i32 12
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @cpu_to_le16(i32 %128)
  %130 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 21
  store i8* %129, i8** %130, align 8
  %131 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %7, align 8
  %132 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %131, i32 0, i32 11
  %133 = load i32, i32* %132, align 8
  %134 = call i8* @cpu_to_le16(i32 %133)
  %135 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 20
  store i8* %134, i8** %135, align 8
  %136 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %7, align 8
  %137 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %136, i32 0, i32 10
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @cpu_to_le16(i32 %138)
  %140 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 19
  store i8* %139, i8** %140, align 8
  %141 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %8, align 8
  %142 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 18
  %144 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 17
  %145 = call i32 @bnxt_hwrm_set_pg_attr(i32* %142, i32* %143, i32* %144)
  br label %146

146:                                              ; preds = %123, %118
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* @FUNC_BACKING_STORE_CFG_REQ_ENABLES_STAT, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %169

151:                                              ; preds = %146
  %152 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %7, align 8
  %153 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %152, i32 0, i32 9
  store %struct.bnxt_ctx_pg_info* %153, %struct.bnxt_ctx_pg_info** %8, align 8
  %154 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %7, align 8
  %155 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i8* @cpu_to_le32(i32 %156)
  %158 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 16
  store i8* %157, i8** %158, align 8
  %159 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %7, align 8
  %160 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 8
  %162 = call i8* @cpu_to_le16(i32 %161)
  %163 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 15
  store i8* %162, i8** %163, align 8
  %164 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %8, align 8
  %165 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 14
  %167 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 13
  %168 = call i32 @bnxt_hwrm_set_pg_attr(i32* %165, i32* %166, i32* %167)
  br label %169

169:                                              ; preds = %151, %146
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* @FUNC_BACKING_STORE_CFG_REQ_ENABLES_MRAV, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %201

174:                                              ; preds = %169
  %175 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %7, align 8
  %176 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %175, i32 0, i32 7
  store %struct.bnxt_ctx_pg_info* %176, %struct.bnxt_ctx_pg_info** %8, align 8
  %177 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %8, align 8
  %178 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i8* @cpu_to_le32(i32 %179)
  %181 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 12
  store i8* %180, i8** %181, align 8
  %182 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %7, align 8
  %183 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %182, i32 0, i32 6
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %174
  %187 = load i32, i32* @FUNC_BACKING_STORE_CFG_REQ_FLAGS_MRAV_RESERVATION_SPLIT, align 4
  %188 = load i32, i32* %11, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %11, align 4
  br label %190

190:                                              ; preds = %186, %174
  %191 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %7, align 8
  %192 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 8
  %194 = call i8* @cpu_to_le16(i32 %193)
  %195 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 11
  store i8* %194, i8** %195, align 8
  %196 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %8, align 8
  %197 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 10
  %199 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 9
  %200 = call i32 @bnxt_hwrm_set_pg_attr(i32* %197, i32* %198, i32* %199)
  br label %201

201:                                              ; preds = %190, %169
  %202 = load i32, i32* %5, align 4
  %203 = load i32, i32* @FUNC_BACKING_STORE_CFG_REQ_ENABLES_TIM, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %224

206:                                              ; preds = %201
  %207 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %7, align 8
  %208 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %207, i32 0, i32 4
  store %struct.bnxt_ctx_pg_info* %208, %struct.bnxt_ctx_pg_info** %8, align 8
  %209 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %8, align 8
  %210 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i8* @cpu_to_le32(i32 %211)
  %213 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 8
  store i8* %212, i8** %213, align 8
  %214 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %7, align 8
  %215 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = call i8* @cpu_to_le16(i32 %216)
  %218 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 7
  store i8* %217, i8** %218, align 8
  %219 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %8, align 8
  %220 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 6
  %222 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 5
  %223 = call i32 @bnxt_hwrm_set_pg_attr(i32* %220, i32* %221, i32* %222)
  br label %224

224:                                              ; preds = %206, %201
  store i32 0, i32* %13, align 4
  %225 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 4
  store i8** %225, i8*** %9, align 8
  %226 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 3
  store i32* %226, i32** %12, align 8
  %227 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 2
  store i32* %227, i32** %10, align 8
  %228 = load i32, i32* @FUNC_BACKING_STORE_CFG_REQ_ENABLES_TQM_SP, align 4
  store i32 %228, i32* %15, align 4
  br label %229

229:                                              ; preds = %261, %224
  %230 = load i32, i32* %13, align 4
  %231 = icmp slt i32 %230, 9
  br i1 %231, label %232, label %272

232:                                              ; preds = %229
  %233 = load i32, i32* %5, align 4
  %234 = load i32, i32* %15, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %238, label %237

237:                                              ; preds = %232
  br label %261

238:                                              ; preds = %232
  %239 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %7, align 8
  %240 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = call i8* @cpu_to_le16(i32 %241)
  %243 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 1
  store i8* %242, i8** %243, align 8
  %244 = load %struct.bnxt_ctx_mem_info*, %struct.bnxt_ctx_mem_info** %7, align 8
  %245 = getelementptr inbounds %struct.bnxt_ctx_mem_info, %struct.bnxt_ctx_mem_info* %244, i32 0, i32 1
  %246 = load %struct.bnxt_ctx_pg_info**, %struct.bnxt_ctx_pg_info*** %245, align 8
  %247 = load i32, i32* %13, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %246, i64 %248
  %250 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %249, align 8
  store %struct.bnxt_ctx_pg_info* %250, %struct.bnxt_ctx_pg_info** %8, align 8
  %251 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %8, align 8
  %252 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i8* @cpu_to_le32(i32 %253)
  %255 = load i8**, i8*** %9, align 8
  store i8* %254, i8** %255, align 8
  %256 = load %struct.bnxt_ctx_pg_info*, %struct.bnxt_ctx_pg_info** %8, align 8
  %257 = getelementptr inbounds %struct.bnxt_ctx_pg_info, %struct.bnxt_ctx_pg_info* %256, i32 0, i32 1
  %258 = load i32*, i32** %12, align 8
  %259 = load i32*, i32** %10, align 8
  %260 = call i32 @bnxt_hwrm_set_pg_attr(i32* %257, i32* %258, i32* %259)
  br label %261

261:                                              ; preds = %238, %237
  %262 = load i32, i32* %13, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %13, align 4
  %264 = load i8**, i8*** %9, align 8
  %265 = getelementptr inbounds i8*, i8** %264, i32 1
  store i8** %265, i8*** %9, align 8
  %266 = load i32*, i32** %12, align 8
  %267 = getelementptr inbounds i32, i32* %266, i32 1
  store i32* %267, i32** %12, align 8
  %268 = load i32*, i32** %10, align 8
  %269 = getelementptr inbounds i32, i32* %268, i32 1
  store i32* %269, i32** %10, align 8
  %270 = load i32, i32* %15, align 4
  %271 = shl i32 %270, 1
  store i32 %271, i32* %15, align 4
  br label %229

272:                                              ; preds = %229
  %273 = load i32, i32* %11, align 4
  %274 = call i8* @cpu_to_le32(i32 %273)
  %275 = getelementptr inbounds %struct.hwrm_func_backing_store_cfg_input, %struct.hwrm_func_backing_store_cfg_input* %6, i32 0, i32 0
  store i8* %274, i8** %275, align 8
  %276 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %277 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %278 = call i32 @hwrm_send_message(%struct.bnxt* %276, %struct.hwrm_func_backing_store_cfg_input* %6, i32 256, i32 %277)
  store i32 %278, i32* %14, align 4
  %279 = load i32, i32* %14, align 4
  store i32 %279, i32* %3, align 4
  br label %280

280:                                              ; preds = %272, %22
  %281 = load i32, i32* %3, align 4
  ret i32 %281
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_func_backing_store_cfg_input*, i32, i32, i32) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i32 @bnxt_hwrm_set_pg_attr(i32*, i32*, i32*) #2

declare dso_local i32 @hwrm_send_message(%struct.bnxt*, %struct.hwrm_func_backing_store_cfg_input*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
