; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_giwretry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ioctl.c_prism2_ioctl_giwretry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_param = type { i32, i32, i64 }
%struct.hostap_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.net_device*, i32, i64*, i32, i32)* }

@HFA384X_RID_SHORTRETRYLIMIT = common dso_local global i32 0, align 4
@HFA384X_RID_LONGRETRYLIMIT = common dso_local global i32 0, align 4
@HFA384X_RID_MAXTRANSMITLIFETIME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_RETRY_TYPE = common dso_local global i32 0, align 4
@IW_RETRY_LIFETIME = common dso_local global i32 0, align 4
@IW_RETRY_LIMIT = common dso_local global i32 0, align 4
@HFA384X_RID_CNFALTRETRYCOUNT = common dso_local global i32 0, align 4
@IW_RETRY_LONG = common dso_local global i32 0, align 4
@IW_RETRY_SHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_param*, i8*)* @prism2_ioctl_giwretry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_ioctl_giwretry(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_param* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hostap_interface*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_param* %2, %struct.iw_param** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %16)
  store %struct.hostap_interface* %17, %struct.hostap_interface** %10, align 8
  %18 = load %struct.hostap_interface*, %struct.hostap_interface** %10, align 8
  %19 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %11, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64 (%struct.net_device*, i32, i64*, i32, i32)*, i64 (%struct.net_device*, i32, i64*, i32, i32)** %24, align 8
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = load i32, i32* @HFA384X_RID_SHORTRETRYLIMIT, align 4
  %28 = call i64 %25(%struct.net_device* %26, i32 %27, i64* %12, i32 2, i32 1)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64 (%struct.net_device*, i32, i64*, i32, i32)*, i64 (%struct.net_device*, i32, i64*, i32, i32)** %34, align 8
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = load i32, i32* @HFA384X_RID_LONGRETRYLIMIT, align 4
  %38 = call i64 %35(%struct.net_device* %36, i32 %37, i64* %13, i32 2, i32 1)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %30
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64 (%struct.net_device*, i32, i64*, i32, i32)*, i64 (%struct.net_device*, i32, i64*, i32, i32)** %44, align 8
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = load i32, i32* @HFA384X_RID_MAXTRANSMITLIFETIME, align 4
  %48 = call i64 %45(%struct.net_device* %46, i32 %47, i64* %14, i32 2, i32 1)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %40, %30, %4
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %140

53:                                               ; preds = %40
  %54 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %55 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %57 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IW_RETRY_TYPE, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @IW_RETRY_LIFETIME, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %53
  %64 = load i32, i32* @IW_RETRY_LIFETIME, align 4
  %65 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %66 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i64, i64* %14, align 8
  %68 = call i32 @le16_to_cpu(i64 %67)
  %69 = mul nsw i32 %68, 1024
  %70 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %71 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %139

72:                                               ; preds = %53
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %102

77:                                               ; preds = %72
  %78 = load i32, i32* @IW_RETRY_LIMIT, align 4
  %79 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %80 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64 (%struct.net_device*, i32, i64*, i32, i32)*, i64 (%struct.net_device*, i32, i64*, i32, i32)** %84, align 8
  %86 = load %struct.net_device*, %struct.net_device** %6, align 8
  %87 = load i32, i32* @HFA384X_RID_CNFALTRETRYCOUNT, align 4
  %88 = call i64 %85(%struct.net_device* %86, i32 %87, i64* %15, i32 2, i32 1)
  %89 = icmp sge i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %77
  %91 = load i64, i64* %15, align 8
  %92 = call i32 @le16_to_cpu(i64 %91)
  %93 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %94 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  br label %101

95:                                               ; preds = %77
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %100 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %95, %90
  br label %138

102:                                              ; preds = %72
  %103 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %104 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @IW_RETRY_LONG, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %102
  %110 = load i32, i32* @IW_RETRY_LIMIT, align 4
  %111 = load i32, i32* @IW_RETRY_LONG, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %114 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load i64, i64* %13, align 8
  %116 = call i32 @le16_to_cpu(i64 %115)
  %117 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %118 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  br label %137

119:                                              ; preds = %102
  %120 = load i32, i32* @IW_RETRY_LIMIT, align 4
  %121 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %122 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load i64, i64* %12, align 8
  %124 = call i32 @le16_to_cpu(i64 %123)
  %125 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %126 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load i64, i64* %12, align 8
  %128 = load i64, i64* %13, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %119
  %131 = load i32, i32* @IW_RETRY_SHORT, align 4
  %132 = load %struct.iw_param*, %struct.iw_param** %8, align 8
  %133 = getelementptr inbounds %struct.iw_param, %struct.iw_param* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %130, %119
  br label %137

137:                                              ; preds = %136, %109
  br label %138

138:                                              ; preds = %137, %101
  br label %139

139:                                              ; preds = %138, %63
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %139, %50
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @le16_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
