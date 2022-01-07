; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_get_auth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/prism54/extr_isl_ioctl.c_prism54_get_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_param }
%struct.iw_param = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%union.oid_res_t = type { i32 }

@PRV_STATE_INIT = common dso_local global i64 0, align 8
@IW_AUTH_INDEX = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IW_AUTH_WPA_VERSION_WPA = common dso_local global i32 0, align 4
@IW_AUTH_WPA_VERSION_WPA2 = common dso_local global i32 0, align 4
@IW_AUTH_WPA_VERSION_DISABLED = common dso_local global i32 0, align 4
@DOT11_OID_EXUNENCRYPTED = common dso_local global i32 0, align 4
@DOT11_OID_AUTHENABLE = common dso_local global i32 0, align 4
@IW_AUTH_ALG_OPEN_SYSTEM = common dso_local global i32 0, align 4
@IW_AUTH_ALG_SHARED_KEY = common dso_local global i32 0, align 4
@DOT11_OID_DOT1XENABLE = common dso_local global i32 0, align 4
@DOT11_OID_PRIVACYINVOKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @prism54_get_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism54_get_auth(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.iw_param*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %union.oid_res_t, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.TYPE_5__* @netdev_priv(%struct.net_device* %15)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %10, align 8
  %17 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %18 = bitcast %union.iwreq_data* %17 to %struct.iw_param*
  store %struct.iw_param* %18, %struct.iw_param** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %20 = call i64 @islpci_get_state(%struct.TYPE_5__* %19)
  %21 = load i64, i64* @PRV_STATE_INIT, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %138

24:                                               ; preds = %4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = call i32 @down_write(i32* %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = call i32 @up_write(i32* %32)
  %34 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %35 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IW_AUTH_INDEX, align 4
  %38 = and i32 %36, %37
  switch i32 %38, label %133 [
    i32 134, label %39
    i32 135, label %39
    i32 132, label %39
    i32 128, label %42
    i32 133, label %58
    i32 136, label %73
    i32 129, label %96
    i32 130, label %103
    i32 131, label %118
  ]

39:                                               ; preds = %24, %24, %24
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %13, align 4
  br label %136

42:                                               ; preds = %24
  %43 = load i32, i32* %12, align 4
  switch i32 %43, label %53 [
    i32 1, label %44
    i32 2, label %48
    i32 0, label %52
  ]

44:                                               ; preds = %42
  %45 = load i32, i32* @IW_AUTH_WPA_VERSION_WPA, align 4
  %46 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %47 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %57

48:                                               ; preds = %42
  %49 = load i32, i32* @IW_AUTH_WPA_VERSION_WPA2, align 4
  %50 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %51 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %57

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %42, %52
  %54 = load i32, i32* @IW_AUTH_WPA_VERSION_DISABLED, align 4
  %55 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %56 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %48, %44
  br label %136

58:                                               ; preds = %24
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %60 = load i32, i32* @DOT11_OID_EXUNENCRYPTED, align 4
  %61 = call i32 @mgt_get_request(%struct.TYPE_5__* %59, i32 %60, i32 0, i32* null, %union.oid_res_t* %14)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = bitcast %union.oid_res_t* %14 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 1, i32 0
  %70 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %71 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %64, %58
  br label %136

73:                                               ; preds = %24
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %75 = load i32, i32* @DOT11_OID_AUTHENABLE, align 4
  %76 = call i32 @mgt_get_request(%struct.TYPE_5__* %74, i32 %75, i32 0, i32* null, %union.oid_res_t* %14)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %73
  %80 = bitcast %union.oid_res_t* %14 to i32*
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %91 [
    i32 138, label %82
    i32 140, label %86
    i32 137, label %86
    i32 139, label %90
  ]

82:                                               ; preds = %79
  %83 = load i32, i32* @IW_AUTH_ALG_OPEN_SYSTEM, align 4
  %84 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %85 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  br label %94

86:                                               ; preds = %79, %79
  %87 = load i32, i32* @IW_AUTH_ALG_SHARED_KEY, align 4
  %88 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %89 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %94

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %79, %90
  %92 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %93 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %92, i32 0, i32 1
  store i32 0, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %86, %82
  br label %95

95:                                               ; preds = %94, %73
  br label %136

96:                                               ; preds = %24
  %97 = load i32, i32* %12, align 4
  %98 = icmp sgt i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 1, i32 0
  %101 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %102 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %136

103:                                              ; preds = %24
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %105 = load i32, i32* @DOT11_OID_DOT1XENABLE, align 4
  %106 = call i32 @mgt_get_request(%struct.TYPE_5__* %104, i32 %105, i32 0, i32* null, %union.oid_res_t* %14)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %103
  %110 = bitcast %union.oid_res_t* %14 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = icmp sgt i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 1, i32 0
  %115 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %116 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %109, %103
  br label %136

118:                                              ; preds = %24
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %120 = load i32, i32* @DOT11_OID_PRIVACYINVOKED, align 4
  %121 = call i32 @mgt_get_request(%struct.TYPE_5__* %119, i32 %120, i32 0, i32* null, %union.oid_res_t* %14)
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %13, align 4
  %123 = icmp sge i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %118
  %125 = bitcast %union.oid_res_t* %14 to i32*
  %126 = load i32, i32* %125, align 4
  %127 = icmp sgt i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 1, i32 0
  %130 = load %struct.iw_param*, %struct.iw_param** %11, align 8
  %131 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  br label %132

132:                                              ; preds = %124, %118
  br label %136

133:                                              ; preds = %24
  %134 = load i32, i32* @EOPNOTSUPP, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %5, align 4
  br label %138

136:                                              ; preds = %132, %117, %96, %95, %72, %57, %39
  %137 = load i32, i32* %13, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %136, %133, %23
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local %struct.TYPE_5__* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @islpci_get_state(%struct.TYPE_5__*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mgt_get_request(%struct.TYPE_5__*, i32, i32, i32*, %union.oid_res_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
