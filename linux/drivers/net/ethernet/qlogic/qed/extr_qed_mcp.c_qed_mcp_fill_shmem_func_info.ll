; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_fill_shmem_func_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_fill_shmem_func_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.TYPE_4__ = type { %struct.qed_mcp_function_info }
%struct.qed_mcp_function_info = type { i32, i32, i32, i8*, i8**, i32, i32, i32, i8* }
%struct.qed_ptt = type { i32 }
%struct.public_func = type { i32, i32, i32, i32, i64, i64, i64, i64, i64 }

@FUNC_MF_CFG_PAUSE_ON_HOST_RING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unknown personality %08x\0A\00", align 1
@FUNC_MF_CFG_PROTOCOL_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"MAC is 0 in shmem\0A\00", align 1
@FUNC_MF_CFG_OV_STAG_MASK = common dso_local global i32 0, align 4
@QED_WOL_SUPPORT_NONE = common dso_local global i64 0, align 8
@QED_OV_WOL_DEFAULT = common dso_local global i64 0, align 8
@DRV_MSG_CODE_OS_WOL = common dso_local global i32 0, align 4
@FW_MSG_CODE_OS_WOL_SUPPORTED = common dso_local global i64 0, align 8
@QED_WOL_SUPPORT_PME = common dso_local global i64 0, align 8
@QED_MSG_SP = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [160 x i8] c"Read configuration from shmem: pause_on_host %02x protocol %02x BW [%02x - %02x] MAC %02x:%02x:%02x:%02x:%02x:%02x wwn port %llx node %llx ovlan %04x wol %02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_mcp_fill_shmem_func_info(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_mcp_function_info*, align 8
  %7 = alloca %struct.public_func, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %12 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %14 = call i32 @MCP_PF_ID(%struct.qed_hwfn* %13)
  %15 = call i32 @qed_mcp_get_shmem_func(%struct.qed_hwfn* %11, %struct.qed_ptt* %12, %struct.public_func* %7, i32 %14)
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %17 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.qed_mcp_function_info* %19, %struct.qed_mcp_function_info** %6, align 8
  %20 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FUNC_MF_CFG_PAUSE_ON_HOST_RING, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  %27 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %6, align 8
  %28 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %30 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %31 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %6, align 8
  %32 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %31, i32 0, i32 7
  %33 = call i64 @qed_mcp_get_shmem_proto(%struct.qed_hwfn* %29, %struct.public_func* %7, %struct.qed_ptt* %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %2
  %36 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %37 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @FUNC_MF_CFG_PROTOCOL_MASK, align 4
  %40 = and i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = call i32 @DP_ERR(%struct.qed_hwfn* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %248

45:                                               ; preds = %2
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %47 = call i32 @qed_read_pf_bandwidth(%struct.qed_hwfn* %46, %struct.public_func* %7)
  %48 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %117

55:                                               ; preds = %51, %45
  %56 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 8
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %6, align 8
  %62 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %61, i32 0, i32 4
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  store i8* %60, i8** %64, align 8
  %65 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %6, align 8
  %70 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %69, i32 0, i32 4
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 1
  store i8* %68, i8** %72, align 8
  %73 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = ashr i32 %74, 24
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %6, align 8
  %79 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %78, i32 0, i32 4
  %80 = load i8**, i8*** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 2
  store i8* %77, i8** %81, align 8
  %82 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = ashr i32 %83, 16
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %6, align 8
  %88 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %87, i32 0, i32 4
  %89 = load i8**, i8*** %88, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 3
  store i8* %86, i8** %90, align 8
  %91 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = ashr i32 %92, 8
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %6, align 8
  %97 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %96, i32 0, i32 4
  %98 = load i8**, i8*** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 4
  store i8* %95, i8** %99, align 8
  %100 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i8*
  %104 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %6, align 8
  %105 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %104, i32 0, i32 4
  %106 = load i8**, i8*** %105, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 5
  store i8* %103, i8** %107, align 8
  %108 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %109 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %108, i32 0, i32 1
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %6, align 8
  %113 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %112, i32 0, i32 4
  %114 = load i8**, i8*** %113, align 8
  %115 = load i32, i32* @ETH_ALEN, align 4
  %116 = call i32 @memcpy(i32* %111, i8** %114, i32 %115)
  br label %120

117:                                              ; preds = %51
  %118 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %119 = call i32 @DP_NOTICE(%struct.qed_hwfn* %118, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %55
  %121 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 8
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 7
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = shl i32 %126, 32
  %128 = or i32 %123, %127
  %129 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %6, align 8
  %130 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 6
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 5
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  %137 = shl i32 %136, 32
  %138 = or i32 %133, %137
  %139 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %6, align 8
  %140 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @FUNC_MF_CFG_OV_STAG_MASK, align 4
  %144 = and i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = inttoptr i64 %145 to i8*
  %147 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %6, align 8
  %148 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %147, i32 0, i32 3
  store i8* %146, i8** %148, align 8
  %149 = getelementptr inbounds %struct.public_func, %struct.public_func* %7, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = inttoptr i64 %150 to i8*
  %152 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %6, align 8
  %153 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %152, i32 0, i32 8
  store i8* %151, i8** %153, align 8
  %154 = load i64, i64* @QED_WOL_SUPPORT_NONE, align 8
  %155 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %156 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  store i64 %154, i64* %157, align 8
  %158 = load i64, i64* @QED_OV_WOL_DEFAULT, align 8
  %159 = inttoptr i64 %158 to i8*
  %160 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %161 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %160, i32 0, i32 1
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  store i8* %159, i8** %163, align 8
  %164 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %165 = call i64 @qed_mcp_is_init(%struct.qed_hwfn* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %186

167:                                              ; preds = %120
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %168 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %169 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %170 = load i32, i32* @DRV_MSG_CODE_OS_WOL, align 4
  %171 = call i32 @qed_mcp_cmd(%struct.qed_hwfn* %168, %struct.qed_ptt* %169, i32 %170, i32 0, i64* %8, i64* %9)
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %167
  %175 = load i32, i32* %10, align 4
  store i32 %175, i32* %3, align 4
  br label %248

176:                                              ; preds = %167
  %177 = load i64, i64* %8, align 8
  %178 = load i64, i64* @FW_MSG_CODE_OS_WOL_SUPPORTED, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %185

180:                                              ; preds = %176
  %181 = load i64, i64* @QED_WOL_SUPPORT_PME, align 8
  %182 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %183 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  store i64 %181, i64* %184, align 8
  br label %185

185:                                              ; preds = %180, %176
  br label %186

186:                                              ; preds = %185, %120
  %187 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %188 = load i32, i32* @QED_MSG_SP, align 4
  %189 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %190 = or i32 %188, %189
  %191 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %6, align 8
  %192 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %6, align 8
  %195 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %194, i32 0, i32 7
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %6, align 8
  %198 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %6, align 8
  %201 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %6, align 8
  %204 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %203, i32 0, i32 4
  %205 = load i8**, i8*** %204, align 8
  %206 = getelementptr inbounds i8*, i8** %205, i64 0
  %207 = load i8*, i8** %206, align 8
  %208 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %6, align 8
  %209 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %208, i32 0, i32 4
  %210 = load i8**, i8*** %209, align 8
  %211 = getelementptr inbounds i8*, i8** %210, i64 1
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %6, align 8
  %214 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %213, i32 0, i32 4
  %215 = load i8**, i8*** %214, align 8
  %216 = getelementptr inbounds i8*, i8** %215, i64 2
  %217 = load i8*, i8** %216, align 8
  %218 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %6, align 8
  %219 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %218, i32 0, i32 4
  %220 = load i8**, i8*** %219, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 3
  %222 = load i8*, i8** %221, align 8
  %223 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %6, align 8
  %224 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %223, i32 0, i32 4
  %225 = load i8**, i8*** %224, align 8
  %226 = getelementptr inbounds i8*, i8** %225, i64 4
  %227 = load i8*, i8** %226, align 8
  %228 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %6, align 8
  %229 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %228, i32 0, i32 4
  %230 = load i8**, i8*** %229, align 8
  %231 = getelementptr inbounds i8*, i8** %230, i64 5
  %232 = load i8*, i8** %231, align 8
  %233 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %6, align 8
  %234 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %6, align 8
  %237 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.qed_mcp_function_info*, %struct.qed_mcp_function_info** %6, align 8
  %240 = getelementptr inbounds %struct.qed_mcp_function_info, %struct.qed_mcp_function_info* %239, i32 0, i32 3
  %241 = load i8*, i8** %240, align 8
  %242 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %243 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = inttoptr i64 %245 to i8*
  %247 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %187, i32 %190, i8* getelementptr inbounds ([160 x i8], [160 x i8]* @.str.2, i64 0, i64 0), i32 %193, i32 %196, i32 %199, i32 %202, i8* %207, i8* %212, i8* %217, i8* %222, i8* %227, i8* %232, i32 %235, i32 %238, i8* %241, i8* %246)
  store i32 0, i32* %3, align 4
  br label %248

248:                                              ; preds = %186, %174, %35
  %249 = load i32, i32* %3, align 4
  ret i32 %249
}

declare dso_local i32 @qed_mcp_get_shmem_func(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.public_func*, i32) #1

declare dso_local i32 @MCP_PF_ID(%struct.qed_hwfn*) #1

declare dso_local i64 @qed_mcp_get_shmem_proto(%struct.qed_hwfn*, %struct.public_func*, %struct.qed_ptt*, i32*) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*, i64) #1

declare dso_local i32 @qed_read_pf_bandwidth(%struct.qed_hwfn*, %struct.public_func*) #1

declare dso_local i32 @memcpy(i32*, i8**, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

declare dso_local i64 @qed_mcp_is_init(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_mcp_cmd(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i64*, i64*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
