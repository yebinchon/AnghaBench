; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_wext.c_orinoco_ioctl_set_auth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_wext.c_orinoco_ioctl_set_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_param }
%struct.iw_param = type { i64, i32 }
%struct.orinoco_private = type { i32, i32, i32, i32, i32, %struct.hermes }
%struct.hermes = type { i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IW_AUTH_INDEX = common dso_local global i64 0, align 8
@IW_AUTH_MFP_REQUIRED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_AUTH_ALG_SHARED_KEY = common dso_local global i32 0, align 4
@IW_AUTH_ALG_OPEN_SYSTEM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @orinoco_ioctl_set_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_ioctl_set_auth(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.orinoco_private*, align 8
  %11 = alloca %struct.hermes*, align 8
  %12 = alloca %struct.iw_param*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.orinoco_private* @ndev_priv(%struct.net_device* %15)
  store %struct.orinoco_private* %16, %struct.orinoco_private** %10, align 8
  %17 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %18 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %17, i32 0, i32 5
  store %struct.hermes* %18, %struct.hermes** %11, align 8
  %19 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %20 = bitcast %union.iwreq_data* %19 to %struct.iw_param*
  store %struct.iw_param* %20, %struct.iw_param** %12, align 8
  %21 = load i32, i32* @EINPROGRESS, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %14, align 4
  %23 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %24 = call i64 @orinoco_lock(%struct.orinoco_private* %23, i64* %13)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %126

29:                                               ; preds = %4
  %30 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %31 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IW_AUTH_INDEX, align 8
  %34 = and i64 %32, %33
  switch i64 %34, label %119 [
    i64 128, label %35
    i64 136, label %35
    i64 137, label %35
    i64 131, label %35
    i64 132, label %35
    i64 135, label %35
    i64 133, label %36
    i64 134, label %46
    i64 130, label %52
    i64 138, label %68
    i64 129, label %93
  ]

35:                                               ; preds = %29, %29, %29, %29, %29, %29
  br label %122

36:                                               ; preds = %29
  %37 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %38 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @IW_AUTH_MFP_REQUIRED, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %42, %36
  br label %122

46:                                               ; preds = %29
  %47 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %48 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %51 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %122

52:                                               ; preds = %29
  %53 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %54 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %59 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  %60 = load %struct.hermes*, %struct.hermes** %11, align 8
  %61 = call i32 @hermes_disable_port(%struct.hermes* %60, i32 0)
  store i32 %61, i32* %14, align 4
  br label %67

62:                                               ; preds = %52
  %63 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %64 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = load %struct.hermes*, %struct.hermes** %11, align 8
  %66 = call i32 @hermes_enable_port(%struct.hermes* %65, i32 0)
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %62, %57
  br label %122

68:                                               ; preds = %29
  %69 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %70 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @IW_AUTH_ALG_SHARED_KEY, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %77 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %76, i32 0, i32 2
  store i32 1, i32* %77, align 4
  br label %92

78:                                               ; preds = %68
  %79 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %80 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @IW_AUTH_ALG_OPEN_SYSTEM, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %87 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %86, i32 0, i32 2
  store i32 0, i32* %87, align 4
  br label %91

88:                                               ; preds = %78
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91, %75
  br label %122

93:                                               ; preds = %29
  %94 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %95 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %100 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 1, i32 0
  %105 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %106 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  br label %118

107:                                              ; preds = %93
  %108 = load %struct.iw_param*, %struct.iw_param** %12, align 8
  %109 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* @EOPNOTSUPP, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %14, align 4
  br label %115

115:                                              ; preds = %112, %107
  %116 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %117 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %116, i32 0, i32 3
  store i32 0, i32* %117, align 4
  br label %118

118:                                              ; preds = %115, %98
  br label %122

119:                                              ; preds = %29
  %120 = load i32, i32* @EOPNOTSUPP, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %14, align 4
  br label %122

122:                                              ; preds = %119, %118, %92, %67, %46, %45, %35
  %123 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %124 = call i32 @orinoco_unlock(%struct.orinoco_private* %123, i64* %13)
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %122, %26
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local %struct.orinoco_private* @ndev_priv(%struct.net_device*) #1

declare dso_local i64 @orinoco_lock(%struct.orinoco_private*, i64*) #1

declare dso_local i32 @hermes_disable_port(%struct.hermes*, i32) #1

declare dso_local i32 @hermes_enable_port(%struct.hermes*, i32) #1

declare dso_local i32 @orinoco_unlock(%struct.orinoco_private*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
