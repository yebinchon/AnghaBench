; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_wext.c_orinoco_ioctl_setiwencode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_wext.c_orinoco_ioctl_setiwencode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i64, i64 }
%struct.orinoco_private = type { i32, i32, i32, %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@LARGE_KEY_SIZE = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@SMALL_KEY_SIZE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@ORINOCO_ALG_TKIP = common dso_local global i64 0, align 8
@ORINOCO_MAX_KEYS = common dso_local global i32 0, align 4
@ORINOCO_ALG_WEP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@ORINOCO_ALG_NONE = common dso_local global i32 0, align 4
@IW_ENCODE_OPEN = common dso_local global i32 0, align 4
@IW_ENCODE_RESTRICTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @orinoco_ioctl_setiwencode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_ioctl_setiwencode(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.orinoco_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call %struct.orinoco_private* @ndev_priv(%struct.net_device* %17)
  store %struct.orinoco_private* %18, %struct.orinoco_private** %10, align 8
  %19 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %20 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %23 = and i32 %21, %22
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %11, align 4
  %25 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %26 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %12, align 4
  %28 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %29 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %32 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* @EINPROGRESS, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %15, align 4
  %36 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %37 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %4
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %231

43:                                               ; preds = %4
  %44 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %45 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %43
  %49 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %50 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @LARGE_KEY_SIZE, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @E2BIG, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %231

57:                                               ; preds = %48
  %58 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %59 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SMALL_KEY_SIZE, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %65 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @E2BIG, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %231

71:                                               ; preds = %63, %57
  br label %72

72:                                               ; preds = %71, %43
  %73 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %74 = call i64 @orinoco_lock(%struct.orinoco_private* %73, i64* %16)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* @EBUSY, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %231

79:                                               ; preds = %72
  %80 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %81 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %79
  %85 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %86 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* @ORINOCO_ALG_TKIP, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @orinoco_clear_tkip_key(%struct.orinoco_private* %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %84, %79
  %96 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %97 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %95
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @ORINOCO_MAX_KEYS, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %103, %100
  %108 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %109 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %107, %103
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* @ORINOCO_ALG_WEP, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* @ORINOCO_ALG_WEP, align 4
  store i32 %117, i32* %13, align 4
  br label %118

118:                                              ; preds = %115, %111
  br label %154

119:                                              ; preds = %95
  %120 = load i32, i32* %11, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @ORINOCO_MAX_KEYS, align 4
  %125 = icmp sge i32 %123, %124
  br i1 %125, label %126, label %138

126:                                              ; preds = %122, %119
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, -1
  br i1 %128, label %134, label %129

129:                                              ; preds = %126
  %130 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %131 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129, %126
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %15, align 4
  br label %227

137:                                              ; preds = %129
  br label %153

138:                                              ; preds = %122
  %139 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %140 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %139, i32 0, i32 3
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %138
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %15, align 4
  br label %227

151:                                              ; preds = %138
  %152 = load i32, i32* %11, align 4
  store i32 %152, i32* %12, align 4
  br label %153

153:                                              ; preds = %151, %137
  br label %154

154:                                              ; preds = %153, %118
  %155 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %156 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = load i32, i32* @ORINOCO_ALG_NONE, align 4
  store i32 %162, i32* %13, align 4
  br label %163

163:                                              ; preds = %161, %154
  %164 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %165 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %163
  store i32 0, i32* %14, align 4
  br label %171

171:                                              ; preds = %170, %163
  %172 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %173 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  store i32 1, i32* %14, align 4
  br label %179

179:                                              ; preds = %178, %171
  %180 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %181 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %198

184:                                              ; preds = %179
  %185 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %186 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = icmp sgt i64 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %184
  %190 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* @ORINOCO_ALG_WEP, align 4
  %193 = load i8*, i8** %9, align 8
  %194 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %195 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @orinoco_set_key(%struct.orinoco_private* %190, i32 %191, i32 %192, i8* %193, i64 %196, i32* null, i32 0)
  store i32 %197, i32* %15, align 4
  br label %198

198:                                              ; preds = %189, %184, %179
  %199 = load i32, i32* %12, align 4
  %200 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %201 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 8
  %202 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %203 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %13, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %220

207:                                              ; preds = %198
  %208 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %209 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %14, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %207
  %214 = load %struct.net_device*, %struct.net_device** %6, align 8
  %215 = call i64 @netif_carrier_ok(%struct.net_device* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %213
  %218 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %219 = call i32 @__orinoco_hw_setup_wepkeys(%struct.orinoco_private* %218)
  store i32 %219, i32* %15, align 4
  br label %227

220:                                              ; preds = %213, %207, %198
  %221 = load i32, i32* %13, align 4
  %222 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %223 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 4
  %224 = load i32, i32* %14, align 4
  %225 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %226 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %225, i32 0, i32 2
  store i32 %224, i32* %226, align 8
  br label %227

227:                                              ; preds = %220, %217, %148, %134
  %228 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %229 = call i32 @orinoco_unlock(%struct.orinoco_private* %228, i64* %16)
  %230 = load i32, i32* %15, align 4
  store i32 %230, i32* %5, align 4
  br label %231

231:                                              ; preds = %227, %76, %68, %54, %40
  %232 = load i32, i32* %5, align 4
  ret i32 %232
}

declare dso_local %struct.orinoco_private* @ndev_priv(%struct.net_device*) #1

declare dso_local i64 @orinoco_lock(%struct.orinoco_private*, i64*) #1

declare dso_local i32 @orinoco_clear_tkip_key(%struct.orinoco_private*, i32) #1

declare dso_local i32 @orinoco_set_key(%struct.orinoco_private*, i32, i32, i8*, i64, i32*, i32) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @__orinoco_hw_setup_wepkeys(%struct.orinoco_private*) #1

declare dso_local i32 @orinoco_unlock(%struct.orinoco_private*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
