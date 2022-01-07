; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_mem_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_mem_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host_cmd_ds_command = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mwifiex_ds_mem_rw = type { i32, i32 }
%struct.host_cmd_ds_mem_access = type { i8*, i8*, i8* }

@HostCmd_CMD_MEM_ACCESS = common dso_local global i64 0, align 8
@S_DS_GEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host_cmd_ds_command*, i64, i8*)* @mwifiex_cmd_mem_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cmd_mem_access(%struct.host_cmd_ds_command* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.host_cmd_ds_command*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mwifiex_ds_mem_rw*, align 8
  %8 = alloca %struct.host_cmd_ds_mem_access*, align 8
  store %struct.host_cmd_ds_command* %0, %struct.host_cmd_ds_command** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.mwifiex_ds_mem_rw*
  store %struct.mwifiex_ds_mem_rw* %10, %struct.mwifiex_ds_mem_rw** %7, align 8
  %11 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %12 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to i8*
  %15 = bitcast i8* %14 to %struct.host_cmd_ds_mem_access*
  store %struct.host_cmd_ds_mem_access* %15, %struct.host_cmd_ds_mem_access** %8, align 8
  %16 = load i64, i64* @HostCmd_CMD_MEM_ACCESS, align 8
  %17 = call i8* @cpu_to_le16(i64 %16)
  %18 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %19 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load i64, i64* @S_DS_GEN, align 8
  %21 = add i64 24, %20
  %22 = call i8* @cpu_to_le16(i64 %21)
  %23 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %24 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i8* @cpu_to_le16(i64 %25)
  %27 = load %struct.host_cmd_ds_mem_access*, %struct.host_cmd_ds_mem_access** %8, align 8
  %28 = getelementptr inbounds %struct.host_cmd_ds_mem_access, %struct.host_cmd_ds_mem_access* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.mwifiex_ds_mem_rw*, %struct.mwifiex_ds_mem_rw** %7, align 8
  %30 = getelementptr inbounds %struct.mwifiex_ds_mem_rw, %struct.mwifiex_ds_mem_rw* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @cpu_to_le32(i32 %31)
  %33 = load %struct.host_cmd_ds_mem_access*, %struct.host_cmd_ds_mem_access** %8, align 8
  %34 = getelementptr inbounds %struct.host_cmd_ds_mem_access, %struct.host_cmd_ds_mem_access* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.mwifiex_ds_mem_rw*, %struct.mwifiex_ds_mem_rw** %7, align 8
  %36 = getelementptr inbounds %struct.mwifiex_ds_mem_rw, %struct.mwifiex_ds_mem_rw* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @cpu_to_le32(i32 %37)
  %39 = load %struct.host_cmd_ds_mem_access*, %struct.host_cmd_ds_mem_access** %8, align 8
  %40 = getelementptr inbounds %struct.host_cmd_ds_mem_access, %struct.host_cmd_ds_mem_access* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  ret i32 0
}

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
