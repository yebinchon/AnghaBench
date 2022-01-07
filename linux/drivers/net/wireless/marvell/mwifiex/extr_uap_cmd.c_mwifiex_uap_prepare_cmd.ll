; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_cmd.c_mwifiex_uap_prepare_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_cmd.c_mwifiex_uap_prepare_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.host_cmd_ds_command = type { i8*, i8* }

@S_DS_GEN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"PREP_CMD: unknown cmd %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_uap_prepare_cmd(%struct.mwifiex_private* %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mwifiex_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.host_cmd_ds_command*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %15 = load i8*, i8** %13, align 8
  %16 = bitcast i8* %15 to %struct.host_cmd_ds_command*
  store %struct.host_cmd_ds_command* %16, %struct.host_cmd_ds_command** %14, align 8
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %52 [
    i32 128, label %18
    i32 131, label %27
    i32 130, label %27
    i32 133, label %27
    i32 134, label %27
    i32 129, label %36
    i32 132, label %44
  ]

18:                                               ; preds = %6
  %19 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i8*, i8** %12, align 8
  %23 = call i32 @mwifiex_cmd_uap_sys_config(%struct.host_cmd_ds_command* %19, i32 %20, i32 %21, i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 -1, i32* %7, align 4
  br label %60

26:                                               ; preds = %18
  br label %59

27:                                               ; preds = %6, %6, %6, %6
  %28 = load i32, i32* %9, align 4
  %29 = call i8* @cpu_to_le16(i32 %28)
  %30 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %31 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* @S_DS_GEN, align 4
  %33 = call i8* @cpu_to_le16(i32 %32)
  %34 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %35 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  br label %59

36:                                               ; preds = %6
  %37 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %38 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %14, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = call i32 @mwifiex_cmd_uap_sta_deauth(%struct.mwifiex_private* %37, %struct.host_cmd_ds_command* %38, i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 -1, i32* %7, align 4
  br label %60

43:                                               ; preds = %36
  br label %59

44:                                               ; preds = %6
  %45 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @mwifiex_cmd_issue_chan_report_request(%struct.mwifiex_private* %45, i8* %46, i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 -1, i32* %7, align 4
  br label %60

51:                                               ; preds = %44
  br label %59

52:                                               ; preds = %6
  %53 = load %struct.mwifiex_private*, %struct.mwifiex_private** %8, align 8
  %54 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ERROR, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @mwifiex_dbg(i32 %55, i32 %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %57)
  store i32 -1, i32* %7, align 4
  br label %60

59:                                               ; preds = %51, %43, %27, %26
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %59, %52, %50, %42, %25
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @mwifiex_cmd_uap_sys_config(%struct.host_cmd_ds_command*, i32, i32, i8*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @mwifiex_cmd_uap_sta_deauth(%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i8*) #1

declare dso_local i32 @mwifiex_cmd_issue_chan_report_request(%struct.mwifiex_private*, i8*, i8*) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
