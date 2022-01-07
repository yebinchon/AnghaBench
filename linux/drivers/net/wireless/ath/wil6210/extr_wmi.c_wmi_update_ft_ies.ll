; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_update_ft_ies.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_update_ft_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_vif = type { i32 }
%struct.wil6210_priv = type { i32 }
%struct.wmi_update_ft_ies_cmd = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"wraparound. ie len %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WMI_UPDATE_FT_IES_CMDID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"update ft ies failed : %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmi_update_ft_ies(%struct.wil6210_vif* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wil6210_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wil6210_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wmi_update_ft_ies_cmd*, align 8
  %11 = alloca i32, align 4
  store %struct.wil6210_vif* %0, %struct.wil6210_vif** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %13 = call %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif* %12)
  store %struct.wil6210_priv* %13, %struct.wil6210_priv** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %16, %3
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 8, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @wil_err(%struct.wil6210_priv* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %70

31:                                               ; preds = %17
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.wmi_update_ft_ies_cmd* @kzalloc(i32 %32, i32 %33)
  store %struct.wmi_update_ft_ies_cmd* %34, %struct.wmi_update_ft_ies_cmd** %10, align 8
  %35 = load %struct.wmi_update_ft_ies_cmd*, %struct.wmi_update_ft_ies_cmd** %10, align 8
  %36 = icmp ne %struct.wmi_update_ft_ies_cmd* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %11, align 4
  br label %61

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @cpu_to_le16(i32 %41)
  %43 = load %struct.wmi_update_ft_ies_cmd*, %struct.wmi_update_ft_ies_cmd** %10, align 8
  %44 = getelementptr inbounds %struct.wmi_update_ft_ies_cmd, %struct.wmi_update_ft_ies_cmd* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.wmi_update_ft_ies_cmd*, %struct.wmi_update_ft_ies_cmd** %10, align 8
  %46 = getelementptr inbounds %struct.wmi_update_ft_ies_cmd, %struct.wmi_update_ft_ies_cmd* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @memcpy(i32 %47, i8* %48, i32 %49)
  %51 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %52 = load i32, i32* @WMI_UPDATE_FT_IES_CMDID, align 4
  %53 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %54 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.wmi_update_ft_ies_cmd*, %struct.wmi_update_ft_ies_cmd** %10, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @wmi_send(%struct.wil6210_priv* %51, i32 %52, i32 %55, %struct.wmi_update_ft_ies_cmd* %56, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load %struct.wmi_update_ft_ies_cmd*, %struct.wmi_update_ft_ies_cmd** %10, align 8
  %60 = call i32 @kfree(%struct.wmi_update_ft_ies_cmd* %59)
  br label %61

61:                                               ; preds = %40, %37
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @wil_err(%struct.wil6210_priv* %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %25
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, i32) #1

declare dso_local %struct.wmi_update_ft_ies_cmd* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @wmi_send(%struct.wil6210_priv*, i32, i32, %struct.wmi_update_ft_ies_cmd*, i32) #1

declare dso_local i32 @kfree(%struct.wmi_update_ft_ies_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
