; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_pglueb_rbc_attn_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_pglueb_rbc_attn_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@PGLUE_B_REG_TX_ERR_WR_DETAILS2 = common dso_local global i32 0, align 4
@PGLUE_ATTENTION_VALID = common dso_local global i32 0, align 4
@PGLUE_B_REG_TX_ERR_WR_ADD_31_0 = common dso_local global i32 0, align 4
@PGLUE_B_REG_TX_ERR_WR_ADD_63_32 = common dso_local global i32 0, align 4
@PGLUE_B_REG_TX_ERR_WR_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [173 x i8] c"Illegal write by chip to [%08x:%08x] blocked.\0ADetails: %08x [PFID %02x, VFID %02x, VF_VALID %02x]\0ADetails2 %08x [Was_error %02x BME deassert %02x FID_enable deassert %02x]\0A\00", align 1
@PGLUE_ATTENTION_DETAILS_PFID = common dso_local global i32 0, align 4
@PGLUE_ATTENTION_DETAILS_VFID = common dso_local global i32 0, align 4
@PGLUE_ATTENTION_DETAILS_VF_VALID = common dso_local global i32 0, align 4
@PGLUE_ATTENTION_DETAILS2_WAS_ERR = common dso_local global i32 0, align 4
@PGLUE_ATTENTION_DETAILS2_BME = common dso_local global i32 0, align 4
@PGLUE_ATTENTION_DETAILS2_FID_EN = common dso_local global i32 0, align 4
@PGLUE_B_REG_TX_ERR_RD_DETAILS2 = common dso_local global i32 0, align 4
@PGLUE_ATTENTION_RD_VALID = common dso_local global i32 0, align 4
@PGLUE_B_REG_TX_ERR_RD_ADD_31_0 = common dso_local global i32 0, align 4
@PGLUE_B_REG_TX_ERR_RD_ADD_63_32 = common dso_local global i32 0, align 4
@PGLUE_B_REG_TX_ERR_RD_DETAILS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [174 x i8] c"Illegal read by chip from [%08x:%08x] blocked.\0ADetails: %08x [PFID %02x, VFID %02x, VF_VALID %02x]\0ADetails2 %08x [Was_error %02x BME deassert %02x FID_enable deassert %02x]\0A\00", align 1
@PGLUE_B_REG_TX_ERR_WR_DETAILS_ICPL = common dso_local global i32 0, align 4
@PGLUE_ATTENTION_ICPL_VALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"ICPL error - %08x\0A\00", align 1
@PGLUE_B_REG_MASTER_ZLR_ERR_DETAILS = common dso_local global i32 0, align 4
@PGLUE_ATTENTION_ZLR_VALID = common dso_local global i32 0, align 4
@PGLUE_B_REG_MASTER_ZLR_ERR_ADD_31_0 = common dso_local global i32 0, align 4
@PGLUE_B_REG_MASTER_ZLR_ERR_ADD_63_32 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"ZLR error - %08x [Address %08x:%08x]\0A\00", align 1
@PGLUE_B_REG_VF_ILT_ERR_DETAILS2 = common dso_local global i32 0, align 4
@PGLUE_ATTENTION_ILT_VALID = common dso_local global i32 0, align 4
@PGLUE_B_REG_VF_ILT_ERR_ADD_31_0 = common dso_local global i32 0, align 4
@PGLUE_B_REG_VF_ILT_ERR_ADD_63_32 = common dso_local global i32 0, align 4
@PGLUE_B_REG_VF_ILT_ERR_DETAILS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"ILT error - Details %08x Details2 %08x [Address %08x:%08x]\0A\00", align 1
@PGLUE_B_REG_LATCHED_ERRORS_CLR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_pglueb_rbc_attn_handler(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_ptt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %4, align 8
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %18 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %19 = load i32, i32* @PGLUE_B_REG_TX_ERR_WR_DETAILS2, align 4
  %20 = call i32 @qed_rd(%struct.qed_hwfn* %17, %struct.qed_ptt* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @PGLUE_ATTENTION_VALID, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %76

25:                                               ; preds = %2
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %27 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %28 = load i32, i32* @PGLUE_B_REG_TX_ERR_WR_ADD_31_0, align 4
  %29 = call i32 @qed_rd(%struct.qed_hwfn* %26, %struct.qed_ptt* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %31 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %32 = load i32, i32* @PGLUE_B_REG_TX_ERR_WR_ADD_63_32, align 4
  %33 = call i32 @qed_rd(%struct.qed_hwfn* %30, %struct.qed_ptt* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %35 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %36 = load i32, i32* @PGLUE_B_REG_TX_ERR_WR_DETAILS, align 4
  %37 = call i32 @qed_rd(%struct.qed_hwfn* %34, %struct.qed_ptt* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @PGLUE_ATTENTION_DETAILS_PFID, align 4
  %44 = call i64 @GET_FIELD(i32 %42, i32 %43)
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @PGLUE_ATTENTION_DETAILS_VFID, align 4
  %48 = call i64 @GET_FIELD(i32 %46, i32 %47)
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @PGLUE_ATTENTION_DETAILS_VF_VALID, align 4
  %52 = call i64 @GET_FIELD(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 0
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @PGLUE_ATTENTION_DETAILS2_WAS_ERR, align 4
  %59 = call i64 @GET_FIELD(i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @PGLUE_ATTENTION_DETAILS2_BME, align 4
  %65 = call i64 @GET_FIELD(i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @PGLUE_ATTENTION_DETAILS2_FID_EN, align 4
  %71 = call i64 @GET_FIELD(i32 %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 1, i32 0
  %75 = call i32 (%struct.qed_hwfn*, i8*, i32, ...) @DP_NOTICE(%struct.qed_hwfn* %38, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %41, i32 %45, i32 %49, i32 %55, i32 %56, i32 %62, i32 %68, i32 %74)
  br label %76

76:                                               ; preds = %25, %2
  %77 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %78 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %79 = load i32, i32* @PGLUE_B_REG_TX_ERR_RD_DETAILS2, align 4
  %80 = call i32 @qed_rd(%struct.qed_hwfn* %77, %struct.qed_ptt* %78, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @PGLUE_ATTENTION_RD_VALID, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %136

85:                                               ; preds = %76
  %86 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %87 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %88 = load i32, i32* @PGLUE_B_REG_TX_ERR_RD_ADD_31_0, align 4
  %89 = call i32 @qed_rd(%struct.qed_hwfn* %86, %struct.qed_ptt* %87, i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %91 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %92 = load i32, i32* @PGLUE_B_REG_TX_ERR_RD_ADD_63_32, align 4
  %93 = call i32 @qed_rd(%struct.qed_hwfn* %90, %struct.qed_ptt* %91, i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %95 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %96 = load i32, i32* @PGLUE_B_REG_TX_ERR_RD_DETAILS, align 4
  %97 = call i32 @qed_rd(%struct.qed_hwfn* %94, %struct.qed_ptt* %95, i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @PGLUE_ATTENTION_DETAILS_PFID, align 4
  %104 = call i64 @GET_FIELD(i32 %102, i32 %103)
  %105 = trunc i64 %104 to i32
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @PGLUE_ATTENTION_DETAILS_VFID, align 4
  %108 = call i64 @GET_FIELD(i32 %106, i32 %107)
  %109 = trunc i64 %108 to i32
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @PGLUE_ATTENTION_DETAILS_VF_VALID, align 4
  %112 = call i64 @GET_FIELD(i32 %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 1, i32 0
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @PGLUE_ATTENTION_DETAILS2_WAS_ERR, align 4
  %119 = call i64 @GET_FIELD(i32 %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 1, i32 0
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @PGLUE_ATTENTION_DETAILS2_BME, align 4
  %125 = call i64 @GET_FIELD(i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 1, i32 0
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @PGLUE_ATTENTION_DETAILS2_FID_EN, align 4
  %131 = call i64 @GET_FIELD(i32 %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 1, i32 0
  %135 = call i32 (%struct.qed_hwfn*, i8*, i32, ...) @DP_NOTICE(%struct.qed_hwfn* %98, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %100, i32 %101, i32 %105, i32 %109, i32 %115, i32 %116, i32 %122, i32 %128, i32 %134)
  br label %136

136:                                              ; preds = %85, %76
  %137 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %138 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %139 = load i32, i32* @PGLUE_B_REG_TX_ERR_WR_DETAILS_ICPL, align 4
  %140 = call i32 @qed_rd(%struct.qed_hwfn* %137, %struct.qed_ptt* %138, i32 %139)
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @PGLUE_ATTENTION_ICPL_VALID, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %136
  %146 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %147 = load i32, i32* %5, align 4
  %148 = call i32 (%struct.qed_hwfn*, i8*, i32, ...) @DP_NOTICE(%struct.qed_hwfn* %146, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %145, %136
  %150 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %151 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %152 = load i32, i32* @PGLUE_B_REG_MASTER_ZLR_ERR_DETAILS, align 4
  %153 = call i32 @qed_rd(%struct.qed_hwfn* %150, %struct.qed_ptt* %151, i32 %152)
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @PGLUE_ATTENTION_ZLR_VALID, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %149
  %159 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %160 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %161 = load i32, i32* @PGLUE_B_REG_MASTER_ZLR_ERR_ADD_31_0, align 4
  %162 = call i32 @qed_rd(%struct.qed_hwfn* %159, %struct.qed_ptt* %160, i32 %161)
  store i32 %162, i32* %13, align 4
  %163 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %164 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %165 = load i32, i32* @PGLUE_B_REG_MASTER_ZLR_ERR_ADD_63_32, align 4
  %166 = call i32 @qed_rd(%struct.qed_hwfn* %163, %struct.qed_ptt* %164, i32 %165)
  store i32 %166, i32* %12, align 4
  %167 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* %13, align 4
  %171 = call i32 (%struct.qed_hwfn*, i8*, i32, ...) @DP_NOTICE(%struct.qed_hwfn* %167, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %168, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %158, %149
  %173 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %174 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %175 = load i32, i32* @PGLUE_B_REG_VF_ILT_ERR_DETAILS2, align 4
  %176 = call i32 @qed_rd(%struct.qed_hwfn* %173, %struct.qed_ptt* %174, i32 %175)
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* @PGLUE_ATTENTION_ILT_VALID, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %200

181:                                              ; preds = %172
  %182 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %183 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %184 = load i32, i32* @PGLUE_B_REG_VF_ILT_ERR_ADD_31_0, align 4
  %185 = call i32 @qed_rd(%struct.qed_hwfn* %182, %struct.qed_ptt* %183, i32 %184)
  store i32 %185, i32* %15, align 4
  %186 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %187 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %188 = load i32, i32* @PGLUE_B_REG_VF_ILT_ERR_ADD_63_32, align 4
  %189 = call i32 @qed_rd(%struct.qed_hwfn* %186, %struct.qed_ptt* %187, i32 %188)
  store i32 %189, i32* %14, align 4
  %190 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %191 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %192 = load i32, i32* @PGLUE_B_REG_VF_ILT_ERR_DETAILS, align 4
  %193 = call i32 @qed_rd(%struct.qed_hwfn* %190, %struct.qed_ptt* %191, i32 %192)
  store i32 %193, i32* %16, align 4
  %194 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* %5, align 4
  %197 = load i32, i32* %14, align 4
  %198 = load i32, i32* %15, align 4
  %199 = call i32 (%struct.qed_hwfn*, i8*, i32, ...) @DP_NOTICE(%struct.qed_hwfn* %194, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %195, i32 %196, i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %181, %172
  %201 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %202 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %203 = load i32, i32* @PGLUE_B_REG_LATCHED_ERRORS_CLR, align 4
  %204 = call i32 @BIT(i32 2)
  %205 = call i32 @qed_wr(%struct.qed_hwfn* %201, %struct.qed_ptt* %202, i32 %203, i32 %204)
  ret i32 0
}

declare dso_local i32 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i32, ...) #1

declare dso_local i64 @GET_FIELD(i32, i32) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
