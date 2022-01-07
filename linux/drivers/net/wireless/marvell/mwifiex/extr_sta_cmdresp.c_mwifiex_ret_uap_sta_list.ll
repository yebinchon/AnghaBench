; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_uap_sta_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_uap_sta_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.host_cmd_ds_command = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.host_cmd_ds_sta_list }
%struct.host_cmd_ds_sta_list = type { i32, i32 }
%struct.mwifiex_ie_types_sta_info = type { i32, i32 }
%struct.mwifiex_sta_node = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*)* @mwifiex_ret_uap_sta_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_ret_uap_sta_list(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.host_cmd_ds_command*, align 8
  %5 = alloca %struct.host_cmd_ds_sta_list*, align 8
  %6 = alloca %struct.mwifiex_ie_types_sta_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mwifiex_sta_node*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %4, align 8
  %9 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %4, align 8
  %10 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.host_cmd_ds_sta_list* %11, %struct.host_cmd_ds_sta_list** %5, align 8
  %12 = load %struct.host_cmd_ds_sta_list*, %struct.host_cmd_ds_sta_list** %5, align 8
  %13 = getelementptr inbounds %struct.host_cmd_ds_sta_list, %struct.host_cmd_ds_sta_list* %12, i32 0, i32 1
  %14 = bitcast i32* %13 to i8*
  %15 = bitcast i8* %14 to %struct.mwifiex_ie_types_sta_info*
  store %struct.mwifiex_ie_types_sta_info* %15, %struct.mwifiex_ie_types_sta_info** %6, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %45, %2
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.host_cmd_ds_sta_list*, %struct.host_cmd_ds_sta_list** %5, align 8
  %19 = getelementptr inbounds %struct.host_cmd_ds_sta_list, %struct.host_cmd_ds_sta_list* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %16
  %24 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %25 = load %struct.mwifiex_ie_types_sta_info*, %struct.mwifiex_ie_types_sta_info** %6, align 8
  %26 = getelementptr inbounds %struct.mwifiex_ie_types_sta_info, %struct.mwifiex_ie_types_sta_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private* %24, i32 %27)
  store %struct.mwifiex_sta_node* %28, %struct.mwifiex_sta_node** %8, align 8
  %29 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %8, align 8
  %30 = icmp ne %struct.mwifiex_sta_node* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %45

36:                                               ; preds = %23
  %37 = load %struct.mwifiex_ie_types_sta_info*, %struct.mwifiex_ie_types_sta_info** %6, align 8
  %38 = getelementptr inbounds %struct.mwifiex_ie_types_sta_info, %struct.mwifiex_ie_types_sta_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %8, align 8
  %41 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.mwifiex_ie_types_sta_info*, %struct.mwifiex_ie_types_sta_info** %6, align 8
  %44 = getelementptr inbounds %struct.mwifiex_ie_types_sta_info, %struct.mwifiex_ie_types_sta_info* %43, i32 1
  store %struct.mwifiex_ie_types_sta_info* %44, %struct.mwifiex_ie_types_sta_info** %6, align 8
  br label %45

45:                                               ; preds = %36, %35
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %16

48:                                               ; preds = %16
  ret i32 0
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
