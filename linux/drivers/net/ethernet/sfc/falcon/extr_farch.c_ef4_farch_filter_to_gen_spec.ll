; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_filter_to_gen_spec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_filter_to_gen_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_filter_spec = type { i32, i32, i32*, i8*, i8*, i8*, i32, i8**, i8**, i8*, i32, i32 }
%struct.ef4_farch_filter_spec = type { i32, i32, i32*, i32, i32 }

@EF4_FILTER_MATCH_ETHER_TYPE = common dso_local global i32 0, align 4
@EF4_FILTER_MATCH_IP_PROTO = common dso_local global i32 0, align 4
@EF4_FILTER_MATCH_LOC_HOST = common dso_local global i32 0, align 4
@EF4_FILTER_MATCH_LOC_PORT = common dso_local global i32 0, align 4
@EF4_FILTER_MATCH_REM_HOST = common dso_local global i32 0, align 4
@EF4_FILTER_MATCH_REM_PORT = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@EF4_FILTER_FLAG_TX = common dso_local global i32 0, align 4
@EF4_FILTER_MATCH_LOC_MAC = common dso_local global i32 0, align 4
@EF4_FILTER_MATCH_OUTER_VID = common dso_local global i32 0, align 4
@EF4_FILTER_MATCH_LOC_MAC_IG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_filter_spec*, %struct.ef4_farch_filter_spec*)* @ef4_farch_filter_to_gen_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ef4_farch_filter_to_gen_spec(%struct.ef4_filter_spec* %0, %struct.ef4_farch_filter_spec* %1) #0 {
  %3 = alloca %struct.ef4_filter_spec*, align 8
  %4 = alloca %struct.ef4_farch_filter_spec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.ef4_filter_spec* %0, %struct.ef4_filter_spec** %3, align 8
  store %struct.ef4_farch_filter_spec* %1, %struct.ef4_farch_filter_spec** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %11 = call i32 @memset(%struct.ef4_filter_spec* %10, i32 0, i32 80)
  %12 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %13 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %16 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %15, i32 0, i32 11
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %18 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %21 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %23 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %26 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %25, i32 0, i32 10
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %28 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %265 [
    i32 132, label %30
    i32 129, label %30
    i32 131, label %31
    i32 128, label %31
    i32 135, label %172
    i32 134, label %173
    i32 130, label %252
    i32 133, label %252
  ]

30:                                               ; preds = %2, %2
  store i32 1, i32* %5, align 4
  br label %31

31:                                               ; preds = %2, %2, %30
  %32 = load i32, i32* @EF4_FILTER_MATCH_ETHER_TYPE, align 4
  %33 = load i32, i32* @EF4_FILTER_MATCH_IP_PROTO, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @EF4_FILTER_MATCH_LOC_HOST, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @EF4_FILTER_MATCH_LOC_PORT, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %40 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %31
  %44 = load i32, i32* @EF4_FILTER_MATCH_REM_HOST, align 4
  %45 = load i32, i32* @EF4_FILTER_MATCH_REM_PORT, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %48 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %43, %31
  %52 = load i32, i32* @ETH_P_IP, align 4
  %53 = call i8* @htons(i32 %52)
  %54 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %55 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %54, i32 0, i32 9
  store i8* %53, i8** %55, align 8
  %56 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %57 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 132
  br i1 %59, label %65, label %60

60:                                               ; preds = %51
  %61 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %62 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 131
  br i1 %64, label %65, label %67

65:                                               ; preds = %60, %51
  %66 = load i32, i32* @IPPROTO_TCP, align 4
  br label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @IPPROTO_UDP, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %72 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 8
  %73 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %74 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 16
  %79 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %80 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 16
  %85 = or i32 %78, %84
  %86 = call i8* @htonl(i32 %85)
  store i8* %86, i8** %6, align 8
  %87 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %88 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @htons(i32 %91)
  store i8* %92, i8** %8, align 8
  %93 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %94 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @htonl(i32 %97)
  store i8* %98, i8** %7, align 8
  %99 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %100 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 16
  %105 = call i8* @htons(i32 %104)
  store i8* %105, i8** %9, align 8
  %106 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %107 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @EF4_FILTER_FLAG_TX, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %69
  %113 = load i8*, i8** %6, align 8
  %114 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %115 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %114, i32 0, i32 8
  %116 = load i8**, i8*** %115, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 0
  store i8* %113, i8** %117, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %120 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %119, i32 0, i32 7
  %121 = load i8**, i8*** %120, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 0
  store i8* %118, i8** %122, align 8
  br label %134

