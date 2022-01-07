; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_set_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_set_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_vif = type { i32 }
%struct.wil6210_priv = type { i32 }
%struct.wmi_set_appie_cmd = type { i64, i32, i32 }

@wmi_set_ie.names = internal constant [133 x i8*] [i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [21 x i8] c"WMI_FRAME_PROBE_RESP\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"PROBE_REQ\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"BEACON\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"WMI_FRAME_ASSOC_RESP\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"WMI_FRAME_ASSOC_REQ\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WMI_SET_APPIE_CMDID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"set_ie(%d %s) failed : %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmi_set_ie(%struct.wil6210_vif* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.wil6210_vif*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.wil6210_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.wmi_set_appie_cmd*, align 8
  %13 = alloca i8*, align 8
  store %struct.wil6210_vif* %0, %struct.wil6210_vif** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %15 = call %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif* %14)
  store %struct.wil6210_priv* %15, %struct.wil6210_priv** %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = add i64 16, %16
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %10, align 4
  br label %61

24:                                               ; preds = %4
  %25 = load i64, i64* %11, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.wmi_set_appie_cmd* @kzalloc(i64 %25, i32 %26)
  store %struct.wmi_set_appie_cmd* %27, %struct.wmi_set_appie_cmd** %12, align 8
  %28 = load %struct.wmi_set_appie_cmd*, %struct.wmi_set_appie_cmd** %12, align 8
  %29 = icmp ne %struct.wmi_set_appie_cmd* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %10, align 4
  br label %61

33:                                               ; preds = %24
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i64 0, i64* %7, align 8
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.wmi_set_appie_cmd*, %struct.wmi_set_appie_cmd** %12, align 8
  %40 = getelementptr inbounds %struct.wmi_set_appie_cmd, %struct.wmi_set_appie_cmd* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @cpu_to_le16(i64 %41)
  %43 = load %struct.wmi_set_appie_cmd*, %struct.wmi_set_appie_cmd** %12, align 8
  %44 = getelementptr inbounds %struct.wmi_set_appie_cmd, %struct.wmi_set_appie_cmd* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.wmi_set_appie_cmd*, %struct.wmi_set_appie_cmd** %12, align 8
  %46 = getelementptr inbounds %struct.wmi_set_appie_cmd, %struct.wmi_set_appie_cmd* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @memcpy(i32 %47, i8* %48, i64 %49)
  %51 = load %struct.wil6210_priv*, %struct.wil6210_priv** %9, align 8
  %52 = load i32, i32* @WMI_SET_APPIE_CMDID, align 4
  %53 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  %54 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.wmi_set_appie_cmd*, %struct.wmi_set_appie_cmd** %12, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @wmi_send(%struct.wil6210_priv* %51, i32 %52, i32 %55, %struct.wmi_set_appie_cmd* %56, i64 %57)
  store i32 %58, i32* %10, align 4
  %59 = load %struct.wmi_set_appie_cmd*, %struct.wmi_set_appie_cmd** %12, align 8
  %60 = call i32 @kfree(%struct.wmi_set_appie_cmd* %59)
  br label %61

61:                                               ; preds = %37, %30, %21
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %61
  %65 = load i64, i64* %6, align 8
  %66 = call i64 @ARRAY_SIZE(i8** getelementptr inbounds ([133 x i8*], [133 x i8*]* @wmi_set_ie.names, i64 0, i64 0))
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i64, i64* %6, align 8
  %70 = getelementptr inbounds [133 x i8*], [133 x i8*]* @wmi_set_ie.names, i64 0, i64 %69
  %71 = load i8*, i8** %70, align 8
  br label %73

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %68
  %74 = phi i8* [ %71, %68 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %72 ]
  store i8* %74, i8** %13, align 8
  %75 = load %struct.wil6210_priv*, %struct.wil6210_priv** %9, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @wil_err(%struct.wil6210_priv* %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i64 %76, i8* %77, i32 %78)
  br label %80

80:                                               ; preds = %73, %61
  %81 = load i32, i32* %10, align 4
  ret i32 %81
}

declare dso_local %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif*) #1

declare dso_local %struct.wmi_set_appie_cmd* @kzalloc(i64, i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @wmi_send(%struct.wil6210_priv*, i32, i32, %struct.wmi_set_appie_cmd*, i64) #1

declare dso_local i32 @kfree(%struct.wmi_set_appie_cmd*) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
