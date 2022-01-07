; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_ethflow_to_filer_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_ethflow_to_filer_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfar_private = type { i64, i8**, i8** }

@FPR_FILER_MASK = common dso_local global i8* null, align 8
@RXH_L2DA = common dso_local global i32 0, align 4
@RQFCR_PID_DAH = common dso_local global i32 0, align 4
@RQFCR_CMP_NOMATCH = common dso_local global i32 0, align 4
@RQFCR_HASH = common dso_local global i32 0, align 4
@RQFCR_AND = common dso_local global i32 0, align 4
@RQFCR_HASHTBL_0 = common dso_local global i32 0, align 4
@RQFCR_PID_DAL = common dso_local global i32 0, align 4
@RXH_VLAN = common dso_local global i32 0, align 4
@RQFCR_PID_VID = common dso_local global i32 0, align 4
@RXH_IP_SRC = common dso_local global i32 0, align 4
@RQFCR_PID_SIA = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@RQFCR_PID_DIA = common dso_local global i32 0, align 4
@RXH_L3_PROTO = common dso_local global i32 0, align 4
@RQFCR_PID_L4P = common dso_local global i32 0, align 4
@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RQFCR_PID_SPT = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@RQFCR_PID_DPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfar_private*, i32)* @ethflow_to_filer_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ethflow_to_filer_rules(%struct.gfar_private* %0, i32 %1) #0 {
  %3 = alloca %struct.gfar_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.gfar_private* %0, %struct.gfar_private** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %5, align 8
  %7 = load i8*, i8** @FPR_FILER_MASK, align 8
  store i8* %7, i8** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @RXH_L2DA, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %93

12:                                               ; preds = %2
  %13 = load i32, i32* @RQFCR_PID_DAH, align 4
  %14 = load i32, i32* @RQFCR_CMP_NOMATCH, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @RQFCR_HASH, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @RQFCR_AND, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @RQFCR_HASHTBL_0, align 4
  %21 = or i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %26 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %25, i32 0, i32 2
  %27 = load i8**, i8*** %26, align 8
  %28 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %29 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i8*, i8** %27, i64 %30
  store i8* %24, i8** %31, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %34 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %33, i32 0, i32 1
  %35 = load i8**, i8*** %34, align 8
  %36 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %37 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i8*, i8** %35, i64 %38
  store i8* %32, i8** %39, align 8
  %40 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %41 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %42 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @gfar_write_filer(%struct.gfar_private* %40, i64 %43, i8* %44, i8* %45)
  %47 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %48 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %49, 1
  %51 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %52 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* @RQFCR_PID_DAL, align 4
  %54 = load i32, i32* @RQFCR_CMP_NOMATCH, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @RQFCR_HASH, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @RQFCR_AND, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @RQFCR_HASHTBL_0, align 4
  %61 = or i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  store i8* %63, i8** %5, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %66 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %65, i32 0, i32 2
  %67 = load i8**, i8*** %66, align 8
  %68 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %69 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i8*, i8** %67, i64 %70
  store i8* %64, i8** %71, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %74 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %73, i32 0, i32 1
  %75 = load i8**, i8*** %74, align 8
  %76 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %77 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i8*, i8** %75, i64 %78
  store i8* %72, i8** %79, align 8
  %80 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %81 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %82 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @gfar_write_filer(%struct.gfar_private* %80, i64 %83, i8* %84, i8* %85)
  %87 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %88 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub i64 %89, 1
  %91 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %92 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %12, %2
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @RXH_VLAN, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %139

98:                                               ; preds = %93
  %99 = load i32, i32* @RQFCR_PID_VID, align 4
  %100 = load i32, i32* @RQFCR_CMP_NOMATCH, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @RQFCR_HASH, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @RQFCR_AND, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @RQFCR_HASHTBL_0, align 4
  %107 = or i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  store i8* %109, i8** %5, align 8
  %110 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %111 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %112 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i8*, i8** %5, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = call i32 @gfar_write_filer(%struct.gfar_private* %110, i64 %113, i8* %114, i8* %115)
  %117 = load i8*, i8** %6, align 8
  %118 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %119 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %118, i32 0, i32 2
  %120 = load i8**, i8*** %119, align 8
  %121 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %122 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i8*, i8** %120, i64 %123
  store i8* %117, i8** %124, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %127 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %126, i32 0, i32 1
  %128 = load i8**, i8*** %127, align 8
  %129 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %130 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds i8*, i8** %128, i64 %131
  store i8* %125, i8** %132, align 8
  %133 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %134 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = sub i64 %135, 1
  %137 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %138 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  br label %139

