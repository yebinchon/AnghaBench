; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_tdls.c_mwifiex_tdls_process_create_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_tdls.c_mwifiex_tdls_process_create_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.mwifiex_sta_node = type { i64 }
%struct.mwifiex_ds_tdls_oper = type { i32, i32 }

@TDLS_SETUP_INPROGRESS = common dso_local global i64 0, align 8
@WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Setup already in progress for peer %pM\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MWIFIEX_TDLS_CREATE_LINK = common dso_local global i32 0, align 4
@HostCmd_CMD_TDLS_OPER = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, i32*)* @mwifiex_tdls_process_create_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_tdls_process_create_link(%struct.mwifiex_private* %0, i32* %1) #0 {
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
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %16 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TDLS_SETUP_INPROGRESS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %22 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @WARN, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @mwifiex_dbg(i32 %23, i32 %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32* %25)
  store i32 0, i32* %3, align 4
  br label %53

27:                                               ; preds = %14, %2
  %28 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call %struct.mwifiex_sta_node* @mwifiex_add_sta_entry(%struct.mwifiex_private* %28, i32* %29)
  store %struct.mwifiex_sta_node* %30, %struct.mwifiex_sta_node** %6, align 8
  %31 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %32 = icmp ne %struct.mwifiex_sta_node* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %53

36:                                               ; preds = %27
  %37 = load i64, i64* @TDLS_SETUP_INPROGRESS, align 8
  %38 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %6, align 8
  %39 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @mwifiex_hold_tdls_packets(%struct.mwifiex_private* %40, i32* %41)
  %43 = getelementptr inbounds %struct.mwifiex_ds_tdls_oper, %struct.mwifiex_ds_tdls_oper* %7, i32 0, i32 1
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @ETH_ALEN, align 4
  %46 = call i32 @memcpy(i32* %43, i32* %44, i32 %45)
  %47 = load i32, i32* @MWIFIEX_TDLS_CREATE_LINK, align 4
  %48 = getelementptr inbounds %struct.mwifiex_ds_tdls_oper, %struct.mwifiex_ds_tdls_oper* %7, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %50 = load i32, i32* @HostCmd_CMD_TDLS_OPER, align 4
  %51 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %52 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %49, i32 %50, i32 %51, i32 0, %struct.mwifiex_ds_tdls_oper* %7, i32 1)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %36, %33, %20
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @memset(%struct.mwifiex_ds_tdls_oper*, i32, i32) #1

declare dso_local %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private*, i32*) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, i32*) #1

declare dso_local %struct.mwifiex_sta_node* @mwifiex_add_sta_entry(%struct.mwifiex_private*, i32*) #1

declare dso_local i32 @mwifiex_hold_tdls_packets(%struct.mwifiex_private*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, %struct.mwifiex_ds_tdls_oper*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
