; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_add_cipher_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_add_cipher_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_vif = type { i32 }
%struct.wil6210_priv = type { i32 }
%struct.wmi_add_cipher_key_cmd = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@WMI_KEY_USE_APPLY_PTK = common dso_local global i32 0, align 4
@WMI_MAC_LEN = common dso_local global i32 0, align 4
@WMI_ADD_CIPHER_KEY_CMDID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmi_add_cipher_key(%struct.wil6210_vif* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wil6210_vif*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.wil6210_priv*, align 8
  %15 = alloca %struct.wmi_add_cipher_key_cmd, align 4
  store %struct.wil6210_vif* %0, %struct.wil6210_vif** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.wil6210_vif*, %struct.wil6210_vif** %8, align 8
  %17 = call %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif* %16)
  store %struct.wil6210_priv* %17, %struct.wil6210_priv** %14, align 8
  %18 = getelementptr inbounds %struct.wmi_add_cipher_key_cmd, %struct.wmi_add_cipher_key_cmd* %15, i32 0, i32 0
  %19 = load i32, i32* %13, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.wmi_add_cipher_key_cmd, %struct.wmi_add_cipher_key_cmd* %15, i32 0, i32 1
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.wmi_add_cipher_key_cmd, %struct.wmi_add_cipher_key_cmd* %15, i32 0, i32 2
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.wmi_add_cipher_key_cmd, %struct.wmi_add_cipher_key_cmd* %15, i32 0, i32 3
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.wmi_add_cipher_key_cmd, %struct.wmi_add_cipher_key_cmd* %15, i32 0, i32 4
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %24, align 4
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ugt i64 %27, 4
  br i1 %28, label %29, label %32

29:                                               ; preds = %6
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %70

32:                                               ; preds = %6
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %12, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @WMI_KEY_USE_APPLY_PTK, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %70

45:                                               ; preds = %38, %35
  %46 = load i8*, i8** %12, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.wmi_add_cipher_key_cmd, %struct.wmi_add_cipher_key_cmd* %15, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %12, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @memcpy(i32 %50, i8* %51, i32 %52)
  br label %54

54:                                               ; preds = %48, %45
  %55 = load i8*, i8** %10, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.wmi_add_cipher_key_cmd, %struct.wmi_add_cipher_key_cmd* %15, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = load i32, i32* @WMI_MAC_LEN, align 4
  %62 = call i32 @memcpy(i32 %59, i8* %60, i32 %61)
  br label %63

63:                                               ; preds = %57, %54
  %64 = load %struct.wil6210_priv*, %struct.wil6210_priv** %14, align 8
  %65 = load i32, i32* @WMI_ADD_CIPHER_KEY_CMDID, align 4
  %66 = load %struct.wil6210_vif*, %struct.wil6210_vif** %8, align 8
  %67 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @wmi_send(%struct.wil6210_priv* %64, i32 %65, i32 %68, %struct.wmi_add_cipher_key_cmd* %15, i32 20)
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %63, %42, %29
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @wmi_send(%struct.wil6210_priv*, i32, i32, %struct.wmi_add_cipher_key_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