139:                                              ; preds = %98, %93
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @RXH_IP_SRC, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %185

144:                                              ; preds = %139
  %145 = load i32, i32* @RQFCR_PID_SIA, align 4
  %146 = load i32, i32* @RQFCR_CMP_NOMATCH, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @RQFCR_HASH, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @RQFCR_AND, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @RQFCR_HASHTBL_0, align 4
  %153 = or i32 %151, %152
  %154 = sext i32 %153 to i64
  %155 = inttoptr i64 %154 to i8*
  store i8* %155, i8** %5, align 8
  %156 = load i8*, i8** %6, align 8
  %157 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %158 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %157, i32 0, i32 2
  %159 = load i8**, i8*** %158, align 8
  %160 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %161 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds i8*, i8** %159, i64 %162
  store i8* %156, i8** %163, align 8
  %164 = load i8*, i8** %5, align 8
  %165 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %166 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %165, i32 0, i32 1
  %167 = load i8**, i8*** %166, align 8
  %168 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %169 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds i8*, i8** %167, i64 %170
  store i8* %164, i8** %171, align 8
  %172 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %173 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %174 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i8*, i8** %5, align 8
  %177 = load i8*, i8** %6, align 8
  %178 = call i32 @gfar_write_filer(%struct.gfar_private* %172, i64 %175, i8* %176, i8* %177)
  %179 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %180 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = sub i64 %181, 1
  %183 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %184 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %183, i32 0, i32 0
  store i64 %182, i64* %184, align 8
  br label %185

185:                                              ; preds = %144, %139
  %186 = load i32, i32* %4, align 4
  %187 = load i32, i32* @RXH_IP_DST, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %231

190:                                              ; preds = %185
  %191 = load i32, i32* @RQFCR_PID_DIA, align 4
  %192 = load i32, i32* @RQFCR_CMP_NOMATCH, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @RQFCR_HASH, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @RQFCR_AND, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @RQFCR_HASHTBL_0, align 4
  %199 = or i32 %197, %198
  %200 = sext i32 %199 to i64
  %201 = inttoptr i64 %200 to i8*
  store i8* %201, i8** %5, align 8
  %202 = load i8*, i8** %6, align 8
  %203 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %204 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %203, i32 0, i32 2
  %205 = load i8**, i8*** %204, align 8
  %206 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %207 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds i8*, i8** %205, i64 %208
  store i8* %202, i8** %209, align 8
  %210 = load i8*, i8** %5, align 8
  %211 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %212 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %211, i32 0, i32 1
  %213 = load i8**, i8*** %212, align 8
  %214 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %215 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds i8*, i8** %213, i64 %216
  store i8* %210, i8** %217, align 8
  %218 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %219 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %220 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i8*, i8** %5, align 8
  %223 = load i8*, i8** %6, align 8
  %224 = call i32 @gfar_write_filer(%struct.gfar_private* %218, i64 %221, i8* %222, i8* %223)
  %225 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %226 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = sub i64 %227, 1
  %229 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %230 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %229, i32 0, i32 0
  store i64 %228, i64* %230, align 8
  br label %231

231:                                              ; preds = %190, %185
  %232 = load i32, i32* %4, align 4
  %233 = load i32, i32* @RXH_L3_PROTO, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %277

236:                                              ; preds = %231
  %237 = load i32, i32* @RQFCR_PID_L4P, align 4
  %238 = load i32, i32* @RQFCR_CMP_NOMATCH, align 4
  %239 = or i32 %237, %238
  %240 = load i32, i32* @RQFCR_HASH, align 4
  %241 = or i32 %239, %240
  %242 = load i32, i32* @RQFCR_AND, align 4
  %243 = or i32 %241, %242
  %244 = load i32, i32* @RQFCR_HASHTBL_0, align 4
  %245 = or i32 %243, %244
  %246 = sext i32 %245 to i64
  %247 = inttoptr i64 %246 to i8*
  store i8* %247, i8** %5, align 8
  %248 = load i8*, i8** %6, align 8
  %249 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %250 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %249, i32 0, i32 2
  %251 = load i8**, i8*** %250, align 8
  %252 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %253 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = getelementptr inbounds i8*, i8** %251, i64 %254
  store i8* %248, i8** %255, align 8
  %256 = load i8*, i8** %5, align 8
  %257 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %258 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %257, i32 0, i32 1
  %259 = load i8**, i8*** %258, align 8
  %260 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %261 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = getelementptr inbounds i8*, i8** %259, i64 %262
  store i8* %256, i8** %263, align 8
  %264 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %265 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %266 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i8*, i8** %5, align 8
  %269 = load i8*, i8** %6, align 8
  %270 = call i32 @gfar_write_filer(%struct.gfar_private* %264, i64 %267, i8* %268, i8* %269)
  %271 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %272 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = sub i64 %273, 1
  %275 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %276 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %275, i32 0, i32 0
  store i64 %274, i64* %276, align 8
  br label %277

