; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_mesh.c_lbs_mesh_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_mesh.c_lbs_mesh_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, i32 }
%struct.cmd_ds_mesh_config = type { i8*, i64, i8* }
%struct.mrvl_meshie = type { %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i32*, i32, i64, i32, i32, i32, i32, i32, i32 }

@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@MARVELL_MESH_IE_TYPE = common dso_local global i32 0, align 4
@MARVELL_MESH_IE_SUBTYPE = common dso_local global i32 0, align 4
@MARVELL_MESH_IE_VERSION = common dso_local global i32 0, align 4
@MARVELL_MESH_PROTO_ID_HWMP = common dso_local global i32 0, align 4
@MARVELL_MESH_METRIC_ID = common dso_local global i32 0, align 4
@MARVELL_MESH_CAPABILITY = common dso_local global i32 0, align 4
@IEEE80211_MAX_SSID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"mesh config action %d type %x channel %d SSID %*pE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, i32, i32)* @lbs_mesh_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_mesh_config(%struct.lbs_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lbs_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca %struct.cmd_ds_mesh_config, align 8
  %10 = alloca %struct.mrvl_meshie*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = call i32 @memset(%struct.cmd_ds_mesh_config* %9, i32 0, i32 24)
  %12 = load i32, i32* %7, align 4
  %13 = call i8* @cpu_to_le16(i32 %12)
  %14 = getelementptr inbounds %struct.cmd_ds_mesh_config, %struct.cmd_ds_mesh_config* %9, i32 0, i32 2
  store i8* %13, i8** %14, align 8
  %15 = getelementptr inbounds %struct.cmd_ds_mesh_config, %struct.cmd_ds_mesh_config* %9, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.mrvl_meshie*
  store %struct.mrvl_meshie* %17, %struct.mrvl_meshie** %10, align 8
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %103 [
    i32 129, label %19
    i32 128, label %102
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %21 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %10, align 8
  %22 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %10, align 8
  %24 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %10, align 8
  %29 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 80, i32* %32, align 4
  %33 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %10, align 8
  %34 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  store i32 67, i32* %37, align 4
  %38 = load i32, i32* @MARVELL_MESH_IE_TYPE, align 4
  %39 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %10, align 8
  %40 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 8
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @MARVELL_MESH_IE_SUBTYPE, align 4
  %43 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %10, align 8
  %44 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 7
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* @MARVELL_MESH_IE_VERSION, align 4
  %47 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %10, align 8
  %48 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 6
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @MARVELL_MESH_PROTO_ID_HWMP, align 4
  %51 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %10, align 8
  %52 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 5
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* @MARVELL_MESH_METRIC_ID, align 4
  %55 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %10, align 8
  %56 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @MARVELL_MESH_CAPABILITY, align 4
  %59 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %10, align 8
  %60 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  store i32 %58, i32* %61, align 8
  %62 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %63 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = icmp ne %struct.TYPE_3__* %64, null
  br i1 %65, label %66, label %89

66:                                               ; preds = %19
  %67 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %68 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load %struct.wireless_dev*, %struct.wireless_dev** %70, align 8
  store %struct.wireless_dev* %71, %struct.wireless_dev** %8, align 8
  %72 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %73 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %10, align 8
  %76 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  store i64 %74, i64* %77, align 8
  %78 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %10, align 8
  %79 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %83 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %86 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @memcpy(i32 %81, i32 %84, i64 %87)
  br label %89

89:                                               ; preds = %66, %19
  %90 = load i32, i32* @IEEE80211_MAX_SSID_LEN, align 4
  %91 = sext i32 %90 to i64
  %92 = sub i64 4, %91
  %93 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %10, align 8
  %94 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %92, %96
  %98 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %10, align 8
  %99 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  %100 = call i8* @cpu_to_le16(i32 4)
  %101 = getelementptr inbounds %struct.cmd_ds_mesh_config, %struct.cmd_ds_mesh_config* %9, i32 0, i32 0
  store i8* %100, i8** %101, align 8
  br label %104

102:                                              ; preds = %3
  br label %104

103:                                              ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %125

104:                                              ; preds = %102, %89
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %107 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %10, align 8
  %111 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %10, align 8
  %115 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %105, i32 %108, i32 %109, i64 %113, i32 %117)
  %119 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %122 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @__lbs_mesh_config_send(%struct.lbs_private* %119, %struct.cmd_ds_mesh_config* %9, i32 %120, i32 %123)
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %104, %103
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @memset(%struct.cmd_ds_mesh_config*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @lbs_deb_cmd(i8*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @__lbs_mesh_config_send(%struct.lbs_private*, %struct.cmd_ds_mesh_config*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
