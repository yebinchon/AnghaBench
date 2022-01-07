; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_priv_hostapd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_priv_hostapd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.iw_point = type { i32, i32 }
%struct.prism2_hostapd_param = type { i32 }

@PRISM2_HOSTAPD_MAX_BUF_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.iw_point*)* @prism2_ioctl_priv_hostapd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_ioctl_priv_hostapd(%struct.TYPE_11__* %0, %struct.iw_point* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.iw_point*, align 8
  %6 = alloca %struct.prism2_hostapd_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.iw_point* %1, %struct.iw_point** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.iw_point*, %struct.iw_point** %5, align 8
  %10 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, 4
  br i1 %13, label %25, label %14

14:                                               ; preds = %2
  %15 = load %struct.iw_point*, %struct.iw_point** %5, align 8
  %16 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PRISM2_HOSTAPD_MAX_BUF_SIZE, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load %struct.iw_point*, %struct.iw_point** %5, align 8
  %22 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %14, %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %132

28:                                               ; preds = %20
  %29 = load %struct.iw_point*, %struct.iw_point** %5, align 8
  %30 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iw_point*, %struct.iw_point** %5, align 8
  %33 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.prism2_hostapd_param* @memdup_user(i32 %31, i32 %34)
  store %struct.prism2_hostapd_param* %35, %struct.prism2_hostapd_param** %6, align 8
  %36 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %37 = call i64 @IS_ERR(%struct.prism2_hostapd_param* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %41 = call i32 @PTR_ERR(%struct.prism2_hostapd_param* %40)
  store i32 %41, i32* %3, align 4
  br label %132

42:                                               ; preds = %28
  %43 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %44 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %96 [
    i32 128, label %46
    i32 135, label %53
    i32 134, label %60
    i32 129, label %67
    i32 131, label %74
    i32 130, label %81
    i32 133, label %88
    i32 132, label %92
  ]

46:                                               ; preds = %42
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %49 = load %struct.iw_point*, %struct.iw_point** %5, align 8
  %50 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @prism2_ioctl_set_encryption(%struct.TYPE_11__* %47, %struct.prism2_hostapd_param* %48, i32 %51)
  store i32 %52, i32* %7, align 4
  br label %102

53:                                               ; preds = %42
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %56 = load %struct.iw_point*, %struct.iw_point** %5, align 8
  %57 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @prism2_ioctl_get_encryption(%struct.TYPE_11__* %54, %struct.prism2_hostapd_param* %55, i32 %58)
  store i32 %59, i32* %7, align 4
  br label %102

60:                                               ; preds = %42
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %63 = load %struct.iw_point*, %struct.iw_point** %5, align 8
  %64 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @prism2_ioctl_get_rid(%struct.TYPE_11__* %61, %struct.prism2_hostapd_param* %62, i32 %65)
  store i32 %66, i32* %7, align 4
  br label %102

67:                                               ; preds = %42
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %70 = load %struct.iw_point*, %struct.iw_point** %5, align 8
  %71 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @prism2_ioctl_set_rid(%struct.TYPE_11__* %68, %struct.prism2_hostapd_param* %69, i32 %72)
  store i32 %73, i32* %7, align 4
  br label %102

74:                                               ; preds = %42
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %77 = load %struct.iw_point*, %struct.iw_point** %5, align 8
  %78 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @prism2_ioctl_set_assoc_ap_addr(%struct.TYPE_11__* %75, %struct.prism2_hostapd_param* %76, i32 %79)
  store i32 %80, i32* %7, align 4
  br label %102

81:                                               ; preds = %42
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %83 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %84 = load %struct.iw_point*, %struct.iw_point** %5, align 8
  %85 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @prism2_ioctl_set_generic_element(%struct.TYPE_11__* %82, %struct.prism2_hostapd_param* %83, i32 %86)
  store i32 %87, i32* %7, align 4
  br label %102

88:                                               ; preds = %42
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %90 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %91 = call i32 @prism2_ioctl_mlme(%struct.TYPE_11__* %89, %struct.prism2_hostapd_param* %90)
  store i32 %91, i32* %7, align 4
  br label %102

92:                                               ; preds = %42
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %94 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %95 = call i32 @prism2_ioctl_scan_req(%struct.TYPE_11__* %93, %struct.prism2_hostapd_param* %94)
  store i32 %95, i32* %7, align 4
  br label %102

96:                                               ; preds = %42
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %101 = call i32 @prism2_hostapd(i32 %99, %struct.prism2_hostapd_param* %100)
  store i32 %101, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %102

102:                                              ; preds = %96, %92, %88, %81, %74, %67, %60, %53, %46
  %103 = load i32, i32* %7, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %127, label %108

108:                                              ; preds = %105, %102
  %109 = load %struct.iw_point*, %struct.iw_point** %5, align 8
  %110 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %113 = load %struct.iw_point*, %struct.iw_point** %5, align 8
  %114 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @copy_to_user(i32 %111, %struct.prism2_hostapd_param* %112, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %108
  %119 = load i32, i32* @EFAULT, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %7, align 4
  br label %128

121:                                              ; preds = %108
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 0, i32* %7, align 4
  br label %125

125:                                              ; preds = %124, %121
  br label %126

126:                                              ; preds = %125
  br label %127

127:                                              ; preds = %126, %105
  br label %128

128:                                              ; preds = %127, %118
  %129 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %6, align 8
  %130 = call i32 @kfree(%struct.prism2_hostapd_param* %129)
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %128, %39, %25
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.prism2_hostapd_param* @memdup_user(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.prism2_hostapd_param*) #1

declare dso_local i32 @PTR_ERR(%struct.prism2_hostapd_param*) #1

declare dso_local i32 @prism2_ioctl_set_encryption(%struct.TYPE_11__*, %struct.prism2_hostapd_param*, i32) #1

declare dso_local i32 @prism2_ioctl_get_encryption(%struct.TYPE_11__*, %struct.prism2_hostapd_param*, i32) #1

declare dso_local i32 @prism2_ioctl_get_rid(%struct.TYPE_11__*, %struct.prism2_hostapd_param*, i32) #1

declare dso_local i32 @prism2_ioctl_set_rid(%struct.TYPE_11__*, %struct.prism2_hostapd_param*, i32) #1

declare dso_local i32 @prism2_ioctl_set_assoc_ap_addr(%struct.TYPE_11__*, %struct.prism2_hostapd_param*, i32) #1

declare dso_local i32 @prism2_ioctl_set_generic_element(%struct.TYPE_11__*, %struct.prism2_hostapd_param*, i32) #1

declare dso_local i32 @prism2_ioctl_mlme(%struct.TYPE_11__*, %struct.prism2_hostapd_param*) #1

declare dso_local i32 @prism2_ioctl_scan_req(%struct.TYPE_11__*, %struct.prism2_hostapd_param*) #1

declare dso_local i32 @prism2_hostapd(i32, %struct.prism2_hostapd_param*) #1

declare dso_local i64 @copy_to_user(i32, %struct.prism2_hostapd_param*, i32) #1

declare dso_local i32 @kfree(%struct.prism2_hostapd_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
