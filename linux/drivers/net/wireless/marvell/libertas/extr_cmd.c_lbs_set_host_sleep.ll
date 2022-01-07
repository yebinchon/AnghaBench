; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_set_host_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_set_host_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i64, i32, i32, i32 }
%struct.cmd_header = type { i32 }
%struct.wol_config = type { i32 }

@EHS_REMOVE_WAKEUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Host sleep configuration failed: %d\0A\00", align 1
@PS_STATE_FULL_POWER = common dso_local global i64 0, align 8
@CMD_802_11_HOST_SLEEP_ACTIVATE = common dso_local global i32 0, align 4
@lbs_ret_host_sleep_activate = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"HOST_SLEEP_ACTIVATE failed: %d\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"host_sleep_q: timer expired\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"host sleep: already enabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_set_host_sleep(%struct.lbs_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmd_header, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @EHS_REMOVE_WAKEUP, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %76

12:                                               ; preds = %2
  %13 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %14 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %70

17:                                               ; preds = %12
  %18 = call i32 @memset(%struct.cmd_header* %6, i32 0, i32 4)
  %19 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %20 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %21 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @lbs_host_sleep_cfg(%struct.lbs_private* %19, i32 %22, %struct.wol_config* null)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %28 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @netdev_info(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %88

33:                                               ; preds = %17
  %34 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %35 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PS_STATE_FULL_POWER, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %41 = load i32, i32* @CMD_802_11_HOST_SLEEP_ACTIVATE, align 4
  %42 = load i32, i32* @lbs_ret_host_sleep_activate, align 4
  %43 = call i32 @__lbs_cmd(%struct.lbs_private* %40, i32 %41, %struct.cmd_header* %6, i32 4, i32 %42, i32 0)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %48 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @netdev_info(i32 %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %46, %39
  br label %53

53:                                               ; preds = %52, %33
  %54 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %55 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %58 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @HZ, align 4
  %61 = mul nsw i32 10, %60
  %62 = call i32 @wait_event_interruptible_timeout(i32 %56, i32 %59, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %53
  %65 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %66 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @netdev_err(i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %69

69:                                               ; preds = %64, %53
  br label %75

70:                                               ; preds = %12
  %71 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %72 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @netdev_err(i32 %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %70, %69
  br label %86

76:                                               ; preds = %2
  %77 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %78 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @lbs_host_sleep_cfg(%struct.lbs_private* %82, i32 %83, %struct.wol_config* null)
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %81, %76
  br label %86

86:                                               ; preds = %85, %75
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %26
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @memset(%struct.cmd_header*, i32, i32) #1

declare dso_local i32 @lbs_host_sleep_cfg(%struct.lbs_private*, i32, %struct.wol_config*) #1

declare dso_local i32 @netdev_info(i32, i8*, i32) #1

declare dso_local i32 @__lbs_cmd(%struct.lbs_private*, i32, %struct.cmd_header*, i32, i32, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
