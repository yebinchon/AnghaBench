; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_mesh.c_lbs_mesh_config_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_mesh.c_lbs_mesh_config_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.cmd_ds_mesh_config = type { i32 }

@FW_CAPINFO_PERSISTENT_CONFIG = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*, %struct.cmd_ds_mesh_config*, i32, i32)* @lbs_mesh_config_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_mesh_config_send(%struct.lbs_private* %0, %struct.cmd_ds_mesh_config* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lbs_private*, align 8
  %7 = alloca %struct.cmd_ds_mesh_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %6, align 8
  store %struct.cmd_ds_mesh_config* %1, %struct.cmd_ds_mesh_config** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %12 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FW_CAPINFO_PERSISTENT_CONFIG, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %27

20:                                               ; preds = %4
  %21 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %22 = load %struct.cmd_ds_mesh_config*, %struct.cmd_ds_mesh_config** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @__lbs_mesh_config_send(%struct.lbs_private* %21, %struct.cmd_ds_mesh_config* %22, i32 %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %20, %17
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @__lbs_mesh_config_send(%struct.lbs_private*, %struct.cmd_ds_mesh_config*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
