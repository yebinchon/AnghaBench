; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_tdls.c_mwifiex_tdls_process_config_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_tdls.c_mwifiex_tdls_process_config_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.mwifiex_sta_node = type { i64 }
%struct.mwifiex_ds_tdls_oper = type { i32, i32 }

@TDLS_SETUP_FAILURE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"link absent for peer %pM; cannot config\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MWIFIEX_TDLS_CONFIG_LINK = common dso_local global i32 0, align 4
@HostCmd_CMD_TDLS_OPER = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, i32*)* @mwifiex_tdls_process_config_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_tdls_process_config_link(%struct.mwifiex_private* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mwifiex_sta_node*, align 8
  %7 = alloca %struct.mwifiex_ds_tdls_oper, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = call i32 @memset(%struct.mwifiex_ds_tdls_oper* %7, i32 0, i32 8)
  %9 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private* %9, i32* %10)
  store %struct.mwifiex_sta_node* %11, %struct.mwifiex_sta_node** %6, align 8
  %12 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %13 = icmp ne %struct.mwifiex_sta_node* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %16 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TDLS_SETUP_FAILURE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14, %2
  %21 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %22 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @mwifiex_dbg(i32 %23, i32 %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32* %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %40

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.mwifiex_ds_tdls_oper, %struct.mwifiex_ds_tdls_oper* %7, i32 0, i32 1
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = call i32 @memcpy(i32* %30, i32* %31, i32 %32)
  %34 = load i32, i32* @MWIFIEX_TDLS_CONFIG_LINK, align 4
  %35 = getelementptr inbounds %struct.mwifiex_ds_tdls_oper, %struct.mwifiex_ds_tdls_oper* %7, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %37 = load i32, i32* @HostCmd_CMD_TDLS_OPER, align 4
  %38 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %39 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %36, i32 %37, i32 %38, i32 0, %struct.mwifiex_ds_tdls_oper* %7, i32 1)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %29, %20
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @memset(%struct.mwifiex_ds_tdls_oper*, i32, i32) #1

declare dso_local %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private*, i32*) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, %struct.mwifiex_ds_tdls_oper*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
