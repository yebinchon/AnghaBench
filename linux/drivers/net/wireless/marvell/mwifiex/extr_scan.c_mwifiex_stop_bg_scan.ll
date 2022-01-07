; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_stop_bg_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_stop_bg_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mwifiex_bg_scan_cfg = type { i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"bgscan already stopped!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWIFIEX_BSS_MODE_INFRA = common dso_local global i32 0, align 4
@MWIFIEX_BGSCAN_ACT_SET = common dso_local global i32 0, align 4
@HostCmd_CMD_802_11_BG_SCAN_CONFIG = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_stop_bg_scan(%struct.mwifiex_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.mwifiex_bg_scan_cfg*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  %5 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %6 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %11 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %49

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mwifiex_bg_scan_cfg* @kzalloc(i32 12, i32 %17)
  store %struct.mwifiex_bg_scan_cfg* %18, %struct.mwifiex_bg_scan_cfg** %4, align 8
  %19 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %4, align 8
  %20 = icmp ne %struct.mwifiex_bg_scan_cfg* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %49

24:                                               ; preds = %16
  %25 = load i32, i32* @MWIFIEX_BSS_MODE_INFRA, align 4
  %26 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %4, align 8
  %27 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @MWIFIEX_BGSCAN_ACT_SET, align 4
  %29 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %4, align 8
  %30 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %4, align 8
  %32 = getelementptr inbounds %struct.mwifiex_bg_scan_cfg, %struct.mwifiex_bg_scan_cfg* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %34 = load i32, i32* @HostCmd_CMD_802_11_BG_SCAN_CONFIG, align 4
  %35 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %36 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %4, align 8
  %37 = call i64 @mwifiex_send_cmd(%struct.mwifiex_private* %33, i32 %34, i32 %35, i32 0, %struct.mwifiex_bg_scan_cfg* %36, i32 1)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %24
  %40 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %4, align 8
  %41 = call i32 @kfree(%struct.mwifiex_bg_scan_cfg* %40)
  %42 = load i32, i32* @EFAULT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %49

44:                                               ; preds = %24
  %45 = load %struct.mwifiex_bg_scan_cfg*, %struct.mwifiex_bg_scan_cfg** %4, align 8
  %46 = call i32 @kfree(%struct.mwifiex_bg_scan_cfg* %45)
  %47 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %48 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %44, %39, %21, %9
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local %struct.mwifiex_bg_scan_cfg* @kzalloc(i32, i32) #1

declare dso_local i64 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, %struct.mwifiex_bg_scan_cfg*, i32) #1

declare dso_local i32 @kfree(%struct.mwifiex_bg_scan_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
