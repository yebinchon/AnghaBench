; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_pmf.c_smt_set_para.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_pmf.c_smt_set_para.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_4__, %struct.fddi_mib, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.fddi_mib = type { i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.fddi_mib_p*, %struct.fddi_mib_a*, %struct.fddi_mib_m* }
%struct.fddi_mib_p = type { i32, i32, i32, i32, i64 }
%struct.fddi_mib_a = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.fddi_mib_m = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i8* }
%struct.smt_para = type { i32, i32 }
%struct.s_p_tab = type { i32, i32, i8* }

@u_char = common dso_local global i32 0, align 4
@byte_val = common dso_local global i32 0, align 4
@u_short = common dso_local global i32 0, align 4
@word_val = common dso_local global i32 0, align 4
@u_long = common dso_local global i32 0, align 4
@long_val = common dso_local global i64 0, align 8
@INDEX_MAC = common dso_local global i32 0, align 4
@INDEX_PATH = common dso_local global i32 0, align 4
@INDEX_PORT = common dso_local global i32 0, align 4
@NUMMACS = common dso_local global i32 0, align 4
@SMT_RDF_NOPARAM = common dso_local global i32 0, align 4
@NUMPATHS = common dso_local global i32 0, align 4
@SMT_RDF_ILLEGAL = common dso_local global i32 0, align 4
@SMT_E0120 = common dso_local global i32 0, align 4
@SMT_E0120_MSG = common dso_local global i32 0, align 4
@POLICY_MM = common dso_local global i32 0, align 4
@MIB_P_PATH_PRIM_PREFER = common dso_local global i32 0, align 4
@MIB_P_PATH_PRIM_ALTER = common dso_local global i32 0, align 4
@EVENT_RMT = common dso_local global i32 0, align 4
@RM_ENABLE_FLAG = common dso_local global i32 0, align 4
@RS_EVENT = common dso_local global i32 0, align 4
@EVENT_ECM = common dso_local global i32 0, align 4
@EC_DISCONNECT = common dso_local global i32 0, align 4
@SMT_STATION_ACTION = common dso_local global i32 0, align 4
@SMT_PORT_ACTION = common dso_local global i32 0, align 4
@SMT_RDF_RANGE = common dso_local global i32 0, align 4
@SMT_RDF_LENGTH = common dso_local global i32 0, align 4
@SB_START = common dso_local global i32 0, align 4
@SB_STOP = common dso_local global i32 0, align 4
@SMT_RDF_AUTHOR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s_smc*, %struct.smt_para*, i32, i32, i32)* @smt_set_para to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smt_set_para(%struct.s_smc* %0, %struct.smt_para* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.s_smc*, align 8
  %8 = alloca %struct.smt_para*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.s_p_tab*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i8*, align 8
  %19 = alloca %struct.fddi_mib*, align 8
  %20 = alloca %struct.fddi_mib_m*, align 8
  %21 = alloca %struct.fddi_mib_a*, align 8
  %22 = alloca %struct.fddi_mib_p*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %7, align 8
  store %struct.smt_para* %1, %struct.smt_para** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.fddi_mib_m* null, %struct.fddi_mib_m** %20, align 8
  store %struct.fddi_mib_a* null, %struct.fddi_mib_a** %21, align 8
  store %struct.fddi_mib_p* null, %struct.fddi_mib_p** %22, align 8
  %26 = load i32, i32* @u_char, align 4
  %27 = load i32, i32* @byte_val, align 4
  %28 = sext i32 %27 to i64
  %29 = call i32 @SK_LOC_DECL(i32 %26, i64 %28)
  %30 = load i32, i32* @u_short, align 4
  %31 = load i32, i32* @word_val, align 4
  %32 = sext i32 %31 to i64
  %33 = call i32 @SK_LOC_DECL(i32 %30, i64 %32)
  %34 = load i32, i32* @u_long, align 4
  %35 = load i64, i64* @long_val, align 8
  %36 = call i32 @SK_LOC_DECL(i32 %34, i64 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @INDEX_MAC, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %23, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @INDEX_PATH, align 4
  %42 = sub nsw i32 %40, %41
  store i32 %42, i32* %24, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @INDEX_PORT, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %25, align 4
  %46 = load %struct.smt_para*, %struct.smt_para** %8, align 8
  %47 = getelementptr inbounds %struct.smt_para, %struct.smt_para* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %13, align 4
  %49 = load %struct.smt_para*, %struct.smt_para** %8, align 8
  %50 = getelementptr inbounds %struct.smt_para, %struct.smt_para* %49, i64 1
  %51 = bitcast %struct.smt_para* %50 to i8*
  store i8* %51, i8** %14, align 8
  %52 = load %struct.s_smc*, %struct.s_smc** %7, align 8
  %53 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %52, i32 0, i32 1
  store %struct.fddi_mib* %53, %struct.fddi_mib** %19, align 8
  %54 = load %struct.smt_para*, %struct.smt_para** %8, align 8
  %55 = getelementptr inbounds %struct.smt_para, %struct.smt_para* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 61440
  switch i32 %57, label %59 [
    i32 4096, label %58
    i32 8192, label %62
    i32 12288, label %85
    i32 16384, label %108
  ]

58:                                               ; preds = %5
  br label %59

59:                                               ; preds = %5, %58
  %60 = load %struct.fddi_mib*, %struct.fddi_mib** %19, align 8
  %61 = bitcast %struct.fddi_mib* %60 to i8*
  store i8* %61, i8** %18, align 8
  br label %133

62:                                               ; preds = %5
  %63 = load i32, i32* %23, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %23, align 4
  %67 = load i32, i32* @NUMMACS, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65, %62
  %70 = load i32, i32* @SMT_RDF_NOPARAM, align 4
  store i32 %70, i32* %6, align 4
  br label %743

71:                                               ; preds = %65
  %72 = load %struct.s_smc*, %struct.s_smc** %7, align 8
  %73 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.fddi_mib, %struct.fddi_mib* %73, i32 0, i32 15
  %75 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %74, align 8
  %76 = load i32, i32* %23, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %75, i64 %77
  store %struct.fddi_mib_m* %78, %struct.fddi_mib_m** %20, align 8
  %79 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %20, align 8
  %80 = bitcast %struct.fddi_mib_m* %79 to i8*
  store i8* %80, i8** %18, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 4
  store i8* %82, i8** %14, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sub nsw i32 %83, 4
  store i32 %84, i32* %13, align 4
  br label %133

85:                                               ; preds = %5
  %86 = load i32, i32* %24, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %24, align 4
  %90 = load i32, i32* @NUMPATHS, align 4
  %91 = icmp sge i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88, %85
  %93 = load i32, i32* @SMT_RDF_NOPARAM, align 4
  store i32 %93, i32* %6, align 4
  br label %743

94:                                               ; preds = %88
  %95 = load %struct.s_smc*, %struct.s_smc** %7, align 8
  %96 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.fddi_mib, %struct.fddi_mib* %96, i32 0, i32 14
  %98 = load %struct.fddi_mib_a*, %struct.fddi_mib_a** %97, align 8
  %99 = load i32, i32* %24, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.fddi_mib_a, %struct.fddi_mib_a* %98, i64 %100
  store %struct.fddi_mib_a* %101, %struct.fddi_mib_a** %21, align 8
  %102 = load %struct.fddi_mib_a*, %struct.fddi_mib_a** %21, align 8
  %103 = bitcast %struct.fddi_mib_a* %102 to i8*
  store i8* %103, i8** %18, align 8
  %104 = load i8*, i8** %14, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 4
  store i8* %105, i8** %14, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sub nsw i32 %106, 4
  store i32 %107, i32* %13, align 4
  br label %133

108:                                              ; preds = %5
  %109 = load i32, i32* %25, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %25, align 4
  %113 = load %struct.s_smc*, %struct.s_smc** %7, align 8
  %114 = call i32 @smt_mib_phys(%struct.s_smc* %113)
  %115 = icmp sge i32 %112, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %111, %108
  %117 = load i32, i32* @SMT_RDF_NOPARAM, align 4
  store i32 %117, i32* %6, align 4
  br label %743

118:                                              ; preds = %111
  %119 = load %struct.s_smc*, %struct.s_smc** %7, align 8
  %120 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.fddi_mib, %struct.fddi_mib* %120, i32 0, i32 13
  %122 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %121, align 8
  %123 = load %struct.s_smc*, %struct.s_smc** %7, align 8
  %124 = load i32, i32* %25, align 4
  %125 = call i64 @port_to_mib(%struct.s_smc* %123, i32 %124)
  %126 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %122, i64 %125
  store %struct.fddi_mib_p* %126, %struct.fddi_mib_p** %22, align 8
  %127 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %22, align 8
  %128 = bitcast %struct.fddi_mib_p* %127 to i8*
  store i8* %128, i8** %18, align 8
  %129 = load i8*, i8** %14, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 4
  store i8* %130, i8** %14, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sub nsw i32 %131, 4
  store i32 %132, i32* %13, align 4
  br label %133

133:                                              ; preds = %118, %94, %71, %59
  %134 = load %struct.smt_para*, %struct.smt_para** %8, align 8
  %135 = getelementptr inbounds %struct.smt_para, %struct.smt_para* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  switch i32 %136, label %143 [
    i32 155, label %137
    i32 154, label %137
    i32 141, label %137
  ]

137:                                              ; preds = %133, %133, %133
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* @SMT_RDF_NOPARAM, align 4
  store i32 %141, i32* %6, align 4
  br label %743

142:                                              ; preds = %137
  br label %143

143:                                              ; preds = %133, %142
  %144 = load %struct.smt_para*, %struct.smt_para** %8, align 8
  %145 = getelementptr inbounds %struct.smt_para, %struct.smt_para* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call %struct.s_p_tab* @smt_get_ptab(i32 %146)
  store %struct.s_p_tab* %147, %struct.s_p_tab** %12, align 8
  %148 = load %struct.s_p_tab*, %struct.s_p_tab** %12, align 8
  %149 = icmp ne %struct.s_p_tab* %148, null
  br i1 %149, label %162, label %150

150:                                              ; preds = %143
  %151 = load %struct.smt_para*, %struct.smt_para** %8, align 8
  %152 = getelementptr inbounds %struct.smt_para, %struct.smt_para* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, 65280
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = load i32, i32* @SMT_RDF_NOPARAM, align 4
  br label %160

158:                                              ; preds = %150
  %159 = load i32, i32* @SMT_RDF_ILLEGAL, align 4
  br label %160

160:                                              ; preds = %158, %156
  %161 = phi i32 [ %157, %156 ], [ %159, %158 ]
  store i32 %161, i32* %6, align 4
  br label %743

162:                                              ; preds = %143
  %163 = load %struct.s_p_tab*, %struct.s_p_tab** %12, align 8
  %164 = getelementptr inbounds %struct.s_p_tab, %struct.s_p_tab* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  switch i32 %165, label %167 [
    i32 163, label %166
    i32 162, label %166
  ]

166:                                              ; preds = %162, %162
  br label %169

167:                                              ; preds = %162
  %168 = load i32, i32* @SMT_RDF_ILLEGAL, align 4
  store i32 %168, i32* %6, align 4
  br label %743

169:                                              ; preds = %166
  %170 = load i8*, i8** %18, align 8
  %171 = load %struct.s_p_tab*, %struct.s_p_tab** %12, align 8
  %172 = getelementptr inbounds %struct.s_p_tab, %struct.s_p_tab* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %170, i64 %174
  store i8* %175, i8** %15, align 8
  %176 = load %struct.s_p_tab*, %struct.s_p_tab** %12, align 8
  %177 = getelementptr inbounds %struct.s_p_tab, %struct.s_p_tab* %176, i32 0, i32 2
  %178 = load i8*, i8** %177, align 8
  store i8* %178, i8** %16, align 8
  br label %179

179:                                              ; preds = %419, %169
  %180 = load i8*, i8** %16, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %188

182:                                              ; preds = %179
  %183 = load i8*, i8** %16, align 8
  %184 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %184, i8** %16, align 8
  %185 = load i8, i8* %183, align 1
  store i8 %185, i8* %17, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp ne i32 %186, 0
  br label %188

188:                                              ; preds = %182, %179
  %189 = phi i1 [ false, %179 ], [ %187, %182 ]
  br i1 %189, label %190, label %420

190:                                              ; preds = %188
  %191 = load i8, i8* %17, align 1
  %192 = sext i8 %191 to i32
  switch i32 %192, label %413 [
    i32 98, label %193
    i32 119, label %194
    i32 108, label %195
    i32 83, label %196
    i32 69, label %196
    i32 82, label %196
    i32 114, label %196
    i32 70, label %229
    i32 66, label %229
    i32 67, label %262
    i32 84, label %262
    i32 76, label %262
    i32 65, label %291
    i32 52, label %310
    i32 56, label %328
    i32 68, label %346
    i32 80, label %364
  ]

193:                                              ; preds = %190
  store i8* bitcast (i32* @byte_val to i8*), i8** %15, align 8
  br label %419

194:                                              ; preds = %190
  store i8* bitcast (i32* @word_val to i8*), i8** %15, align 8
  br label %419

195:                                              ; preds = %190
  store i8* bitcast (i64* @long_val to i8*), i8** %15, align 8
  br label %419

196:                                              ; preds = %190, %190, %190, %190
  %197 = load i32, i32* %13, align 4
  %198 = icmp slt i32 %197, 4
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  br label %741

200:                                              ; preds = %196
  %201 = load i8*, i8** %14, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 0
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = load i8*, i8** %14, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 1
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = or i32 %204, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %200
  br label %739

212:                                              ; preds = %200
  %213 = load i8*, i8** %14, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 2
  %215 = load i8, i8* %214, align 1
  %216 = load i8*, i8** %15, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 0
  store i8 %215, i8* %217, align 1
  %218 = load i8*, i8** %14, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 3
  %220 = load i8, i8* %219, align 1
  %221 = load i8*, i8** %15, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 1
  store i8 %220, i8* %222, align 1
  %223 = load i8*, i8** %14, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 4
  store i8* %224, i8** %14, align 8
  %225 = load i8*, i8** %15, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 2
  store i8* %226, i8** %15, align 8
  %227 = load i32, i32* %13, align 4
  %228 = sub nsw i32 %227, 4
  store i32 %228, i32* %13, align 4
  br label %419

229:                                              ; preds = %190, %190
  %230 = load i32, i32* %13, align 4
  %231 = icmp slt i32 %230, 4
  br i1 %231, label %232, label %233

232:                                              ; preds = %229
  br label %741

233:                                              ; preds = %229
  %234 = load i8*, i8** %14, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 0
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = load i8*, i8** %14, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 1
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = or i32 %237, %241
  %243 = load i8*, i8** %14, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 2
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  %247 = or i32 %242, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %233
  br label %739

250:                                              ; preds = %233
  %251 = load i8*, i8** %14, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 3
  %253 = load i8, i8* %252, align 1
  %254 = load i8*, i8** %15, align 8
  %255 = getelementptr inbounds i8, i8* %254, i64 0
  store i8 %253, i8* %255, align 1
  %256 = load i32, i32* %13, align 4
  %257 = sub nsw i32 %256, 4
  store i32 %257, i32* %13, align 4
  %258 = load i8*, i8** %14, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 4
  store i8* %259, i8** %14, align 8
  %260 = load i8*, i8** %15, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 4
  store i8* %261, i8** %15, align 8
  br label %419

262:                                              ; preds = %190, %190, %190
  %263 = load i32, i32* %13, align 4
  %264 = icmp slt i32 %263, 4
  br i1 %264, label %265, label %266

265:                                              ; preds = %262
  br label %741

266:                                              ; preds = %262
  %267 = load i8*, i8** %14, align 8
  %268 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %268, i8** %14, align 8
  %269 = load i8, i8* %267, align 1
  %270 = load i8*, i8** %15, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 0
  store i8 %269, i8* %271, align 1
  %272 = load i8*, i8** %14, align 8
  %273 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %273, i8** %14, align 8
  %274 = load i8, i8* %272, align 1
  %275 = load i8*, i8** %15, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 1
  store i8 %274, i8* %276, align 1
  %277 = load i8*, i8** %14, align 8
  %278 = getelementptr inbounds i8, i8* %277, i32 1
  store i8* %278, i8** %14, align 8
  %279 = load i8, i8* %277, align 1
  %280 = load i8*, i8** %15, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 2
  store i8 %279, i8* %281, align 1
  %282 = load i8*, i8** %14, align 8
  %283 = getelementptr inbounds i8, i8* %282, i32 1
  store i8* %283, i8** %14, align 8
  %284 = load i8, i8* %282, align 1
  %285 = load i8*, i8** %15, align 8
  %286 = getelementptr inbounds i8, i8* %285, i64 3
  store i8 %284, i8* %286, align 1
  %287 = load i32, i32* %13, align 4
  %288 = sub nsw i32 %287, 4
  store i32 %288, i32* %13, align 4
  %289 = load i8*, i8** %15, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 4
  store i8* %290, i8** %15, align 8
  br label %419

291:                                              ; preds = %190
  %292 = load i32, i32* %13, align 4
  %293 = icmp slt i32 %292, 8
  br i1 %293, label %294, label %295

294:                                              ; preds = %291
  br label %741

295:                                              ; preds = %291
  %296 = load i32, i32* %11, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %303

298:                                              ; preds = %295
  %299 = load i8*, i8** %15, align 8
  %300 = load i8*, i8** %14, align 8
  %301 = getelementptr inbounds i8, i8* %300, i64 2
  %302 = call i32 @memcpy(i8* %299, i8* %301, i32 6)
  br label %303

303:                                              ; preds = %298, %295
  %304 = load i8*, i8** %15, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 8
  store i8* %305, i8** %15, align 8
  %306 = load i8*, i8** %14, align 8
  %307 = getelementptr inbounds i8, i8* %306, i64 8
  store i8* %307, i8** %14, align 8
  %308 = load i32, i32* %13, align 4
  %309 = sub nsw i32 %308, 8
  store i32 %309, i32* %13, align 4
  br label %419

310:                                              ; preds = %190
  %311 = load i32, i32* %13, align 4
  %312 = icmp slt i32 %311, 4
  br i1 %312, label %313, label %314

313:                                              ; preds = %310
  br label %741

314:                                              ; preds = %310
  %315 = load i32, i32* %11, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %321

317:                                              ; preds = %314
  %318 = load i8*, i8** %15, align 8
  %319 = load i8*, i8** %14, align 8
  %320 = call i32 @memcpy(i8* %318, i8* %319, i32 4)
  br label %321

321:                                              ; preds = %317, %314
  %322 = load i8*, i8** %15, align 8
  %323 = getelementptr inbounds i8, i8* %322, i64 4
  store i8* %323, i8** %15, align 8
  %324 = load i8*, i8** %14, align 8
  %325 = getelementptr inbounds i8, i8* %324, i64 4
  store i8* %325, i8** %14, align 8
  %326 = load i32, i32* %13, align 4
  %327 = sub nsw i32 %326, 4
  store i32 %327, i32* %13, align 4
  br label %419

328:                                              ; preds = %190
  %329 = load i32, i32* %13, align 4
  %330 = icmp slt i32 %329, 8
  br i1 %330, label %331, label %332

331:                                              ; preds = %328
  br label %741

332:                                              ; preds = %328
  %333 = load i32, i32* %11, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %339

335:                                              ; preds = %332
  %336 = load i8*, i8** %15, align 8
  %337 = load i8*, i8** %14, align 8
  %338 = call i32 @memcpy(i8* %336, i8* %337, i32 8)
  br label %339

339:                                              ; preds = %335, %332
  %340 = load i8*, i8** %15, align 8
  %341 = getelementptr inbounds i8, i8* %340, i64 8
  store i8* %341, i8** %15, align 8
  %342 = load i8*, i8** %14, align 8
  %343 = getelementptr inbounds i8, i8* %342, i64 8
  store i8* %343, i8** %14, align 8
  %344 = load i32, i32* %13, align 4
  %345 = sub nsw i32 %344, 8
  store i32 %345, i32* %13, align 4
  br label %419

346:                                              ; preds = %190
  %347 = load i32, i32* %13, align 4
  %348 = icmp slt i32 %347, 32
  br i1 %348, label %349, label %350

349:                                              ; preds = %346
  br label %741

350:                                              ; preds = %346
  %351 = load i32, i32* %11, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %357

353:                                              ; preds = %350
  %354 = load i8*, i8** %15, align 8
  %355 = load i8*, i8** %14, align 8
  %356 = call i32 @memcpy(i8* %354, i8* %355, i32 32)
  br label %357

357:                                              ; preds = %353, %350
  %358 = load i8*, i8** %15, align 8
  %359 = getelementptr inbounds i8, i8* %358, i64 32
  store i8* %359, i8** %15, align 8
  %360 = load i8*, i8** %14, align 8
  %361 = getelementptr inbounds i8, i8* %360, i64 32
  store i8* %361, i8** %14, align 8
  %362 = load i32, i32* %13, align 4
  %363 = sub nsw i32 %362, 32
  store i32 %363, i32* %13, align 4
  br label %419

364:                                              ; preds = %190
  %365 = load i32, i32* %11, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %408

367:                                              ; preds = %364
  %368 = load i8*, i8** %14, align 8
  %369 = getelementptr inbounds i8, i8* %368, i32 1
  store i8* %369, i8** %14, align 8
  %370 = load i8, i8* %368, align 1
  %371 = load i8*, i8** %15, align 8
  %372 = getelementptr inbounds i8, i8* %371, i64 0
  store i8 %370, i8* %372, align 1
  %373 = load i8*, i8** %14, align 8
  %374 = getelementptr inbounds i8, i8* %373, i32 1
  store i8* %374, i8** %14, align 8
  %375 = load i8, i8* %373, align 1
  %376 = load i8*, i8** %15, align 8
  %377 = getelementptr inbounds i8, i8* %376, i64 1
  store i8 %375, i8* %377, align 1
  %378 = load i8*, i8** %14, align 8
  %379 = getelementptr inbounds i8, i8* %378, i32 1
  store i8* %379, i8** %14, align 8
  %380 = load i8, i8* %378, align 1
  %381 = load i8*, i8** %15, align 8
  %382 = getelementptr inbounds i8, i8* %381, i64 2
  store i8 %380, i8* %382, align 1
  %383 = load i8*, i8** %14, align 8
  %384 = getelementptr inbounds i8, i8* %383, i32 1
  store i8* %384, i8** %14, align 8
  %385 = load i8, i8* %383, align 1
  %386 = load i8*, i8** %15, align 8
  %387 = getelementptr inbounds i8, i8* %386, i64 3
  store i8 %385, i8* %387, align 1
  %388 = load i8*, i8** %14, align 8
  %389 = getelementptr inbounds i8, i8* %388, i32 1
  store i8* %389, i8** %14, align 8
  %390 = load i8, i8* %388, align 1
  %391 = load i8*, i8** %15, align 8
  %392 = getelementptr inbounds i8, i8* %391, i64 4
  store i8 %390, i8* %392, align 1
  %393 = load i8*, i8** %14, align 8
  %394 = getelementptr inbounds i8, i8* %393, i32 1
  store i8* %394, i8** %14, align 8
  %395 = load i8, i8* %393, align 1
  %396 = load i8*, i8** %15, align 8
  %397 = getelementptr inbounds i8, i8* %396, i64 5
  store i8 %395, i8* %397, align 1
  %398 = load i8*, i8** %14, align 8
  %399 = getelementptr inbounds i8, i8* %398, i32 1
  store i8* %399, i8** %14, align 8
  %400 = load i8, i8* %398, align 1
  %401 = load i8*, i8** %15, align 8
  %402 = getelementptr inbounds i8, i8* %401, i64 6
  store i8 %400, i8* %402, align 1
  %403 = load i8*, i8** %14, align 8
  %404 = getelementptr inbounds i8, i8* %403, i32 1
  store i8* %404, i8** %14, align 8
  %405 = load i8, i8* %403, align 1
  %406 = load i8*, i8** %15, align 8
  %407 = getelementptr inbounds i8, i8* %406, i64 7
  store i8 %405, i8* %407, align 1
  br label %408

408:                                              ; preds = %367, %364
  %409 = load i8*, i8** %15, align 8
  %410 = getelementptr inbounds i8, i8* %409, i64 8
  store i8* %410, i8** %15, align 8
  %411 = load i32, i32* %13, align 4
  %412 = sub nsw i32 %411, 8
  store i32 %412, i32* %13, align 4
  br label %419

413:                                              ; preds = %190
  %414 = load %struct.s_smc*, %struct.s_smc** %7, align 8
  %415 = load i32, i32* @SMT_E0120, align 4
  %416 = load i32, i32* @SMT_E0120_MSG, align 4
  %417 = call i32 @SMT_PANIC(%struct.s_smc* %414, i32 %415, i32 %416)
  %418 = load i32, i32* @SMT_RDF_ILLEGAL, align 4
  store i32 %418, i32* %6, align 4
  br label %743

419:                                              ; preds = %408, %357, %339, %321, %303, %266, %250, %212, %195, %194, %193
  br label %179

420:                                              ; preds = %188
  %421 = load %struct.smt_para*, %struct.smt_para** %8, align 8
  %422 = getelementptr inbounds %struct.smt_para, %struct.smt_para* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 4
  switch i32 %423, label %737 [
    i32 161, label %424
    i32 160, label %437
    i32 159, label %451
    i32 158, label %466
    i32 157, label %479
    i32 145, label %492
    i32 144, label %508
    i32 143, label %516
    i32 142, label %524
    i32 141, label %541
    i32 140, label %550
    i32 139, label %563
    i32 138, label %585
    i32 137, label %595
    i32 136, label %608
    i32 135, label %617
    i32 134, label %626
    i32 133, label %654
    i32 132, label %666
    i32 131, label %676
    i32 130, label %688
    i32 129, label %703
    i32 156, label %718
    i32 128, label %726
  ]

424:                                              ; preds = %420
  %425 = load i32, i32* @word_val, align 4
  %426 = and i32 %425, -2
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %429

428:                                              ; preds = %424
  br label %739

429:                                              ; preds = %424
  %430 = load i32, i32* %11, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %436

432:                                              ; preds = %429
  %433 = load i32, i32* @word_val, align 4
  %434 = load %struct.fddi_mib*, %struct.fddi_mib** %19, align 8
  %435 = getelementptr inbounds %struct.fddi_mib, %struct.fddi_mib* %434, i32 0, i32 0
  store i32 %433, i32* %435, align 8
  br label %436

436:                                              ; preds = %432, %429
  br label %738

437:                                              ; preds = %420
  %438 = load i32, i32* @word_val, align 4
  %439 = load i32, i32* @POLICY_MM, align 4
  %440 = and i32 %438, %439
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %443, label %442

442:                                              ; preds = %437
  br label %739

443:                                              ; preds = %437
  %444 = load i32, i32* %11, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %450

446:                                              ; preds = %443
  %447 = load i32, i32* @word_val, align 4
  %448 = load %struct.fddi_mib*, %struct.fddi_mib** %19, align 8
  %449 = getelementptr inbounds %struct.fddi_mib, %struct.fddi_mib* %448, i32 0, i32 1
  store i32 %447, i32* %449, align 4
  br label %450

450:                                              ; preds = %446, %443
  br label %738

451:                                              ; preds = %420
  %452 = load i32, i32* @word_val, align 4
  %453 = icmp slt i32 %452, 2
  br i1 %453, label %457, label %454

454:                                              ; preds = %451
  %455 = load i32, i32* @word_val, align 4
  %456 = icmp sgt i32 %455, 30
  br i1 %456, label %457, label %458

457:                                              ; preds = %454, %451
  br label %739

458:                                              ; preds = %454
  %459 = load i32, i32* %11, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %465

461:                                              ; preds = %458
  %462 = load i32, i32* @word_val, align 4
  %463 = load %struct.fddi_mib*, %struct.fddi_mib** %19, align 8
  %464 = getelementptr inbounds %struct.fddi_mib, %struct.fddi_mib* %463, i32 0, i32 2
  store i32 %462, i32* %464, align 8
  br label %465

465:                                              ; preds = %461, %458
  br label %738

466:                                              ; preds = %420
  %467 = load i32, i32* @byte_val, align 4
  %468 = and i32 %467, -2
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %471

470:                                              ; preds = %466
  br label %739

471:                                              ; preds = %466
  %472 = load i32, i32* %11, align 4
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %478

474:                                              ; preds = %471
  %475 = load i32, i32* @byte_val, align 4
  %476 = load %struct.fddi_mib*, %struct.fddi_mib** %19, align 8
  %477 = getelementptr inbounds %struct.fddi_mib, %struct.fddi_mib* %476, i32 0, i32 3
  store i32 %475, i32* %477, align 4
  br label %478

478:                                              ; preds = %474, %471
  br label %738

479:                                              ; preds = %420
  %480 = load i64, i64* @long_val, align 8
  %481 = icmp slt i64 %480, 75022161
  br i1 %481, label %482, label %483

482:                                              ; preds = %479
  br label %739

483:                                              ; preds = %479
  %484 = load i32, i32* %11, align 4
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %491

486:                                              ; preds = %483
  %487 = load i64, i64* @long_val, align 8
  %488 = trunc i64 %487 to i32
  %489 = load %struct.fddi_mib*, %struct.fddi_mib** %19, align 8
  %490 = getelementptr inbounds %struct.fddi_mib, %struct.fddi_mib* %489, i32 0, i32 4
  store i32 %488, i32* %490, align 8
  br label %491

491:                                              ; preds = %486, %483
  br label %738

492:                                              ; preds = %420
  %493 = load i32, i32* @word_val, align 4
  %494 = load i32, i32* @MIB_P_PATH_PRIM_PREFER, align 4
  %495 = load i32, i32* @MIB_P_PATH_PRIM_ALTER, align 4
  %496 = or i32 %494, %495
  %497 = and i32 %493, %496
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %499, label %500

499:                                              ; preds = %492
  br label %739

500:                                              ; preds = %492
  %501 = load i32, i32* %11, align 4
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %507

503:                                              ; preds = %500
  %504 = load i32, i32* @word_val, align 4
  %505 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %20, align 8
  %506 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %505, i32 0, i32 0
  store i32 %504, i32* %506, align 4
  br label %507

507:                                              ; preds = %503, %500
  br label %738

508:                                              ; preds = %420
  %509 = load i32, i32* %11, align 4
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %511, label %515

511:                                              ; preds = %508
  %512 = load i32, i32* @word_val, align 4
  %513 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %20, align 8
  %514 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %513, i32 0, i32 1
  store i32 %512, i32* %514, align 4
  br label %515

515:                                              ; preds = %511, %508
  br label %738

516:                                              ; preds = %420
  %517 = load i32, i32* %11, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %523

519:                                              ; preds = %516
  %520 = load i32, i32* @word_val, align 4
  %521 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %20, align 8
  %522 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %521, i32 0, i32 2
  store i32 %520, i32* %522, align 4
  br label %523

523:                                              ; preds = %519, %516
  br label %738

524:                                              ; preds = %420
  %525 = load i32, i32* @byte_val, align 4
  %526 = and i32 %525, -2
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %529

528:                                              ; preds = %524
  br label %739

529:                                              ; preds = %524
  %530 = load i32, i32* %11, align 4
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %540

532:                                              ; preds = %529
  %533 = load i32, i32* @byte_val, align 4
  %534 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %20, align 8
  %535 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %534, i32 0, i32 3
  store i32 %533, i32* %535, align 4
  %536 = load %struct.s_smc*, %struct.s_smc** %7, align 8
  %537 = load i32, i32* @EVENT_RMT, align 4
  %538 = load i32, i32* @RM_ENABLE_FLAG, align 4
  %539 = call i32 @queue_event(%struct.s_smc* %536, i32 %537, i32 %538)
  br label %540

540:                                              ; preds = %532, %529
  br label %738

541:                                              ; preds = %420
  %542 = load i32, i32* %11, align 4
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %544, label %549

544:                                              ; preds = %541
  %545 = load i64, i64* @long_val, align 8
  %546 = trunc i64 %545 to i32
  %547 = load %struct.fddi_mib_m*, %struct.fddi_mib_m** %20, align 8
  %548 = getelementptr inbounds %struct.fddi_mib_m, %struct.fddi_mib_m* %547, i32 0, i32 4
  store i32 %546, i32* %548, align 4
  br label %549

549:                                              ; preds = %544, %541
  br label %738

550:                                              ; preds = %420
  %551 = load i64, i64* @long_val, align 8
  %552 = icmp sgt i64 %551, 1562
  br i1 %552, label %553, label %554

553:                                              ; preds = %550
  br label %739

554:                                              ; preds = %550
  %555 = load i32, i32* %11, align 4
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %562

557:                                              ; preds = %554
  %558 = load i64, i64* @long_val, align 8
  %559 = trunc i64 %558 to i32
  %560 = load %struct.fddi_mib_a*, %struct.fddi_mib_a** %21, align 8
  %561 = getelementptr inbounds %struct.fddi_mib_a, %struct.fddi_mib_a* %560, i32 0, i32 0
  store i32 %559, i32* %561, align 8
  br label %562

562:                                              ; preds = %557, %554
  br label %738

563:                                              ; preds = %420
  %564 = load i64, i64* @long_val, align 8
  %565 = icmp sgt i64 %564, 5000
  br i1 %565, label %566, label %567

566:                                              ; preds = %563
  br label %739

567:                                              ; preds = %563
  %568 = load i64, i64* @long_val, align 8
  %569 = icmp ne i64 %568, 0
  br i1 %569, label %570, label %576

570:                                              ; preds = %567
  %571 = load %struct.fddi_mib_a*, %struct.fddi_mib_a** %21, align 8
  %572 = getelementptr inbounds %struct.fddi_mib_a, %struct.fddi_mib_a* %571, i32 0, i32 0
  %573 = load i32, i32* %572, align 8
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %575, label %576

575:                                              ; preds = %570
  br label %739

576:                                              ; preds = %570, %567
  %577 = load i32, i32* %11, align 4
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %584

579:                                              ; preds = %576
  %580 = load i64, i64* @long_val, align 8
  %581 = trunc i64 %580 to i32
  %582 = load %struct.fddi_mib_a*, %struct.fddi_mib_a** %21, align 8
  %583 = getelementptr inbounds %struct.fddi_mib_a, %struct.fddi_mib_a* %582, i32 0, i32 1
  store i32 %581, i32* %583, align 4
  br label %584

584:                                              ; preds = %579, %576
  br label %738

585:                                              ; preds = %420
  %586 = load i32, i32* %11, align 4
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %588, label %594

588:                                              ; preds = %585
  %589 = load i64, i64* @long_val, align 8
  %590 = load %struct.fddi_mib_a*, %struct.fddi_mib_a** %21, align 8
  %591 = getelementptr inbounds %struct.fddi_mib_a, %struct.fddi_mib_a* %590, i32 0, i32 2
  store i64 %589, i64* %591, align 8
  %592 = load %struct.s_smc*, %struct.s_smc** %7, align 8
  %593 = call i32 @rtm_set_timer(%struct.s_smc* %592)
  br label %594

594:                                              ; preds = %588, %585
  br label %738

595:                                              ; preds = %420
  %596 = load i64, i64* @long_val, align 8
  %597 = icmp sgt i64 %596, 12500000
  br i1 %597, label %598, label %599

598:                                              ; preds = %595
  br label %739

599:                                              ; preds = %595
  %600 = load i32, i32* %11, align 4
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %602, label %607

602:                                              ; preds = %599
  %603 = load i64, i64* @long_val, align 8
  %604 = trunc i64 %603 to i32
  %605 = load %struct.fddi_mib_a*, %struct.fddi_mib_a** %21, align 8
  %606 = getelementptr inbounds %struct.fddi_mib_a, %struct.fddi_mib_a* %605, i32 0, i32 3
  store i32 %604, i32* %606, align 8
  br label %607

607:                                              ; preds = %602, %599
  br label %738

608:                                              ; preds = %420
  %609 = load i32, i32* %11, align 4
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %611, label %616

611:                                              ; preds = %608
  %612 = load i64, i64* @long_val, align 8
  %613 = trunc i64 %612 to i32
  %614 = load %struct.fddi_mib_a*, %struct.fddi_mib_a** %21, align 8
  %615 = getelementptr inbounds %struct.fddi_mib_a, %struct.fddi_mib_a* %614, i32 0, i32 4
  store i32 %613, i32* %615, align 4
  br label %616

616:                                              ; preds = %611, %608
  br label %635

617:                                              ; preds = %420
  %618 = load i32, i32* %11, align 4
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %620, label %625

620:                                              ; preds = %617
  %621 = load i64, i64* @long_val, align 8
  %622 = trunc i64 %621 to i32
  %623 = load %struct.fddi_mib_a*, %struct.fddi_mib_a** %21, align 8
  %624 = getelementptr inbounds %struct.fddi_mib_a, %struct.fddi_mib_a* %623, i32 0, i32 5
  store i32 %622, i32* %624, align 8
  br label %625

625:                                              ; preds = %620, %617
  br label %635

626:                                              ; preds = %420
  %627 = load i32, i32* %11, align 4
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %629, label %634

629:                                              ; preds = %626
  %630 = load i64, i64* @long_val, align 8
  %631 = trunc i64 %630 to i32
  %632 = load %struct.fddi_mib_a*, %struct.fddi_mib_a** %21, align 8
  %633 = getelementptr inbounds %struct.fddi_mib_a, %struct.fddi_mib_a* %632, i32 0, i32 6
  store i32 %631, i32* %633, align 4
  br label %634

634:                                              ; preds = %629, %626
  br label %635

635:                                              ; preds = %634, %625, %616
  %636 = load i32, i32* %11, align 4
  %637 = icmp ne i32 %636, 0
  br i1 %637, label %638, label %653

638:                                              ; preds = %635
  %639 = load %struct.s_smc*, %struct.s_smc** %7, align 8
  %640 = call i32 @smt_set_mac_opvalues(%struct.s_smc* %639)
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %642, label %653

642:                                              ; preds = %638
  %643 = load %struct.s_smc*, %struct.s_smc** %7, align 8
  %644 = load i32, i32* @RS_EVENT, align 4
  %645 = call i32 @RS_SET(%struct.s_smc* %643, i32 %644)
  %646 = load %struct.s_smc*, %struct.s_smc** %7, align 8
  %647 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %646, i32 0, i32 0
  %648 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %647, i32 0, i32 0
  store i32 1, i32* %648, align 8
  %649 = load %struct.s_smc*, %struct.s_smc** %7, align 8
  %650 = load i32, i32* @EVENT_ECM, align 4
  %651 = load i32, i32* @EC_DISCONNECT, align 4
  %652 = call i32 @queue_event(%struct.s_smc* %649, i32 %650, i32 %651)
  br label %653

653:                                              ; preds = %642, %638, %635
  br label %738

654:                                              ; preds = %420
  %655 = load i32, i32* @byte_val, align 4
  %656 = icmp sgt i32 %655, 1
  br i1 %656, label %657, label %658

657:                                              ; preds = %654
  br label %739

658:                                              ; preds = %654
  %659 = load i32, i32* %11, align 4
  %660 = icmp ne i32 %659, 0
  br i1 %660, label %661, label %665

661:                                              ; preds = %658
  %662 = load i32, i32* @byte_val, align 4
  %663 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %22, align 8
  %664 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %663, i32 0, i32 0
  store i32 %662, i32* %664, align 8
  br label %665

665:                                              ; preds = %661, %658
  br label %738

666:                                              ; preds = %420
  %667 = load i32, i32* %11, align 4
  %668 = icmp ne i32 %667, 0
  br i1 %668, label %669, label %675

669:                                              ; preds = %666
  %670 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %22, align 8
  %671 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %670, i32 0, i32 4
  %672 = load i64, i64* %671, align 8
  %673 = inttoptr i64 %672 to i8*
  %674 = call i32 @memcpy(i8* %673, i8* bitcast (i64* @long_val to i8*), i32 4)
  br label %675

675:                                              ; preds = %669, %666
  br label %738

676:                                              ; preds = %420
  %677 = load i32, i32* @word_val, align 4
  %678 = icmp sgt i32 %677, 4
  br i1 %678, label %679, label %680

679:                                              ; preds = %676
  br label %739

680:                                              ; preds = %676
  %681 = load i32, i32* %11, align 4
  %682 = icmp ne i32 %681, 0
  br i1 %682, label %683, label %687

683:                                              ; preds = %680
  %684 = load i32, i32* @word_val, align 4
  %685 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %22, align 8
  %686 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %685, i32 0, i32 1
  store i32 %684, i32* %686, align 4
  br label %687

687:                                              ; preds = %683, %680
  br label %738

688:                                              ; preds = %420
  %689 = load i32, i32* @byte_val, align 4
  %690 = icmp slt i32 %689, 4
  br i1 %690, label %694, label %691

691:                                              ; preds = %688
  %692 = load i32, i32* @byte_val, align 4
  %693 = icmp sgt i32 %692, 15
  br i1 %693, label %694, label %695

694:                                              ; preds = %691, %688
  br label %739

695:                                              ; preds = %691
  %696 = load i32, i32* %11, align 4
  %697 = icmp ne i32 %696, 0
  br i1 %697, label %698, label %702

698:                                              ; preds = %695
  %699 = load i32, i32* @byte_val, align 4
  %700 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %22, align 8
  %701 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %700, i32 0, i32 2
  store i32 %699, i32* %701, align 8
  br label %702

702:                                              ; preds = %698, %695
  br label %738

703:                                              ; preds = %420
  %704 = load i32, i32* @byte_val, align 4
  %705 = icmp slt i32 %704, 4
  br i1 %705, label %709, label %706

706:                                              ; preds = %703
  %707 = load i32, i32* @byte_val, align 4
  %708 = icmp sgt i32 %707, 15
  br i1 %708, label %709, label %710

709:                                              ; preds = %706, %703
  br label %739

710:                                              ; preds = %706
  %711 = load i32, i32* %11, align 4
  %712 = icmp ne i32 %711, 0
  br i1 %712, label %713, label %717

713:                                              ; preds = %710
  %714 = load i32, i32* @byte_val, align 4
  %715 = load %struct.fddi_mib_p*, %struct.fddi_mib_p** %22, align 8
  %716 = getelementptr inbounds %struct.fddi_mib_p, %struct.fddi_mib_p* %715, i32 0, i32 3
  store i32 %714, i32* %716, align 4
  br label %717

717:                                              ; preds = %713, %710
  br label %738

718:                                              ; preds = %420
  %719 = load %struct.s_smc*, %struct.s_smc** %7, align 8
  %720 = load i32, i32* @SMT_STATION_ACTION, align 4
  %721 = load i32, i32* @word_val, align 4
  %722 = call i32 @smt_action(%struct.s_smc* %719, i32 %720, i32 %721, i64 0)
  %723 = icmp ne i32 %722, 0
  br i1 %723, label %724, label %725

724:                                              ; preds = %718
  br label %739

725:                                              ; preds = %718
  br label %738

726:                                              ; preds = %420
  %727 = load %struct.s_smc*, %struct.s_smc** %7, align 8
  %728 = load i32, i32* @SMT_PORT_ACTION, align 4
  %729 = load i32, i32* @word_val, align 4
  %730 = load %struct.s_smc*, %struct.s_smc** %7, align 8
  %731 = load i32, i32* %25, align 4
  %732 = call i64 @port_to_mib(%struct.s_smc* %730, i32 %731)
  %733 = call i32 @smt_action(%struct.s_smc* %727, i32 %728, i32 %729, i64 %732)
  %734 = icmp ne i32 %733, 0
  br i1 %734, label %735, label %736

735:                                              ; preds = %726
  br label %739

736:                                              ; preds = %726
  br label %738

737:                                              ; preds = %420
  br label %738

738:                                              ; preds = %737, %736, %725, %717, %702, %687, %675, %665, %653, %607, %594, %584, %562, %549, %540, %523, %515, %507, %491, %478, %465, %450, %436
  store i32 0, i32* %6, align 4
  br label %743

739:                                              ; preds = %735, %724, %709, %694, %679, %657, %598, %575, %566, %553, %528, %499, %482, %470, %457, %442, %428, %249, %211
  %740 = load i32, i32* @SMT_RDF_RANGE, align 4
  store i32 %740, i32* %6, align 4
  br label %743

741:                                              ; preds = %349, %331, %313, %294, %265, %232, %199
  %742 = load i32, i32* @SMT_RDF_LENGTH, align 4
  store i32 %742, i32* %6, align 4
  br label %743

743:                                              ; preds = %741, %739, %738, %413, %167, %160, %140, %116, %92, %69
  %744 = load i32, i32* %6, align 4
  ret i32 %744
}

declare dso_local i32 @SK_LOC_DECL(i32, i64) #1

declare dso_local i32 @smt_mib_phys(%struct.s_smc*) #1

declare dso_local i64 @port_to_mib(%struct.s_smc*, i32) #1

declare dso_local %struct.s_p_tab* @smt_get_ptab(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @SMT_PANIC(%struct.s_smc*, i32, i32) #1

declare dso_local i32 @queue_event(%struct.s_smc*, i32, i32) #1

declare dso_local i32 @rtm_set_timer(%struct.s_smc*) #1

declare dso_local i32 @smt_set_mac_opvalues(%struct.s_smc*) #1

declare dso_local i32 @RS_SET(%struct.s_smc*, i32) #1

declare dso_local i32 @smt_action(%struct.s_smc*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
