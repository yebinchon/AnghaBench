; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_siwauth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_siwauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i32 }
%struct.hostap_interface = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 (%struct.net_device*)* }

@IW_AUTH_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HFA384X_RID_SSNHANDLINGMODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @prism2_ioctl_siwauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_ioctl_siwauth(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hostap_interface*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %12)
  store %struct.hostap_interface* %13, %struct.hostap_interface** %10, align 8
  %14 = load %struct.hostap_interface*, %struct.hostap_interface** %10, align 8
  %15 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %11, align 8
  %17 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %18 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IW_AUTH_INDEX, align 4
  %21 = and i32 %19, %20
  switch i32 %21, label %140 [
    i32 128, label %22
    i32 135, label %22
    i32 136, label %22
    i32 133, label %22
    i32 130, label %23
    i32 134, label %29
    i32 137, label %35
    i32 129, label %41
    i32 131, label %128
    i32 132, label %134
  ]

22:                                               ; preds = %4, %4, %4, %4
  br label %143

23:                                               ; preds = %4
  %24 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %25 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %143

29:                                               ; preds = %4
  %30 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %31 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %143

35:                                               ; preds = %4
  %36 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %37 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  br label %143

41:                                               ; preds = %4
  %42 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %43 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %87

46:                                               ; preds = %41
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  store i32 0, i32* %48, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @PRISM2_FW_VER(i32 1, i32 7, i32 0)
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %143

55:                                               ; preds = %46
  %56 = load %struct.net_device*, %struct.net_device** %6, align 8
  %57 = call i32 @prism2_set_genericelement(%struct.net_device* %56, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 4
  store i32 0, i32* %59, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 5
  store i32 0, i32* %61, align 4
  %62 = load %struct.net_device*, %struct.net_device** %6, align 8
  %63 = load i32, i32* @HFA384X_RID_SSNHANDLINGMODE, align 4
  %64 = call i32 @hostap_set_word(%struct.net_device* %62, i32 %63, i32 0)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %83, label %66

66:                                               ; preds = %55
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %68 = call i32 @hostap_set_roaming(%struct.TYPE_6__* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %66
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %72 = call i32 @hostap_set_encryption(%struct.TYPE_6__* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %70
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 7
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %78, align 8
  %80 = load %struct.net_device*, %struct.net_device** %6, align 8
  %81 = call i32 %79(%struct.net_device* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %74, %70, %66, %55
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %144

86:                                               ; preds = %74
  br label %143

87:                                               ; preds = %41
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @PRISM2_FW_VER(i32 1, i32 7, i32 0)
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* @EOPNOTSUPP, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %144

96:                                               ; preds = %87
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 4
  store i32 2, i32* %98, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 5
  store i32 1, i32* %100, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  store i32 1, i32* %102, align 4
  %103 = load %struct.net_device*, %struct.net_device** %6, align 8
  %104 = load i32, i32* @HFA384X_RID_SSNHANDLINGMODE, align 4
  %105 = call i32 @hostap_set_word(%struct.net_device* %103, i32 %104, i32 1)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %124, label %107

107:                                              ; preds = %96
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %109 = call i32 @hostap_set_roaming(%struct.TYPE_6__* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %124, label %111

111:                                              ; preds = %107
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %113 = call i32 @hostap_set_encryption(%struct.TYPE_6__* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %111
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 7
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %119, align 8
  %121 = load %struct.net_device*, %struct.net_device** %6, align 8
  %122 = call i32 %120(%struct.net_device* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %115, %111, %107, %96
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  br label %144

127:                                              ; preds = %115
  br label %143

128:                                              ; preds = %4
  %129 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %130 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 6
  store i32 %131, i32* %133, align 8
  br label %143

134:                                              ; preds = %4
  %135 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %136 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 5
  store i32 %137, i32* %139, align 4
  br label %143

140:                                              ; preds = %4
  %141 = load i32, i32* @EOPNOTSUPP, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %5, align 4
  br label %144

143:                                              ; preds = %134, %128, %127, %86, %54, %35, %29, %23, %22
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %143, %140, %124, %93, %83
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @PRISM2_FW_VER(i32, i32, i32) #1

declare dso_local i32 @prism2_set_genericelement(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @hostap_set_word(%struct.net_device*, i32, i32) #1

declare dso_local i32 @hostap_set_roaming(%struct.TYPE_6__*) #1

declare dso_local i32 @hostap_set_encryption(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
