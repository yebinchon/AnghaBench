; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_mem_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_mem_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.host_cmd_ds_command = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.host_cmd_ds_mem_access = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*)* @mwifiex_ret_mem_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_ret_mem_access(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1, i8* %2) #0 {
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.host_cmd_ds_command*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.host_cmd_ds_mem_access*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %9 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = bitcast i32* %10 to i8*
  %12 = bitcast i8* %11 to %struct.host_cmd_ds_mem_access*
  store %struct.host_cmd_ds_mem_access* %12, %struct.host_cmd_ds_mem_access** %7, align 8
  %13 = load %struct.host_cmd_ds_mem_access*, %struct.host_cmd_ds_mem_access** %7, align 8
  %14 = getelementptr inbounds %struct.host_cmd_ds_mem_access, %struct.host_cmd_ds_mem_access* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @le32_to_cpu(i32 %15)
  %17 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %18 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i8* %16, i8** %19, align 8
  %20 = load %struct.host_cmd_ds_mem_access*, %struct.host_cmd_ds_mem_access** %7, align 8
  %21 = getelementptr inbounds %struct.host_cmd_ds_mem_access, %struct.host_cmd_ds_mem_access* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @le32_to_cpu(i32 %22)
  %24 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %25 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  ret i32 0
}

declare dso_local i8* @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
