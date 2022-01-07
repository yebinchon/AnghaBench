; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_mesh.c___lbs_mesh_config_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_mesh.c___lbs_mesh_config_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64 }
%struct.cmd_ds_mesh_config = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8*, i8* }

@CMD_MESH_CONFIG_OLD = common dso_local global i32 0, align 4
@TLV_TYPE_MESH_ID = common dso_local global i64 0, align 8
@CMD_MESH_CONFIG = common dso_local global i32 0, align 4
@MESH_IFACE_ID = common dso_local global i32 0, align 4
@MESH_IFACE_BIT_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, %struct.cmd_ds_mesh_config*, i32, i32)* @__lbs_mesh_config_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lbs_mesh_config_send(%struct.lbs_private* %0, %struct.cmd_ds_mesh_config* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.lbs_private*, align 8
  %6 = alloca %struct.cmd_ds_mesh_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %5, align 8
  store %struct.cmd_ds_mesh_config* %1, %struct.cmd_ds_mesh_config** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @CMD_MESH_CONFIG_OLD, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %13 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TLV_TYPE_MESH_ID, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load i32, i32* @CMD_MESH_CONFIG, align 4
  %19 = load i32, i32* @MESH_IFACE_ID, align 4
  %20 = load i32, i32* @MESH_IFACE_BIT_OFFSET, align 4
  %21 = shl i32 %19, %20
  %22 = or i32 %18, %21
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %17, %4
  %24 = load i32, i32* %10, align 4
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = load %struct.cmd_ds_mesh_config*, %struct.cmd_ds_mesh_config** %6, align 8
  %27 = getelementptr inbounds %struct.cmd_ds_mesh_config, %struct.cmd_ds_mesh_config* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i8* %25, i8** %28, align 8
  %29 = call i8* @cpu_to_le16(i32 40)
  %30 = load %struct.cmd_ds_mesh_config*, %struct.cmd_ds_mesh_config** %6, align 8
  %31 = getelementptr inbounds %struct.cmd_ds_mesh_config, %struct.cmd_ds_mesh_config* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i8* %29, i8** %32, align 8
  %33 = load %struct.cmd_ds_mesh_config*, %struct.cmd_ds_mesh_config** %6, align 8
  %34 = getelementptr inbounds %struct.cmd_ds_mesh_config, %struct.cmd_ds_mesh_config* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i8* @cpu_to_le16(i32 %36)
  %38 = load %struct.cmd_ds_mesh_config*, %struct.cmd_ds_mesh_config** %6, align 8
  %39 = getelementptr inbounds %struct.cmd_ds_mesh_config, %struct.cmd_ds_mesh_config* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i8* @cpu_to_le16(i32 %40)
  %42 = load %struct.cmd_ds_mesh_config*, %struct.cmd_ds_mesh_config** %6, align 8
  %43 = getelementptr inbounds %struct.cmd_ds_mesh_config, %struct.cmd_ds_mesh_config* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.lbs_private*, %struct.lbs_private** %5, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.cmd_ds_mesh_config*, %struct.cmd_ds_mesh_config** %6, align 8
  %47 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %44, i32 %45, %struct.cmd_ds_mesh_config* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_mesh_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
