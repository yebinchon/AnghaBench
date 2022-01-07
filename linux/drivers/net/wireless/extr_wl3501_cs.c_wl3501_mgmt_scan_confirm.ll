; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_wl3501_cs.c_wl3501_mgmt_scan_confirm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_wl3501_cs.c_wl3501_mgmt_scan_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl3501_card = type { i64, i64, i64, i64, i32, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.wl3501_scan_confirm = type { i64, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@WL3501_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@WL3501_MGMT_CAPABILITY_ESS = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@WL3501_MGMT_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@IW_MODE_AUTO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"ANY\00", align 1
@WL3501_STATUS_TIMEOUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@WL3501_MAX_ADHOC_TRIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl3501_card*, i64)* @wl3501_mgmt_scan_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl3501_mgmt_scan_confirm(%struct.wl3501_card* %0, i64 %1) #0 {
  %3 = alloca %struct.wl3501_card*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl3501_scan_confirm, align 8
  store %struct.wl3501_card* %0, %struct.wl3501_card** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @wl3501_get_from_wla(%struct.wl3501_card* %9, i64 %10, %struct.wl3501_scan_confirm* %7, i32 40)
  %12 = getelementptr inbounds %struct.wl3501_scan_confirm, %struct.wl3501_scan_confirm* %7, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @WL3501_STATUS_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %155

16:                                               ; preds = %2
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %19 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IW_MODE_INFRA, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.wl3501_scan_confirm, %struct.wl3501_scan_confirm* %7, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @WL3501_MGMT_CAPABILITY_ESS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %23, %16
  %30 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %31 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IW_MODE_ADHOC, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.wl3501_scan_confirm, %struct.wl3501_scan_confirm* %7, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @WL3501_MGMT_CAPABILITY_IBSS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %35, %29
  %42 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %43 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IW_MODE_AUTO, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %154

47:                                               ; preds = %41, %35, %23
  %48 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %49 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  store i32 1, i32* %6, align 4
  br label %102

55:                                               ; preds = %47
  %56 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %57 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %56, i32 0, i32 6
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %64 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @memcmp(i32 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %62
  store i32 1, i32* %6, align 4
  br label %101

70:                                               ; preds = %62, %55
  %71 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %72 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.wl3501_scan_confirm, %struct.wl3501_scan_confirm* %7, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %75, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  store i32 0, i32* %6, align 4
  br label %100

82:                                               ; preds = %70
  %83 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %84 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.wl3501_scan_confirm, %struct.wl3501_scan_confirm* %7, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %91 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @memcmp(i32 %86, i8* %89, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %82
  store i32 0, i32* %6, align 4
  br label %99

98:                                               ; preds = %82
  store i32 1, i32* %6, align 4
  br label %99

99:                                               ; preds = %98, %97
  br label %100

100:                                              ; preds = %99, %81
  br label %101

101:                                              ; preds = %100, %69
  br label %102

102:                                              ; preds = %101, %54
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %130

105:                                              ; preds = %102
  store i64 0, i64* %5, align 8
  br label %106

106:                                              ; preds = %126, %105
  %107 = load i64, i64* %5, align 8
  %108 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %109 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ult i64 %107, %110
  br i1 %111, label %112, label %129

112:                                              ; preds = %106
  %113 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %114 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %113, i32 0, i32 5
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = load i64, i64* %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.wl3501_scan_confirm, %struct.wl3501_scan_confirm* %7, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @ether_addr_equal_unaligned(i32 %119, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %112
  store i32 0, i32* %6, align 4
  br label %129

125:                                              ; preds = %112
  br label %126

126:                                              ; preds = %125
  %127 = load i64, i64* %5, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %5, align 8
  br label %106

129:                                              ; preds = %124, %106
  br label %130

130:                                              ; preds = %129, %102
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %153

133:                                              ; preds = %130
  %134 = load i64, i64* %5, align 8
  %135 = icmp ult i64 %134, 20
  br i1 %135, label %136, label %153

136:                                              ; preds = %133
  %137 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %138 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %137, i32 0, i32 5
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = load i64, i64* %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.wl3501_scan_confirm, %struct.wl3501_scan_confirm* %7, i32 0, i32 3
  %144 = call i32 @memcpy(i32* %142, i32* %143, i32 73)
  %145 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %146 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %146, align 8
  %149 = getelementptr inbounds %struct.wl3501_scan_confirm, %struct.wl3501_scan_confirm* %7, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %152 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %136, %133, %130
  br label %154

154:                                              ; preds = %153, %41
  br label %223

155:                                              ; preds = %2
  %156 = getelementptr inbounds %struct.wl3501_scan_confirm, %struct.wl3501_scan_confirm* %7, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @WL3501_STATUS_TIMEOUT, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %222

160:                                              ; preds = %155
  %161 = call i32 @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %162 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %163 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %162, i32 0, i32 2
  store i64 0, i64* %163, align 8
  %164 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %165 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %5, align 8
  br label %167

167:                                              ; preds = %180, %160
  %168 = load i64, i64* %5, align 8
  %169 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %170 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp ult i64 %168, %171
  br i1 %172, label %173, label %183

173:                                              ; preds = %167
  %174 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %175 = load i64, i64* %5, align 8
  %176 = call i32 @wl3501_mgmt_join(%struct.wl3501_card* %174, i64 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %173
  br label %183

179:                                              ; preds = %173
  br label %180

180:                                              ; preds = %179
  %181 = load i64, i64* %5, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %5, align 8
  br label %167

183:                                              ; preds = %178, %167
  %184 = load i64, i64* %5, align 8
  %185 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %186 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %185, i32 0, i32 2
  store i64 %184, i64* %186, align 8
  %187 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %188 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %191 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp eq i64 %189, %192
  br i1 %193, label %194, label %221

194:                                              ; preds = %183
  %195 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %196 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @IW_MODE_INFRA, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %194
  %201 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %202 = call i32 @wl3501_mgmt_scan(%struct.wl3501_card* %201, i32 100)
  br label %220

203:                                              ; preds = %194
  %204 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %205 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = add nsw i64 %206, 1
  store i64 %207, i64* %205, align 8
  %208 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %209 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @WL3501_MAX_ADHOC_TRIES, align 8
  %212 = icmp sgt i64 %210, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %203
  %214 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %215 = call i32 @wl3501_mgmt_start(%struct.wl3501_card* %214)
  br label %219

216:                                              ; preds = %203
  %217 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %218 = call i32 @wl3501_mgmt_scan(%struct.wl3501_card* %217, i32 100)
  br label %219

219:                                              ; preds = %216, %213
  br label %220

220:                                              ; preds = %219, %200
  br label %221

221:                                              ; preds = %220, %183
  br label %222

222:                                              ; preds = %221, %155
  br label %223

223:                                              ; preds = %222, %154
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @wl3501_get_from_wla(%struct.wl3501_card*, i64, %struct.wl3501_scan_confirm*, i32) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i64 @ether_addr_equal_unaligned(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @wl3501_mgmt_join(%struct.wl3501_card*, i64) #1

declare dso_local i32 @wl3501_mgmt_scan(%struct.wl3501_card*, i32) #1

declare dso_local i32 @wl3501_mgmt_start(%struct.wl3501_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
