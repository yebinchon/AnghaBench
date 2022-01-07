; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_host_sleep_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_host_sleep_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32, i32, i32 }
%struct.wol_config = type { i32 }
%struct.cmd_ds_host_sleep = type { %struct.TYPE_3__, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EHS_REMOVE_WAKEUP = common dso_local global i64 0, align 8
@CMD_ACT_ACTION_NONE = common dso_local global i32 0, align 4
@CMD_802_11_HOST_SLEEP_CFG = common dso_local global i32 0, align 4
@lbs_ret_host_sleep_cfg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"HOST_SLEEP_CFG failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_host_sleep_cfg(%struct.lbs_private* %0, i64 %1, %struct.wol_config* %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wol_config*, align 8
  %7 = alloca %struct.cmd_ds_host_sleep, align 4
  %8 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.wol_config* %2, %struct.wol_config** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @EHS_REMOVE_WAKEUP, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %14 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i64 0, i64* %5, align 8
  br label %18

18:                                               ; preds = %17, %12, %3
  %19 = call i32 @cpu_to_le16(i32 20)
  %20 = getelementptr inbounds %struct.cmd_ds_host_sleep, %struct.cmd_ds_host_sleep* %7, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @cpu_to_le32(i64 %22)
  %24 = getelementptr inbounds %struct.cmd_ds_host_sleep, %struct.cmd_ds_host_sleep* %7, i32 0, i32 4
  store i32 %23, i32* %24, align 4
  %25 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %26 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.cmd_ds_host_sleep, %struct.cmd_ds_host_sleep* %7, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %30 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.cmd_ds_host_sleep, %struct.cmd_ds_host_sleep* %7, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load %struct.wol_config*, %struct.wol_config** %6, align 8
  %34 = icmp ne %struct.wol_config* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %18
  %36 = getelementptr inbounds %struct.cmd_ds_host_sleep, %struct.cmd_ds_host_sleep* %7, i32 0, i32 0
  %37 = bitcast %struct.TYPE_3__* %36 to i32*
  %38 = load %struct.wol_config*, %struct.wol_config** %6, align 8
  %39 = bitcast %struct.wol_config* %38 to i32*
  %40 = call i32 @memcpy(i32* %37, i32* %39, i32 4)
  br label %45

41:                                               ; preds = %18
  %42 = load i32, i32* @CMD_ACT_ACTION_NONE, align 4
  %43 = getelementptr inbounds %struct.cmd_ds_host_sleep, %struct.cmd_ds_host_sleep* %7, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %35
  %46 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %47 = load i32, i32* @CMD_802_11_HOST_SLEEP_CFG, align 4
  %48 = getelementptr inbounds %struct.cmd_ds_host_sleep, %struct.cmd_ds_host_sleep* %7, i32 0, i32 1
  %49 = getelementptr inbounds %struct.cmd_ds_host_sleep, %struct.cmd_ds_host_sleep* %7, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = load i32, i32* @lbs_ret_host_sleep_cfg, align 4
  %54 = call i32 @__lbs_cmd(%struct.lbs_private* %46, i32 %47, %struct.TYPE_4__* %48, i32 %52, i32 %53, i32 0)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %45
  %58 = load %struct.wol_config*, %struct.wol_config** %6, align 8
  %59 = icmp ne %struct.wol_config* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.wol_config*, %struct.wol_config** %6, align 8
  %62 = bitcast %struct.wol_config* %61 to i32*
  %63 = getelementptr inbounds %struct.cmd_ds_host_sleep, %struct.cmd_ds_host_sleep* %7, i32 0, i32 0
  %64 = bitcast %struct.TYPE_3__* %63 to i32*
  %65 = call i32 @memcpy(i32* %62, i32* %64, i32 4)
  br label %66

66:                                               ; preds = %60, %57
  br label %73

67:                                               ; preds = %45
  %68 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %69 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @netdev_info(i32 %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %67, %66
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @__lbs_cmd(%struct.lbs_private*, i32, %struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @netdev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