277:                                              ; preds = %236, %231
  %278 = load i32, i32* %4, align 4
  %279 = load i32, i32* @RXH_L4_B_0_1, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %323

282:                                              ; preds = %277
  %283 = load i32, i32* @RQFCR_PID_SPT, align 4
  %284 = load i32, i32* @RQFCR_CMP_NOMATCH, align 4
  %285 = or i32 %283, %284
  %286 = load i32, i32* @RQFCR_HASH, align 4
  %287 = or i32 %285, %286
  %288 = load i32, i32* @RQFCR_AND, align 4
  %289 = or i32 %287, %288
  %290 = load i32, i32* @RQFCR_HASHTBL_0, align 4
  %291 = or i32 %289, %290
  %292 = sext i32 %291 to i64
  %293 = inttoptr i64 %292 to i8*
  store i8* %293, i8** %5, align 8
  %294 = load i8*, i8** %6, align 8
  %295 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %296 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %295, i32 0, i32 2
  %297 = load i8**, i8*** %296, align 8
  %298 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %299 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = getelementptr inbounds i8*, i8** %297, i64 %300
  store i8* %294, i8** %301, align 8
  %302 = load i8*, i8** %5, align 8
  %303 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %304 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %303, i32 0, i32 1
  %305 = load i8**, i8*** %304, align 8
  %306 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %307 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = getelementptr inbounds i8*, i8** %305, i64 %308
  store i8* %302, i8** %309, align 8
  %310 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %311 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %312 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load i8*, i8** %5, align 8
  %315 = load i8*, i8** %6, align 8
  %316 = call i32 @gfar_write_filer(%struct.gfar_private* %310, i64 %313, i8* %314, i8* %315)
  %317 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %318 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = sub i64 %319, 1
  %321 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %322 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %321, i32 0, i32 0
  store i64 %320, i64* %322, align 8
  br label %323

323:                                              ; preds = %282, %277
  %324 = load i32, i32* %4, align 4
  %325 = load i32, i32* @RXH_L4_B_2_3, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %369

328:                                              ; preds = %323
  %329 = load i32, i32* @RQFCR_PID_DPT, align 4
  %330 = load i32, i32* @RQFCR_CMP_NOMATCH, align 4
  %331 = or i32 %329, %330
  %332 = load i32, i32* @RQFCR_HASH, align 4
  %333 = or i32 %331, %332
  %334 = load i32, i32* @RQFCR_AND, align 4
  %335 = or i32 %333, %334
  %336 = load i32, i32* @RQFCR_HASHTBL_0, align 4
  %337 = or i32 %335, %336
  %338 = sext i32 %337 to i64
  %339 = inttoptr i64 %338 to i8*
  store i8* %339, i8** %5, align 8
  %340 = load i8*, i8** %6, align 8
  %341 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %342 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %341, i32 0, i32 2
  %343 = load i8**, i8*** %342, align 8
  %344 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %345 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = getelementptr inbounds i8*, i8** %343, i64 %346
  store i8* %340, i8** %347, align 8
  %348 = load i8*, i8** %5, align 8
  %349 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %350 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %349, i32 0, i32 1
  %351 = load i8**, i8*** %350, align 8
  %352 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %353 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = getelementptr inbounds i8*, i8** %351, i64 %354
  store i8* %348, i8** %355, align 8
  %356 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %357 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %358 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i8*, i8** %5, align 8
  %361 = load i8*, i8** %6, align 8
  %362 = call i32 @gfar_write_filer(%struct.gfar_private* %356, i64 %359, i8* %360, i8* %361)
  %363 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %364 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = sub i64 %365, 1
  %367 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %368 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %367, i32 0, i32 0
  store i64 %366, i64* %368, align 8
  br label %369

369:                                              ; preds = %328, %323
  ret void
}

declare dso_local i32 @gfar_write_filer(%struct.gfar_private*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