123:                                              ; preds = %69
  %124 = load i8*, i8** %7, align 8
  %125 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %126 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %125, i32 0, i32 8
  %127 = load i8**, i8*** %126, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 0
  store i8* %124, i8** %128, align 8
  %129 = load i8*, i8** %6, align 8
  %130 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %131 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %130, i32 0, i32 7
  %132 = load i8**, i8*** %131, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 0
  store i8* %129, i8** %133, align 8
  br label %134

134:                                              ; preds = %123, %112
  %135 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %136 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @EF4_FILTER_FLAG_TX, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = load i32, i32* %5, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %134
  %147 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %148 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @IPPROTO_UDP, align 4
  %151 = icmp eq i32 %149, %150
  br label %152

152:                                              ; preds = %146, %134
  %153 = phi i1 [ false, %134 ], [ %151, %146 ]
  %154 = zext i1 %153 to i32
  %155 = xor i32 %143, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %152
  %158 = load i8*, i8** %8, align 8
  %159 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %160 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %159, i32 0, i32 5
  store i8* %158, i8** %160, align 8
  %161 = load i8*, i8** %9, align 8
  %162 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %163 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %162, i32 0, i32 4
  store i8* %161, i8** %163, align 8
  br label %171

164:                                              ; preds = %152
  %165 = load i8*, i8** %9, align 8
  %166 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %167 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %166, i32 0, i32 5
  store i8* %165, i8** %167, align 8
  %168 = load i8*, i8** %8, align 8
  %169 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %170 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %169, i32 0, i32 4
  store i8* %168, i8** %170, align 8
  br label %171

171:                                              ; preds = %164, %157
  br label %267

172:                                              ; preds = %2
  store i32 1, i32* %5, align 4
  br label %173

173:                                              ; preds = %2, %172
  %174 = load i32, i32* @EF4_FILTER_MATCH_LOC_MAC, align 4
  %175 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %176 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* %5, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %173
  %180 = load i32, i32* @EF4_FILTER_MATCH_OUTER_VID, align 4
  %181 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %182 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 4
  br label %185

185:                                              ; preds = %179, %173
  %186 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %187 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 2
  %190 = load i32, i32* %189, align 4
  %191 = ashr i32 %190, 8
  %192 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %193 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  store i32 %191, i32* %195, align 4
  %196 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %197 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 2
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %202 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  store i32 %200, i32* %204, align 4
  %205 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %206 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %205, i32 0, i32 2
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 1
  %209 = load i32, i32* %208, align 4
  %210 = ashr i32 %209, 24
  %211 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %212 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 2
  store i32 %210, i32* %214, align 4
  %215 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %216 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %215, i32 0, i32 2
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 1
  %219 = load i32, i32* %218, align 4
  %220 = ashr i32 %219, 16
  %221 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %222 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %221, i32 0, i32 2
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 3
  store i32 %220, i32* %224, align 4
  %225 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %226 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 1
  %229 = load i32, i32* %228, align 4
  %230 = ashr i32 %229, 8
  %231 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %232 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %231, i32 0, i32 2
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 4
  store i32 %230, i32* %234, align 4
  %235 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %236 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %235, i32 0, i32 2
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %241 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %240, i32 0, i32 2
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 5
  store i32 %239, i32* %243, align 4
  %244 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %245 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %244, i32 0, i32 2
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 0
  %248 = load i32, i32* %247, align 4
  %249 = call i8* @htons(i32 %248)
  %250 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %251 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %250, i32 0, i32 3
  store i8* %249, i8** %251, align 8
  br label %267

252:                                              ; preds = %2, %2
  %253 = load i32, i32* @EF4_FILTER_MATCH_LOC_MAC_IG, align 4
  %254 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %255 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %254, i32 0, i32 1
  store i32 %253, i32* %255, align 4
  %256 = load %struct.ef4_farch_filter_spec*, %struct.ef4_farch_filter_spec** %4, align 8
  %257 = getelementptr inbounds %struct.ef4_farch_filter_spec, %struct.ef4_farch_filter_spec* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = icmp eq i32 %258, 133
  %260 = zext i1 %259 to i32
  %261 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %262 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %261, i32 0, i32 2
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 0
  store i32 %260, i32* %264, align 4
  br label %267

265:                                              ; preds = %2
  %266 = call i32 @WARN_ON(i32 1)
  br label %267

267:                                              ; preds = %265, %252, %185, %171
  ret void
}

declare dso_local i32 @memset(%struct.ef4_filter_spec*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
