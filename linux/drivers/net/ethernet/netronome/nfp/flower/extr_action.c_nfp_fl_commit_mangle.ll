; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_commit_mangle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_commit_mangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_cls_offload = type { i32 }
%struct.nfp_flower_pedit_acts = type { %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.flow_rule = type { i32 }
%struct.flow_match_basic = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@FLOW_DISSECTOR_KEY_BASIC = common dso_local global i32 0, align 4
@TCA_CSUM_UPDATE_FLAG_IPV4HDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_cls_offload*, i8*, i32*, %struct.nfp_flower_pedit_acts*, i32*)* @nfp_fl_commit_mangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_fl_commit_mangle(%struct.flow_cls_offload* %0, i8* %1, i32* %2, %struct.nfp_flower_pedit_acts* %3, i32* %4) #0 {
  %6 = alloca %struct.flow_cls_offload*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.nfp_flower_pedit_acts*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.flow_rule*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.flow_match_basic, align 8
  store %struct.flow_cls_offload* %0, %struct.flow_cls_offload** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.nfp_flower_pedit_acts* %3, %struct.nfp_flower_pedit_acts** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %16 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %15)
  store %struct.flow_rule* %16, %struct.flow_rule** %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.flow_rule*, %struct.flow_rule** %11, align 8
  %18 = load i32, i32* @FLOW_DISSECTOR_KEY_BASIC, align 4
  %19 = call i64 @flow_rule_match_key(%struct.flow_rule* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %5
  %22 = load %struct.flow_rule*, %struct.flow_rule** %11, align 8
  %23 = call i32 @flow_rule_match_basic(%struct.flow_rule* %22, %struct.flow_match_basic* %14)
  %24 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %14, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %21, %5
  %29 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %9, align 8
  %30 = getelementptr inbounds %struct.nfp_flower_pedit_acts, %struct.nfp_flower_pedit_acts* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %28
  store i64 8, i64* %12, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %9, align 8
  %38 = getelementptr inbounds %struct.nfp_flower_pedit_acts, %struct.nfp_flower_pedit_acts* %37, i32 0, i32 6
  %39 = load i64, i64* %12, align 8
  %40 = call i32 @memcpy(i8* %36, %struct.TYPE_6__* %38, i64 %39)
  %41 = load i64, i64* %12, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, %41
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  br label %47

47:                                               ; preds = %35, %28
  %48 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %9, align 8
  %49 = getelementptr inbounds %struct.nfp_flower_pedit_acts, %struct.nfp_flower_pedit_acts* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %47
  %55 = load i64, i64* %12, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 %55
  store i8* %57, i8** %7, align 8
  store i64 8, i64* %12, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %9, align 8
  %60 = getelementptr inbounds %struct.nfp_flower_pedit_acts, %struct.nfp_flower_pedit_acts* %59, i32 0, i32 5
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @memcpy(i8* %58, %struct.TYPE_6__* %60, i64 %61)
  %63 = load i64, i64* %12, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 %66, %63
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 4
  %69 = load i32, i32* @TCA_CSUM_UPDATE_FLAG_IPV4HDR, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @nfp_fl_csum_l4_to_flag(i32 %70)
  %72 = or i32 %69, %71
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %54, %47
  %77 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %9, align 8
  %78 = getelementptr inbounds %struct.nfp_flower_pedit_acts, %struct.nfp_flower_pedit_acts* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %76
  %84 = load i64, i64* %12, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 %84
  store i8* %86, i8** %7, align 8
  store i64 8, i64* %12, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %9, align 8
  %89 = getelementptr inbounds %struct.nfp_flower_pedit_acts, %struct.nfp_flower_pedit_acts* %88, i32 0, i32 4
  %90 = load i64, i64* %12, align 8
  %91 = call i32 @memcpy(i8* %87, %struct.TYPE_6__* %89, i64 %90)
  %92 = load i64, i64* %12, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = add i64 %95, %92
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %93, align 4
  %98 = load i32, i32* @TCA_CSUM_UPDATE_FLAG_IPV4HDR, align 4
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @nfp_fl_csum_l4_to_flag(i32 %99)
  %101 = or i32 %98, %100
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %101
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %83, %76
  %106 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %9, align 8
  %107 = getelementptr inbounds %struct.nfp_flower_pedit_acts, %struct.nfp_flower_pedit_acts* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %132

112:                                              ; preds = %105
  %113 = load i64, i64* %12, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 %113
  store i8* %115, i8** %7, align 8
  store i64 8, i64* %12, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %9, align 8
  %118 = getelementptr inbounds %struct.nfp_flower_pedit_acts, %struct.nfp_flower_pedit_acts* %117, i32 0, i32 3
  %119 = load i64, i64* %12, align 8
  %120 = call i32 @memcpy(i8* %116, %struct.TYPE_6__* %118, i64 %119)
  %121 = load i64, i64* %12, align 8
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = add i64 %124, %121
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %122, align 4
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @nfp_fl_csum_l4_to_flag(i32 %127)
  %129 = load i32*, i32** %10, align 8
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %128
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %112, %105
  %133 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %9, align 8
  %134 = getelementptr inbounds %struct.nfp_flower_pedit_acts, %struct.nfp_flower_pedit_acts* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %178

139:                                              ; preds = %132
  %140 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %9, align 8
  %141 = getelementptr inbounds %struct.nfp_flower_pedit_acts, %struct.nfp_flower_pedit_acts* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %178

146:                                              ; preds = %139
  %147 = load i64, i64* %12, align 8
  %148 = load i8*, i8** %7, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 %147
  store i8* %149, i8** %7, align 8
  store i64 8, i64* %12, align 8
  %150 = load i8*, i8** %7, align 8
  %151 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %9, align 8
  %152 = getelementptr inbounds %struct.nfp_flower_pedit_acts, %struct.nfp_flower_pedit_acts* %151, i32 0, i32 1
  %153 = load i64, i64* %12, align 8
  %154 = call i32 @memcpy(i8* %150, %struct.TYPE_6__* %152, i64 %153)
  %155 = load i64, i64* %12, align 8
  %156 = load i32*, i32** %8, align 8
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = add i64 %158, %155
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %156, align 4
  store i64 8, i64* %12, align 8
  %161 = load i8*, i8** %7, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 8
  %163 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %9, align 8
  %164 = getelementptr inbounds %struct.nfp_flower_pedit_acts, %struct.nfp_flower_pedit_acts* %163, i32 0, i32 2
  %165 = load i64, i64* %12, align 8
  %166 = call i32 @memcpy(i8* %162, %struct.TYPE_6__* %164, i64 %165)
  %167 = load i64, i64* %12, align 8
  %168 = load i32*, i32** %8, align 8
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = add i64 %170, %167
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %168, align 4
  %173 = load i32, i32* %13, align 4
  %174 = call i32 @nfp_fl_csum_l4_to_flag(i32 %173)
  %175 = load i32*, i32** %10, align 8
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %174
  store i32 %177, i32* %175, align 4
  br label %234

178:                                              ; preds = %139, %132
  %179 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %9, align 8
  %180 = getelementptr inbounds %struct.nfp_flower_pedit_acts, %struct.nfp_flower_pedit_acts* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %205

185:                                              ; preds = %178
  %186 = load i64, i64* %12, align 8
  %187 = load i8*, i8** %7, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 %186
  store i8* %188, i8** %7, align 8
  store i64 8, i64* %12, align 8
  %189 = load i8*, i8** %7, align 8
  %190 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %9, align 8
  %191 = getelementptr inbounds %struct.nfp_flower_pedit_acts, %struct.nfp_flower_pedit_acts* %190, i32 0, i32 2
  %192 = load i64, i64* %12, align 8
  %193 = call i32 @memcpy(i8* %189, %struct.TYPE_6__* %191, i64 %192)
  %194 = load i64, i64* %12, align 8
  %195 = load i32*, i32** %8, align 8
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = add i64 %197, %194
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %195, align 4
  %200 = load i32, i32* %13, align 4
  %201 = call i32 @nfp_fl_csum_l4_to_flag(i32 %200)
  %202 = load i32*, i32** %10, align 8
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %201
  store i32 %204, i32* %202, align 4
  br label %233

205:                                              ; preds = %178
  %206 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %9, align 8
  %207 = getelementptr inbounds %struct.nfp_flower_pedit_acts, %struct.nfp_flower_pedit_acts* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %232

212:                                              ; preds = %205
  %213 = load i64, i64* %12, align 8
  %214 = load i8*, i8** %7, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 %213
  store i8* %215, i8** %7, align 8
  store i64 8, i64* %12, align 8
  %216 = load i8*, i8** %7, align 8
  %217 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %9, align 8
  %218 = getelementptr inbounds %struct.nfp_flower_pedit_acts, %struct.nfp_flower_pedit_acts* %217, i32 0, i32 1
  %219 = load i64, i64* %12, align 8
  %220 = call i32 @memcpy(i8* %216, %struct.TYPE_6__* %218, i64 %219)
  %221 = load i64, i64* %12, align 8
  %222 = load i32*, i32** %8, align 8
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = add i64 %224, %221
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %222, align 4
  %227 = load i32, i32* %13, align 4
  %228 = call i32 @nfp_fl_csum_l4_to_flag(i32 %227)
  %229 = load i32*, i32** %10, align 8
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %230, %228
  store i32 %231, i32* %229, align 4
  br label %232

232:                                              ; preds = %212, %205
  br label %233

233:                                              ; preds = %232, %185
  br label %234

234:                                              ; preds = %233, %146
  %235 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %9, align 8
  %236 = getelementptr inbounds %struct.nfp_flower_pedit_acts, %struct.nfp_flower_pedit_acts* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %261

241:                                              ; preds = %234
  %242 = load i64, i64* %12, align 8
  %243 = load i8*, i8** %7, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 %242
  store i8* %244, i8** %7, align 8
  store i64 8, i64* %12, align 8
  %245 = load i8*, i8** %7, align 8
  %246 = load %struct.nfp_flower_pedit_acts*, %struct.nfp_flower_pedit_acts** %9, align 8
  %247 = getelementptr inbounds %struct.nfp_flower_pedit_acts, %struct.nfp_flower_pedit_acts* %246, i32 0, i32 0
  %248 = load i64, i64* %12, align 8
  %249 = call i32 @memcpy(i8* %245, %struct.TYPE_6__* %247, i64 %248)
  %250 = load i64, i64* %12, align 8
  %251 = load i32*, i32** %8, align 8
  %252 = load i32, i32* %251, align 4
  %253 = sext i32 %252 to i64
  %254 = add i64 %253, %250
  %255 = trunc i64 %254 to i32
  store i32 %255, i32* %251, align 4
  %256 = load i32, i32* %13, align 4
  %257 = call i32 @nfp_fl_csum_l4_to_flag(i32 %256)
  %258 = load i32*, i32** %10, align 8
  %259 = load i32, i32* %258, align 4
  %260 = or i32 %259, %257
  store i32 %260, i32* %258, align 4
  br label %261

261:                                              ; preds = %241, %234
  ret i32 0
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i64 @flow_rule_match_key(%struct.flow_rule*, i32) #1

declare dso_local i32 @flow_rule_match_basic(%struct.flow_rule*, %struct.flow_match_basic*) #1

declare dso_local i32 @memcpy(i8*, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @nfp_fl_csum_l4_to_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
