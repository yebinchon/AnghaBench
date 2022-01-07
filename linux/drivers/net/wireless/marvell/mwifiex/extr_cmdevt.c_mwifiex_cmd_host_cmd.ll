; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_cmd_host_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cmdevt.c_mwifiex_cmd_host_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.host_cmd_ds_command = type { i32 }
%struct.mwifiex_ds_misc_cmd = type { i32, i32 }

@CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cmd: host cmd size = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*, %struct.mwifiex_ds_misc_cmd*)* @mwifiex_cmd_host_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cmd_host_cmd(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1, %struct.mwifiex_ds_misc_cmd* %2) #0 {
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.host_cmd_ds_command*, align 8
  %6 = alloca %struct.mwifiex_ds_misc_cmd*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %5, align 8
  store %struct.mwifiex_ds_misc_cmd* %2, %struct.mwifiex_ds_misc_cmd** %6, align 8
  %7 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %8 = load %struct.mwifiex_ds_misc_cmd*, %struct.mwifiex_ds_misc_cmd** %6, align 8
  %9 = getelementptr inbounds %struct.mwifiex_ds_misc_cmd, %struct.mwifiex_ds_misc_cmd* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.mwifiex_ds_misc_cmd*, %struct.mwifiex_ds_misc_cmd** %6, align 8
  %12 = getelementptr inbounds %struct.mwifiex_ds_misc_cmd, %struct.mwifiex_ds_misc_cmd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @memcpy(%struct.host_cmd_ds_command* %7, i32 %10, i32 %13)
  %15 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %16 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CMD, align 4
  %19 = load %struct.mwifiex_ds_misc_cmd*, %struct.mwifiex_ds_misc_cmd** %6, align 8
  %20 = getelementptr inbounds %struct.mwifiex_ds_misc_cmd, %struct.mwifiex_ds_misc_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mwifiex_dbg(i32 %17, i32 %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %21)
  ret i32 0
}

declare dso_local i32 @memcpy(%struct.host_cmd_ds_command*, i32, i32) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
