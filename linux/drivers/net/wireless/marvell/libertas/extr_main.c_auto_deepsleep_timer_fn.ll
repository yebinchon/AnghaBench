; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_main.c_auto_deepsleep_timer_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_main.c_auto_deepsleep_timer_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64, i32, i32, i32, i64, i64 }
%struct.timer_list = type { i32 }
%struct.cmd_header = type { i32 }

@auto_deepsleep_timer = common dso_local global i32 0, align 4
@LBS_CONNECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Entering auto deep sleep mode...\0A\00", align 1
@CMD_802_11_DEEP_SLEEP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@priv = common dso_local global %struct.lbs_private* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @auto_deepsleep_timer_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auto_deepsleep_timer_fn(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca %struct.cmd_header, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %6 = ptrtoint %struct.lbs_private* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @auto_deepsleep_timer, align 4
  %9 = call %struct.lbs_private* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.lbs_private* %9, %struct.lbs_private** %3, align 8
  %10 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %11 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %16 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %15, i32 0, i32 5
  store i64 0, i64* %16, align 8
  br label %42

17:                                               ; preds = %1
  %18 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %19 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  %23 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %24 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %22
  %28 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %29 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @LBS_CONNECTED, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = call i32 @lbs_deb_main(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @memset(%struct.cmd_header* %4, i32 0, i32 4)
  %36 = call i32 @cpu_to_le16(i32 4)
  %37 = getelementptr inbounds %struct.cmd_header, %struct.cmd_header* %4, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %39 = load i32, i32* @CMD_802_11_DEEP_SLEEP, align 4
  %40 = call i32 @lbs_cmd_async(%struct.lbs_private* %38, i32 %39, %struct.cmd_header* %4, i32 4)
  br label %41

41:                                               ; preds = %33, %27, %22, %17
  br label %42

42:                                               ; preds = %41, %14
  %43 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %44 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %43, i32 0, i32 2
  %45 = load i64, i64* @jiffies, align 8
  %46 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %47 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @HZ, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sdiv i32 %50, 1000
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %45, %52
  %54 = call i32 @mod_timer(i32* %44, i64 %53)
  ret void
}

declare dso_local %struct.lbs_private* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @lbs_deb_main(i8*) #1

declare dso_local i32 @memset(%struct.cmd_header*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_cmd_async(%struct.lbs_private*, i32, %struct.cmd_header*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
