; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_enter_deep_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_enter_deep_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.cmd_header = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"send DEEP_SLEEP command\0A\00", align 1
@CMD_802_11_DEEP_SLEEP = common dso_local global i32 0, align 4
@lbs_cmd_copyback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"DEEP_SLEEP cmd failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbs_private*)* @if_sdio_enter_deep_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_sdio_enter_deep_sleep(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd_header, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  store i32 -1, i32* %3, align 4
  %5 = call i32 @memset(%struct.cmd_header* %4, i32 0, i32 4)
  %6 = call i32 @lbs_deb_sdio(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %8 = load i32, i32* @CMD_802_11_DEEP_SLEEP, align 4
  %9 = load i32, i32* @lbs_cmd_copyback, align 4
  %10 = ptrtoint %struct.cmd_header* %4 to i64
  %11 = call i32 @__lbs_cmd(%struct.lbs_private* %7, i32 %8, %struct.cmd_header* %4, i32 4, i32 %9, i64 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %16 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @netdev_err(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %14, %1
  %20 = call i32 @mdelay(i32 200)
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @memset(%struct.cmd_header*, i32, i32) #1

declare dso_local i32 @lbs_deb_sdio(i8*) #1

declare dso_local i32 @__lbs_cmd(%struct.lbs_private*, i32, %struct.cmd_header*, i32, i32, i64) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
