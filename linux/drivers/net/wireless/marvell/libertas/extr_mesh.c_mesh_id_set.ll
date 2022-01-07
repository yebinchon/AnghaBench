; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_mesh.c_mesh_id_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_mesh.c_mesh_id_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.cmd_ds_mesh_config = type { i32, i32* }
%struct.mrvl_mesh_defaults = type { i8 }
%struct.mrvl_meshie = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.mrvl_meshie* }
%struct.lbs_private = type { i32 }
%struct.TYPE_4__ = type { %struct.lbs_private* }

@IEEE80211_MAX_SSID_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CMD_ACT_MESH_CONFIG_SET = common dso_local global i32 0, align 4
@CMD_TYPE_MESH_SET_MESH_IE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @mesh_id_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mesh_id_set(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cmd_ds_mesh_config, align 8
  %11 = alloca %struct.mrvl_mesh_defaults, align 1
  %12 = alloca %struct.mrvl_meshie*, align 8
  %13 = alloca %struct.lbs_private*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.TYPE_4__* @to_net_dev(%struct.device* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.lbs_private*, %struct.lbs_private** %18, align 8
  store %struct.lbs_private* %19, %struct.lbs_private** %13, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ult i64 %20, 2
  br i1 %21, label %28, label %22

22:                                               ; preds = %4
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* @IEEE80211_MAX_SSID_LEN, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = icmp ugt i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %78

31:                                               ; preds = %22
  %32 = call i32 @memset(%struct.cmd_ds_mesh_config* %10, i32 0, i32 16)
  %33 = getelementptr inbounds %struct.cmd_ds_mesh_config, %struct.cmd_ds_mesh_config* %10, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = bitcast i32* %35 to %struct.mrvl_meshie*
  store %struct.mrvl_meshie* %36, %struct.mrvl_meshie** %12, align 8
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = call i32 @mesh_get_default_parameters(%struct.device* %37, %struct.mrvl_mesh_defaults* %11)
  store i32 %38, i32* %15, align 4
  %39 = call i32 @cpu_to_le16(i32 24)
  %40 = getelementptr inbounds %struct.cmd_ds_mesh_config, %struct.cmd_ds_mesh_config* %10, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %12, align 8
  %42 = getelementptr inbounds %struct.mrvl_mesh_defaults, %struct.mrvl_mesh_defaults* %11, i32 0, i32 0
  %43 = call i32 @memcpy(%struct.mrvl_meshie* %41, i8* %42, i32 24)
  %44 = load i64, i64* %9, align 8
  %45 = sub i64 %44, 1
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %14, align 4
  %47 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %12, align 8
  %48 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %49, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @memcpy(%struct.mrvl_meshie* %50, i8* %51, i32 %52)
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %12, align 8
  %56 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* @IEEE80211_MAX_SSID_LEN, align 4
  %59 = sext i32 %58 to i64
  %60 = sub i64 4, %59
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 %60, %62
  %64 = trunc i64 %63 to i32
  %65 = load %struct.mrvl_meshie*, %struct.mrvl_meshie** %12, align 8
  %66 = getelementptr inbounds %struct.mrvl_meshie, %struct.mrvl_meshie* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.lbs_private*, %struct.lbs_private** %13, align 8
  %68 = load i32, i32* @CMD_ACT_MESH_CONFIG_SET, align 4
  %69 = load i32, i32* @CMD_TYPE_MESH_SET_MESH_IE, align 4
  %70 = call i32 @lbs_mesh_config_send(%struct.lbs_private* %67, %struct.cmd_ds_mesh_config* %10, i32 %68, i32 %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %31
  %74 = load i32, i32* %15, align 4
  store i32 %74, i32* %5, align 4
  br label %78

75:                                               ; preds = %31
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @strlen(i8* %76)
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %73, %28
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.TYPE_4__* @to_net_dev(%struct.device*) #1

declare dso_local i32 @memset(%struct.cmd_ds_mesh_config*, i32, i32) #1

declare dso_local i32 @mesh_get_default_parameters(%struct.device*, %struct.mrvl_mesh_defaults*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(%struct.mrvl_meshie*, i8*, i32) #1

declare dso_local i32 @lbs_mesh_config_send(%struct.lbs_private*, %struct.cmd_ds_mesh_config*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
