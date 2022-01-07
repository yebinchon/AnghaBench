; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_addkey_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_addkey_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_add_cipher_key_cmd = type { i32, i32, i64, i32, i32, i64, i64, i64 }

@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"addkey cmd: key_index=%u key_type=%d key_usage=%d key_len=%d key_op_ctrl=%d\0A\00", align 1
@WMI_MAX_KEY_INDEX = common dso_local global i64 0, align 8
@WMI_MAX_KEY_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WEP_CRYPT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WMI_ADD_CIPHER_KEY_CMDID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_addkey_cmd(%struct.wmi* %0, i64 %1, i64 %2, i32 %3, i64 %4, i64 %5, i64* %6, i32 %7, i64* %8, i64 %9, i64* %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.wmi*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.sk_buff*, align 8
  %27 = alloca %struct.wmi_add_cipher_key_cmd*, align 8
  %28 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %14, align 8
  store i64 %1, i64* %15, align 8
  store i64 %2, i64* %16, align 8
  store i32 %3, i32* %17, align 4
  store i64 %4, i64* %18, align 8
  store i64 %5, i64* %19, align 8
  store i64* %6, i64** %20, align 8
  store i32 %7, i32* %21, align 4
  store i64* %8, i64** %22, align 8
  store i64 %9, i64* %23, align 8
  store i64* %10, i64** %24, align 8
  store i32 %11, i32* %25, align 4
  %29 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %30 = load i64, i64* %16, align 8
  %31 = load i32, i32* %17, align 4
  %32 = load i64, i64* %18, align 8
  %33 = load i64, i64* %19, align 8
  %34 = load i64, i64* %23, align 8
  %35 = call i32 @ath6kl_dbg(i32 %29, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i64 %30, i32 %31, i64 %32, i64 %33, i64 %34)
  %36 = load i64, i64* %16, align 8
  %37 = load i64, i64* @WMI_MAX_KEY_INDEX, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %49, label %39

39:                                               ; preds = %12
  %40 = load i64, i64* %19, align 8
  %41 = load i64, i64* @WMI_MAX_KEY_LEN, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = load i64*, i64** %22, align 8
  %45 = icmp eq i64* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %21, align 4
  %48 = icmp ugt i32 %47, 8
  br i1 %48, label %49, label %52

49:                                               ; preds = %46, %43, %39, %12
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %13, align 4
  br label %123

52:                                               ; preds = %46
  %53 = load i32, i32* @WEP_CRYPT, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i64*, i64** %20, align 8
  %58 = icmp eq i64* null, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %13, align 4
  br label %123

62:                                               ; preds = %56, %52
  %63 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 48)
  store %struct.sk_buff* %63, %struct.sk_buff** %26, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %65 = icmp ne %struct.sk_buff* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %13, align 4
  br label %123

69:                                               ; preds = %62
  %70 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to %struct.wmi_add_cipher_key_cmd*
  store %struct.wmi_add_cipher_key_cmd* %73, %struct.wmi_add_cipher_key_cmd** %27, align 8
  %74 = load i64, i64* %16, align 8
  %75 = load %struct.wmi_add_cipher_key_cmd*, %struct.wmi_add_cipher_key_cmd** %27, align 8
  %76 = getelementptr inbounds %struct.wmi_add_cipher_key_cmd, %struct.wmi_add_cipher_key_cmd* %75, i32 0, i32 7
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* %17, align 4
  %78 = load %struct.wmi_add_cipher_key_cmd*, %struct.wmi_add_cipher_key_cmd** %27, align 8
  %79 = getelementptr inbounds %struct.wmi_add_cipher_key_cmd, %struct.wmi_add_cipher_key_cmd* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i64, i64* %18, align 8
  %81 = load %struct.wmi_add_cipher_key_cmd*, %struct.wmi_add_cipher_key_cmd** %27, align 8
  %82 = getelementptr inbounds %struct.wmi_add_cipher_key_cmd, %struct.wmi_add_cipher_key_cmd* %81, i32 0, i32 6
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* %19, align 8
  %84 = load %struct.wmi_add_cipher_key_cmd*, %struct.wmi_add_cipher_key_cmd** %27, align 8
  %85 = getelementptr inbounds %struct.wmi_add_cipher_key_cmd, %struct.wmi_add_cipher_key_cmd* %84, i32 0, i32 5
  store i64 %83, i64* %85, align 8
  %86 = load %struct.wmi_add_cipher_key_cmd*, %struct.wmi_add_cipher_key_cmd** %27, align 8
  %87 = getelementptr inbounds %struct.wmi_add_cipher_key_cmd, %struct.wmi_add_cipher_key_cmd* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load i64*, i64** %22, align 8
  %90 = load i64, i64* %19, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @memcpy(i32 %88, i64* %89, i32 %91)
  %93 = load i64*, i64** %20, align 8
  %94 = icmp ne i64* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %69
  %96 = load %struct.wmi_add_cipher_key_cmd*, %struct.wmi_add_cipher_key_cmd** %27, align 8
  %97 = getelementptr inbounds %struct.wmi_add_cipher_key_cmd, %struct.wmi_add_cipher_key_cmd* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load i64*, i64** %20, align 8
  %100 = load i32, i32* %21, align 4
  %101 = call i32 @memcpy(i32 %98, i64* %99, i32 %100)
  br label %102

102:                                              ; preds = %95, %69
  %103 = load i64, i64* %23, align 8
  %104 = load %struct.wmi_add_cipher_key_cmd*, %struct.wmi_add_cipher_key_cmd** %27, align 8
  %105 = getelementptr inbounds %struct.wmi_add_cipher_key_cmd, %struct.wmi_add_cipher_key_cmd* %104, i32 0, i32 2
  store i64 %103, i64* %105, align 8
  %106 = load i64*, i64** %24, align 8
  %107 = icmp ne i64* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load %struct.wmi_add_cipher_key_cmd*, %struct.wmi_add_cipher_key_cmd** %27, align 8
  %110 = getelementptr inbounds %struct.wmi_add_cipher_key_cmd, %struct.wmi_add_cipher_key_cmd* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i64*, i64** %24, align 8
  %113 = load i32, i32* @ETH_ALEN, align 4
  %114 = call i32 @memcpy(i32 %111, i64* %112, i32 %113)
  br label %115

115:                                              ; preds = %108, %102
  %116 = load %struct.wmi*, %struct.wmi** %14, align 8
  %117 = load i64, i64* %15, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %119 = load i32, i32* @WMI_ADD_CIPHER_KEY_CMDID, align 4
  %120 = load i32, i32* %25, align 4
  %121 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %116, i64 %117, %struct.sk_buff* %118, i32 %119, i32 %120)
  store i32 %121, i32* %28, align 4
  %122 = load i32, i32* %28, align 4
  store i32 %122, i32* %13, align 4
  br label %123

123:                                              ; preds = %115, %66, %59, %49
  %124 = load i32, i32* %13, align 4
  ret i32 %124
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, i64, i32, i64, i64, i64) #1

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i64, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
