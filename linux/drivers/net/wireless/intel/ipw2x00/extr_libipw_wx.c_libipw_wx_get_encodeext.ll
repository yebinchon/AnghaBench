; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_wx.c_libipw_wx_get_encodeext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_wx.c_libipw_wx_get_encodeext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_device = type { i64, %struct.TYPE_2__, %struct.libipw_security }
%struct.TYPE_2__ = type { i32 }
%struct.libipw_security = type { i64*, i32*, i64*, i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32, i32 }
%struct.iw_encode_ext = type { i32, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@WEP_KEYS = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_GROUP_KEY = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_WEP = common dso_local global i64 0, align 8
@IW_MODE_INFRA = common dso_local global i64 0, align 8
@IW_ENCODE_ALG_NONE = common dso_local global i64 0, align 8
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@SEC_ALG_WEP = common dso_local global i64 0, align 8
@SEC_ALG_TKIP = common dso_local global i64 0, align 8
@IW_ENCODE_ALG_TKIP = common dso_local global i64 0, align 8
@SEC_ALG_CCMP = common dso_local global i64 0, align 8
@IW_ENCODE_ALG_CCMP = common dso_local global i64 0, align 8
@IW_ENCODE_ENABLED = common dso_local global i32 0, align 4
@IW_ENCODE_EXT_TX_SEQ_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libipw_wx_get_encodeext(%struct.libipw_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.libipw_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iw_point*, align 8
  %11 = alloca %struct.iw_encode_ext*, align 8
  %12 = alloca %struct.libipw_security*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.libipw_device* %0, %struct.libipw_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %16 = bitcast %union.iwreq_data* %15 to %struct.iw_point*
  store %struct.iw_point* %16, %struct.iw_point** %10, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %18, %struct.iw_encode_ext** %11, align 8
  %19 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %20 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %19, i32 0, i32 2
  store %struct.libipw_security* %20, %struct.libipw_security** %12, align 8
  %21 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %22 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = sub i64 %24, 32
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %206

32:                                               ; preds = %4
  %33 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %34 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %32
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @WEP_KEYS, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %40
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %206

50:                                               ; preds = %43
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %13, align 4
  br label %58

53:                                               ; preds = %32
  %54 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %55 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %53, %50
  %59 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %60 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IW_ENCODE_EXT_GROUP_KEY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %84, label %65

65:                                               ; preds = %58
  %66 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %67 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @IW_ENCODE_ALG_WEP, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %65
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = load %struct.libipw_device*, %struct.libipw_device** %6, align 8
  %76 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @IW_MODE_INFRA, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74, %71
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %206

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %65, %58
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  %87 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %88 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %90 = call i32 @memset(%struct.iw_encode_ext* %89, i32 0, i32 32)
  %91 = load %struct.libipw_security*, %struct.libipw_security** %12, align 8
  %92 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %84
  %96 = load i64, i64* @IW_ENCODE_ALG_NONE, align 8
  %97 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %98 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %100 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %99, i32 0, i32 2
  store i64 0, i64* %100, align 8
  %101 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %102 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %103 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %205

106:                                              ; preds = %84
  %107 = load %struct.libipw_security*, %struct.libipw_security** %12, align 8
  %108 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @SEC_ALG_WEP, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %106
  %117 = load i64, i64* @IW_ENCODE_ALG_WEP, align 8
  %118 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %119 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  br label %153

120:                                              ; preds = %106
  %121 = load %struct.libipw_security*, %struct.libipw_security** %12, align 8
  %122 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @SEC_ALG_TKIP, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %120
  %131 = load i64, i64* @IW_ENCODE_ALG_TKIP, align 8
  %132 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %133 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  br label %152

134:                                              ; preds = %120
  %135 = load %struct.libipw_security*, %struct.libipw_security** %12, align 8
  %136 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @SEC_ALG_CCMP, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %134
  %145 = load i64, i64* @IW_ENCODE_ALG_CCMP, align 8
  %146 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %147 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %146, i32 0, i32 1
  store i64 %145, i64* %147, align 8
  br label %151

148:                                              ; preds = %134
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %5, align 4
  br label %206

151:                                              ; preds = %144
  br label %152

152:                                              ; preds = %151, %130
  br label %153

153:                                              ; preds = %152, %116
  %154 = load %struct.libipw_security*, %struct.libipw_security** %12, align 8
  %155 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %154, i32 0, i32 2
  %156 = load i64*, i64** %155, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %162 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %161, i32 0, i32 2
  store i64 %160, i64* %162, align 8
  %163 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %164 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.libipw_security*, %struct.libipw_security** %12, align 8
  %167 = getelementptr inbounds %struct.libipw_security, %struct.libipw_security* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %174 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @memcpy(i32 %165, i32 %172, i64 %175)
  %177 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %178 = load %struct.iw_point*, %struct.iw_point** %10, align 8
  %179 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 4
  %182 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %183 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %204

186:                                              ; preds = %153
  %187 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %188 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @IW_ENCODE_ALG_TKIP, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %198, label %192

192:                                              ; preds = %186
  %193 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %194 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @IW_ENCODE_ALG_CCMP, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %192, %186
  %199 = load i32, i32* @IW_ENCODE_EXT_TX_SEQ_VALID, align 4
  %200 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %11, align 8
  %201 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 8
  br label %204

204:                                              ; preds = %198, %192, %153
  br label %205

205:                                              ; preds = %204, %95
  store i32 0, i32* %5, align 4
  br label %206

206:                                              ; preds = %205, %148, %80, %47, %29
  %207 = load i32, i32* %5, align 4
  ret i32 %207
}

declare dso_local i32 @memset(%struct.iw_encode_ext*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
