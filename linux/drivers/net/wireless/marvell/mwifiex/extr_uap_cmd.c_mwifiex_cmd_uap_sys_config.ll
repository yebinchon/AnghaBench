; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_cmd.c_mwifiex_cmd_uap_sys_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_cmd.c_mwifiex_cmd_uap_sys_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host_cmd_ds_command = type { i8*, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.host_cmd_ds_sys_config = type { i32*, i8* }

@HostCmd_CMD_UAP_SYS_CONFIG = common dso_local global i64 0, align 8
@S_DS_GEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host_cmd_ds_command*, i64, i32, i8*)* @mwifiex_cmd_uap_sys_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cmd_uap_sys_config(%struct.host_cmd_ds_command* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.host_cmd_ds_command*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.host_cmd_ds_sys_config*, align 8
  store %struct.host_cmd_ds_command* %0, %struct.host_cmd_ds_command** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i64, i64* @HostCmd_CMD_UAP_SYS_CONFIG, align 8
  %16 = call i8* @cpu_to_le16(i64 %15)
  %17 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %18 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load i64, i64* @S_DS_GEN, align 8
  %20 = add i64 16, %19
  store i64 %20, i64* %11, align 8
  %21 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %22 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = bitcast i32* %23 to %struct.host_cmd_ds_sys_config*
  store %struct.host_cmd_ds_sys_config* %24, %struct.host_cmd_ds_sys_config** %14, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i8* @cpu_to_le16(i64 %25)
  %27 = load %struct.host_cmd_ds_sys_config*, %struct.host_cmd_ds_sys_config** %14, align 8
  %28 = getelementptr inbounds %struct.host_cmd_ds_sys_config, %struct.host_cmd_ds_sys_config* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.host_cmd_ds_sys_config*, %struct.host_cmd_ds_sys_config** %14, align 8
  %30 = getelementptr inbounds %struct.host_cmd_ds_sys_config, %struct.host_cmd_ds_sys_config* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %10, align 8
  %32 = load i32, i32* %8, align 4
  switch i32 %32, label %57 [
    i32 129, label %33
    i32 128, label %45
  ]

33:                                               ; preds = %4
  %34 = load i64, i64* %11, align 8
  store i64 %34, i64* %12, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @mwifiex_uap_bss_param_prepare(i32* %35, i8* %36, i64* %12)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 -1, i32* %5, align 4
  br label %59

40:                                               ; preds = %33
  %41 = load i64, i64* %12, align 8
  %42 = call i8* @cpu_to_le16(i64 %41)
  %43 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %44 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  br label %58

45:                                               ; preds = %4
  %46 = load i64, i64* %11, align 8
  store i64 %46, i64* %13, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @mwifiex_uap_custom_ie_prepare(i32* %47, i8* %48, i64* %13)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 -1, i32* %5, align 4
  br label %59

52:                                               ; preds = %45
  %53 = load i64, i64* %13, align 8
  %54 = call i8* @cpu_to_le16(i64 %53)
  %55 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %56 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  br label %58

57:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %59

58:                                               ; preds = %52, %40
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %57, %51, %39
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @mwifiex_uap_bss_param_prepare(i32*, i8*, i64*) #1

declare dso_local i32 @mwifiex_uap_custom_ie_prepare(i32*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
