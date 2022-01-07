; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_siwpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_siwpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i32, i64 }

@HFA384X_RID_CNFPMENABLED = common dso_local global i32 0, align 4
@IW_POWER_MODE = common dso_local global i32 0, align 4
@HFA384X_RID_CNFMULTICASTRECEIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_POWER_TIMEOUT = common dso_local global i32 0, align 4
@HFA384X_RID_CNFPMHOLDOVERDURATION = common dso_local global i32 0, align 4
@IW_POWER_PERIOD = common dso_local global i32 0, align 4
@HFA384X_RID_CNFMAXSLEEPDURATION = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @prism2_ioctl_siwpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_ioctl_siwpower(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %12 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = load i32, i32* @HFA384X_RID_CNFPMENABLED, align 4
  %18 = call i32 @hostap_set_word(%struct.net_device* %16, i32 %17, i32 0)
  store i32 %18, i32* %5, align 4
  br label %121

19:                                               ; preds = %4
  %20 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %21 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IW_POWER_MODE, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %60 [
    i32 128, label %25
    i32 130, label %42
    i32 129, label %59
  ]

25:                                               ; preds = %19
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = load i32, i32* @HFA384X_RID_CNFMULTICASTRECEIVE, align 4
  %28 = call i32 @hostap_set_word(%struct.net_device* %26, i32 %27, i32 0)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %5, align 4
  br label %121

33:                                               ; preds = %25
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = load i32, i32* @HFA384X_RID_CNFPMENABLED, align 4
  %36 = call i32 @hostap_set_word(%struct.net_device* %34, i32 %35, i32 1)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %5, align 4
  br label %121

41:                                               ; preds = %33
  br label %63

42:                                               ; preds = %19
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = load i32, i32* @HFA384X_RID_CNFMULTICASTRECEIVE, align 4
  %45 = call i32 @hostap_set_word(%struct.net_device* %43, i32 %44, i32 1)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %5, align 4
  br label %121

50:                                               ; preds = %42
  %51 = load %struct.net_device*, %struct.net_device** %6, align 8
  %52 = load i32, i32* @HFA384X_RID_CNFPMENABLED, align 4
  %53 = call i32 @hostap_set_word(%struct.net_device* %51, i32 %52, i32 1)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %5, align 4
  br label %121

58:                                               ; preds = %50
  br label %63

59:                                               ; preds = %19
  br label %63

60:                                               ; preds = %19
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %121

63:                                               ; preds = %59, %58, %41
  %64 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %65 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @IW_POWER_TIMEOUT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %63
  %71 = load %struct.net_device*, %struct.net_device** %6, align 8
  %72 = load i32, i32* @HFA384X_RID_CNFPMENABLED, align 4
  %73 = call i32 @hostap_set_word(%struct.net_device* %71, i32 %72, i32 1)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %5, align 4
  br label %121

78:                                               ; preds = %70
  %79 = load %struct.net_device*, %struct.net_device** %6, align 8
  %80 = load i32, i32* @HFA384X_RID_CNFPMHOLDOVERDURATION, align 4
  %81 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %82 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %83, 1024
  %85 = call i32 @hostap_set_word(%struct.net_device* %79, i32 %80, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %78
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %5, align 4
  br label %121

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90, %63
  %92 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %93 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @IW_POWER_PERIOD, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %119

98:                                               ; preds = %91
  %99 = load %struct.net_device*, %struct.net_device** %6, align 8
  %100 = load i32, i32* @HFA384X_RID_CNFPMENABLED, align 4
  %101 = call i32 @hostap_set_word(%struct.net_device* %99, i32 %100, i32 1)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %5, align 4
  br label %121

106:                                              ; preds = %98
  %107 = load %struct.net_device*, %struct.net_device** %6, align 8
  %108 = load i32, i32* @HFA384X_RID_CNFMAXSLEEPDURATION, align 4
  %109 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %110 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sdiv i32 %111, 1024
  %113 = call i32 @hostap_set_word(%struct.net_device* %107, i32 %108, i32 %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %106
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %5, align 4
  br label %121

118:                                              ; preds = %106
  br label %119

119:                                              ; preds = %118, %91
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %119, %116, %104, %88, %76, %60, %56, %48, %39, %31, %15
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @hostap_set_word(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
