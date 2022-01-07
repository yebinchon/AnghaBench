; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c___ath10k_fetch_bb_timing_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c___ath10k_fetch_bb_timing_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.wmi_bb_timing_cfg_arg = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ext-fem-name\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"microsemi-lx5586\00", align 1
@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"boot bb_tx_timing 0x%x bb_xpa_timing 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.wmi_bb_timing_cfg_arg*)* @__ath10k_fetch_bb_timing_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ath10k_fetch_bb_timing_dt(%struct.ath10k* %0, %struct.wmi_bb_timing_cfg_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.wmi_bb_timing_cfg_arg*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.wmi_bb_timing_cfg_arg* %1, %struct.wmi_bb_timing_cfg_arg** %5, align 8
  %9 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %10 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %6, align 8
  %14 = load %struct.device_node*, %struct.device_node** %6, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %49

19:                                               ; preds = %2
  %20 = load %struct.device_node*, %struct.device_node** %6, align 8
  %21 = call i32 @of_property_read_string_index(%struct.device_node* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0, i8** %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %49

27:                                               ; preds = %19
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @strcmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load %struct.wmi_bb_timing_cfg_arg*, %struct.wmi_bb_timing_cfg_arg** %5, align 8
  %33 = getelementptr inbounds %struct.wmi_bb_timing_cfg_arg, %struct.wmi_bb_timing_cfg_arg* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load %struct.wmi_bb_timing_cfg_arg*, %struct.wmi_bb_timing_cfg_arg** %5, align 8
  %35 = getelementptr inbounds %struct.wmi_bb_timing_cfg_arg, %struct.wmi_bb_timing_cfg_arg* %34, i32 0, i32 1
  store i32 257, i32* %35, align 4
  br label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %49

39:                                               ; preds = %31
  %40 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %41 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %42 = load %struct.wmi_bb_timing_cfg_arg*, %struct.wmi_bb_timing_cfg_arg** %5, align 8
  %43 = getelementptr inbounds %struct.wmi_bb_timing_cfg_arg, %struct.wmi_bb_timing_cfg_arg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.wmi_bb_timing_cfg_arg*, %struct.wmi_bb_timing_cfg_arg** %5, align 8
  %46 = getelementptr inbounds %struct.wmi_bb_timing_cfg_arg, %struct.wmi_bb_timing_cfg_arg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ath10k_dbg(%struct.ath10k* %40, i32 %41, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %39, %36, %24, %16
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @of_property_read_string_index(%struct.device_node*, i8*, i32, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
