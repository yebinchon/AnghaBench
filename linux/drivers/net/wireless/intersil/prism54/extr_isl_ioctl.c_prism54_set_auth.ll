; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_set_auth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_set_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_param }
%struct.iw_param = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%union.oid_res_t = type { i32 }

@PRV_STATE_INIT = common dso_local global i64 0, align 8
@DOT11_OID_AUTHENABLE = common dso_local global i32 0, align 4
@DOT11_OID_PRIVACYINVOKED = common dso_local global i32 0, align 4
@DOT11_OID_EXUNENCRYPTED = common dso_local global i32 0, align 4
@DOT11_OID_DOT1XENABLE = common dso_local global i32 0, align 4
@DOT11_OID_MLMEAUTOLEVEL = common dso_local global i32 0, align 4
@IW_AUTH_INDEX = common dso_local global i32 0, align 4
@DOT11_MLME_EXTENDED = common dso_local global i32 0, align 4
@DOT11_AUTH_OS = common dso_local global i32 0, align 4
@DOT11_MLME_AUTO = common dso_local global i32 0, align 4
@IW_AUTH_WPA_VERSION_DISABLED = common dso_local global i32 0, align 4
@IW_AUTH_WPA_VERSION_WPA = common dso_local global i32 0, align 4
@IW_AUTH_WPA_VERSION_WPA2 = common dso_local global i32 0, align 4
@IW_AUTH_ALG_SHARED_KEY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DOT11_AUTH_SK = common dso_local global i32 0, align 4
@IW_AUTH_ALG_OPEN_SYSTEM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @prism54_set_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism54_set_auth(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.iw_param*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %union.oid_res_t, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = call %struct.TYPE_6__* @netdev_priv(%struct.net_device* %21)
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %10, align 8
  %23 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %24 = bitcast %union.iwreq_data* %23 to %struct.iw_param*
  store %struct.iw_param* %24, %struct.iw_param** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %26 = call i64 @islpci_get_state(%struct.TYPE_6__* %25)
  %27 = load i64, i64* @PRV_STATE_INIT, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %196

30:                                               ; preds = %4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = call i32 @down_write(i32* %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %18, align 4
  store i32 %36, i32* %17, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = call i32 @up_write(i32* %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %41 = load i32, i32* @DOT11_OID_AUTHENABLE, align 4
  %42 = call i32 @mgt_get_request(%struct.TYPE_6__* %40, i32 %41, i32 0, i32* null, %union.oid_res_t* %20)
  store i32 %42, i32* %19, align 4
  %43 = bitcast %union.oid_res_t* %20 to i32*
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %13, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %46 = load i32, i32* @DOT11_OID_PRIVACYINVOKED, align 4
  %47 = call i32 @mgt_get_request(%struct.TYPE_6__* %45, i32 %46, i32 0, i32* null, %union.oid_res_t* %20)
  store i32 %47, i32* %19, align 4
  %48 = bitcast %union.oid_res_t* %20 to i32*
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %16, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = load i32, i32* @DOT11_OID_EXUNENCRYPTED, align 4
  %52 = call i32 @mgt_get_request(%struct.TYPE_6__* %50, i32 %51, i32 0, i32* null, %union.oid_res_t* %20)
  store i32 %52, i32* %19, align 4
  %53 = bitcast %union.oid_res_t* %20 to i32*
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %15, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = load i32, i32* @DOT11_OID_DOT1XENABLE, align 4
  %57 = call i32 @mgt_get_request(%struct.TYPE_6__* %55, i32 %56, i32 0, i32* null, %union.oid_res_t* %20)
  store i32 %57, i32* %19, align 4
  %58 = bitcast %union.oid_res_t* %20 to i32*
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %14, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %61 = load i32, i32* @DOT11_OID_MLMEAUTOLEVEL, align 4
  %62 = call i32 @mgt_get_request(%struct.TYPE_6__* %60, i32 %61, i32 0, i32* null, %union.oid_res_t* %20)
  store i32 %62, i32* %19, align 4
  %63 = bitcast %union.oid_res_t* %20 to i32*
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %19, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %30
  br label %194

68:                                               ; preds = %30
  %69 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %70 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IW_AUTH_INDEX, align 4
  %73 = and i32 %71, %72
  switch i32 %73, label %166 [
    i32 134, label %74
    i32 135, label %74
    i32 132, label %74
    i32 129, label %75
    i32 128, label %86
    i32 130, label %116
    i32 131, label %123
    i32 133, label %130
    i32 136, label %137
  ]

74:                                               ; preds = %68, %68, %68
  br label %169

75:                                               ; preds = %68
  %76 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %77 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  store i32 1, i32* %17, align 4
  store i32 1, i32* %16, align 4
  store i32 1, i32* %15, align 4
  store i32 1, i32* %14, align 4
  %81 = load i32, i32* @DOT11_MLME_EXTENDED, align 4
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* @DOT11_AUTH_OS, align 4
  store i32 %82, i32* %13, align 4
  br label %85

83:                                               ; preds = %75
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %84 = load i32, i32* @DOT11_MLME_AUTO, align 4
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %83, %80
  br label %169

86:                                               ; preds = %68
  %87 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %88 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @IW_AUTH_WPA_VERSION_DISABLED, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %94 = load i32, i32* @DOT11_MLME_AUTO, align 4
  store i32 %94, i32* %12, align 4
  br label %115

95:                                               ; preds = %86
  %96 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %97 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @IW_AUTH_WPA_VERSION_WPA, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  store i32 1, i32* %17, align 4
  br label %112

103:                                              ; preds = %95
  %104 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %105 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @IW_AUTH_WPA_VERSION_WPA2, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  store i32 2, i32* %17, align 4
  br label %111

111:                                              ; preds = %110, %103
  br label %112

112:                                              ; preds = %111, %102
  store i32 1, i32* %16, align 4
  store i32 1, i32* %15, align 4
  store i32 1, i32* %14, align 4
  %113 = load i32, i32* @DOT11_MLME_EXTENDED, align 4
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* @DOT11_AUTH_OS, align 4
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %112, %93
  br label %169

116:                                              ; preds = %68
  %117 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %118 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 0, i32 1
  store i32 %122, i32* %14, align 4
  br label %169

123:                                              ; preds = %68
  %124 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %125 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 1, i32 0
  store i32 %129, i32* %16, align 4
  br label %169

130:                                              ; preds = %68
  %131 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %132 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 1, i32 0
  store i32 %136, i32* %15, align 4
  br label %169

137:                                              ; preds = %68
  %138 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %139 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @IW_AUTH_ALG_SHARED_KEY, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %137
  %145 = load i32, i32* %17, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %19, align 4
  br label %194

150:                                              ; preds = %144
  %151 = load i32, i32* @DOT11_AUTH_SK, align 4
  store i32 %151, i32* %13, align 4
  br label %165

152:                                              ; preds = %137
  %153 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %154 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @IW_AUTH_ALG_OPEN_SYSTEM, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = load i32, i32* @DOT11_AUTH_OS, align 4
  store i32 %160, i32* %13, align 4
  br label %164

161:                                              ; preds = %152
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %19, align 4
  br label %194

164:                                              ; preds = %159
  br label %165

165:                                              ; preds = %164, %150
  br label %169

166:                                              ; preds = %68
  %167 = load i32, i32* @EOPNOTSUPP, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %5, align 4
  br label %196

169:                                              ; preds = %165, %130, %123, %116, %115, %85, %74
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  %172 = call i32 @down_write(i32* %171)
  %173 = load i32, i32* %17, align 4
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 4
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  %178 = call i32 @up_write(i32* %177)
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %180 = load i32, i32* @DOT11_OID_AUTHENABLE, align 4
  %181 = call i32 @mgt_set_request(%struct.TYPE_6__* %179, i32 %180, i32 0, i32* %13)
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %183 = load i32, i32* @DOT11_OID_PRIVACYINVOKED, align 4
  %184 = call i32 @mgt_set_request(%struct.TYPE_6__* %182, i32 %183, i32 0, i32* %16)
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %186 = load i32, i32* @DOT11_OID_EXUNENCRYPTED, align 4
  %187 = call i32 @mgt_set_request(%struct.TYPE_6__* %185, i32 %186, i32 0, i32* %15)
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %189 = load i32, i32* @DOT11_OID_DOT1XENABLE, align 4
  %190 = call i32 @mgt_set_request(%struct.TYPE_6__* %188, i32 %189, i32 0, i32* %14)
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %192 = load i32, i32* @DOT11_OID_MLMEAUTOLEVEL, align 4
  %193 = call i32 @mgt_set_request(%struct.TYPE_6__* %191, i32 %192, i32 0, i32* %12)
  br label %194

194:                                              ; preds = %169, %161, %147, %67
  %195 = load i32, i32* %19, align 4
  store i32 %195, i32* %5, align 4
  br label %196

196:                                              ; preds = %194, %166, %29
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local %struct.TYPE_6__* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @islpci_get_state(%struct.TYPE_6__*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mgt_get_request(%struct.TYPE_6__*, i32, i32, i32*, %union.oid_res_t*) #1

declare dso_local i32 @mgt_set_request(%struct.TYPE_6__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
