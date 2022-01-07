; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_set_ps_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cmd.c_lbs_set_ps_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32 }
%struct.cmd_ds_802_11_ps_mode = type { %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i8* }

@PS_MODE_ACTION_ENTER_PS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"PS_MODE: action ENTER_PS\0A\00", align 1
@PS_MODE_ACTION_EXIT_PS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"PS_MODE: action EXIT_PS\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"PS_MODE: unknown action 0x%X\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CMD_802_11_PS_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_set_ps_mode(%struct.lbs_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmd_ds_802_11_ps_mode, align 8
  %8 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = call i32 @memset(%struct.cmd_ds_802_11_ps_mode* %7, i32 0, i32 24)
  %10 = call i8* @cpu_to_le16(i32 24)
  %11 = getelementptr inbounds %struct.cmd_ds_802_11_ps_mode, %struct.cmd_ds_802_11_ps_mode* %7, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i8* @cpu_to_le16(i32 %13)
  %15 = getelementptr inbounds %struct.cmd_ds_802_11_ps_mode, %struct.cmd_ds_802_11_ps_mode* %7, i32 0, i32 2
  store i8* %14, i8** %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @PS_MODE_ACTION_ENTER_PS, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = call i32 (i8*, ...) @lbs_deb_cmd(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = call i8* @cpu_to_le16(i32 1)
  %22 = getelementptr inbounds %struct.cmd_ds_802_11_ps_mode, %struct.cmd_ds_802_11_ps_mode* %7, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  br label %35

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @PS_MODE_ACTION_EXIT_PS, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 (i8*, ...) @lbs_deb_cmd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %34

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (i8*, ...) @lbs_deb_cmd(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %48

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %19
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %40 = load i32, i32* @CMD_802_11_PS_MODE, align 4
  %41 = call i32 @lbs_cmd_with_response(%struct.lbs_private* %39, i32 %40, %struct.cmd_ds_802_11_ps_mode* %7)
  store i32 %41, i32* %8, align 4
  br label %47

42:                                               ; preds = %35
  %43 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %44 = load i32, i32* @CMD_802_11_PS_MODE, align 4
  %45 = getelementptr inbounds %struct.cmd_ds_802_11_ps_mode, %struct.cmd_ds_802_11_ps_mode* %7, i32 0, i32 0
  %46 = call i32 @lbs_cmd_async(%struct.lbs_private* %43, i32 %44, %struct.TYPE_2__* %45, i32 24)
  br label %47

47:                                               ; preds = %42, %38
  br label %48

48:                                               ; preds = %47, %29
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local i32 @memset(%struct.cmd_ds_802_11_ps_mode*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lbs_deb_cmd(i8*, ...) #1

declare dso_local i32 @lbs_cmd_with_response(%struct.lbs_private*, i32, %struct.cmd_ds_802_11_ps_mode*) #1

declare dso_local i32 @lbs_cmd_async(%struct.lbs_private*, i32, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
