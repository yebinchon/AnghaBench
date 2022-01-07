; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_connect_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_connect_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_connect_cmd = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i8*, i32 }

@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [105 x i8] c"wmi connect bssid %pM freq %d flags 0x%x ssid_len %d type %d dot11_auth %d auth %d pairwise %d group %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ssid \00", align 1
@NONE_CRYPT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WMI_CONNECT_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_connect_cmd(%struct.wmi* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7, i8* %8, i32 %9, i8** %10, i8** %11, i32 %12, i32 %13, i8* %14) #0 {
  %16 = alloca i32, align 4
  %17 = alloca %struct.wmi*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8**, align 8
  %28 = alloca i8**, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca %struct.sk_buff*, align 8
  %33 = alloca %struct.wmi_connect_cmd*, align 8
  %34 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %17, align 8
  store i8* %1, i8** %18, align 8
  store i32 %2, i32* %19, align 4
  store i32 %3, i32* %20, align 4
  store i32 %4, i32* %21, align 4
  store i32 %5, i32* %22, align 4
  store i8* %6, i8** %23, align 8
  store i32 %7, i32* %24, align 4
  store i8* %8, i8** %25, align 8
  store i32 %9, i32* %26, align 4
  store i8** %10, i8*** %27, align 8
  store i8** %11, i8*** %28, align 8
  store i32 %12, i32* %29, align 4
  store i32 %13, i32* %30, align 4
  store i8* %14, i8** %31, align 8
  %35 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %36 = load i8**, i8*** %28, align 8
  %37 = load i32, i32* %29, align 4
  %38 = load i32, i32* %30, align 4
  %39 = load i32, i32* %26, align 4
  %40 = load i32, i32* %19, align 4
  %41 = load i32, i32* %20, align 4
  %42 = load i32, i32* %21, align 4
  %43 = load i32, i32* %22, align 4
  %44 = load i32, i32* %24, align 4
  %45 = call i32 @ath6kl_dbg(i32 %35, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str, i64 0, i64 0), i8** %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %47 = load i8**, i8*** %27, align 8
  %48 = load i32, i32* %26, align 4
  %49 = call i32 @ath6kl_dbg_dump(i32 %46, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %47, i32 %48)
  %50 = load %struct.wmi*, %struct.wmi** %17, align 8
  %51 = getelementptr inbounds %struct.wmi, %struct.wmi* %50, i32 0, i32 0
  store i32 100, i32* %51, align 4
  %52 = load i32, i32* %22, align 4
  %53 = load i32, i32* @NONE_CRYPT, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %15
  %56 = load i32, i32* %24, align 4
  %57 = load i32, i32* @NONE_CRYPT, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %16, align 4
  br label %147

62:                                               ; preds = %55, %15
  %63 = load i32, i32* %22, align 4
  %64 = load i32, i32* @NONE_CRYPT, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, i32* %24, align 4
  %68 = load i32, i32* @NONE_CRYPT, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %16, align 4
  br label %147

73:                                               ; preds = %66, %62
  %74 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 72)
  store %struct.sk_buff* %74, %struct.sk_buff** %32, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %32, align 8
  %76 = icmp ne %struct.sk_buff* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %16, align 4
  br label %147

80:                                               ; preds = %73
  %81 = load %struct.sk_buff*, %struct.sk_buff** %32, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to %struct.wmi_connect_cmd*
  store %struct.wmi_connect_cmd* %84, %struct.wmi_connect_cmd** %33, align 8
  %85 = load i32, i32* %26, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %80
  %88 = load %struct.wmi_connect_cmd*, %struct.wmi_connect_cmd** %33, align 8
  %89 = getelementptr inbounds %struct.wmi_connect_cmd, %struct.wmi_connect_cmd* %88, i32 0, i32 12
  %90 = load i32, i32* %89, align 8
  %91 = load i8**, i8*** %27, align 8
  %92 = load i32, i32* %26, align 4
  %93 = call i32 @memcpy(i32 %90, i8** %91, i32 %92)
  br label %94

94:                                               ; preds = %87, %80
  %95 = load i32, i32* %26, align 4
  %96 = load %struct.wmi_connect_cmd*, %struct.wmi_connect_cmd** %33, align 8
  %97 = getelementptr inbounds %struct.wmi_connect_cmd, %struct.wmi_connect_cmd* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %19, align 4
  %99 = load %struct.wmi_connect_cmd*, %struct.wmi_connect_cmd** %33, align 8
  %100 = getelementptr inbounds %struct.wmi_connect_cmd, %struct.wmi_connect_cmd* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %20, align 4
  %102 = load %struct.wmi_connect_cmd*, %struct.wmi_connect_cmd** %33, align 8
  %103 = getelementptr inbounds %struct.wmi_connect_cmd, %struct.wmi_connect_cmd* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %21, align 4
  %105 = load %struct.wmi_connect_cmd*, %struct.wmi_connect_cmd** %33, align 8
  %106 = getelementptr inbounds %struct.wmi_connect_cmd, %struct.wmi_connect_cmd* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %22, align 4
  %108 = load %struct.wmi_connect_cmd*, %struct.wmi_connect_cmd** %33, align 8
  %109 = getelementptr inbounds %struct.wmi_connect_cmd, %struct.wmi_connect_cmd* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  %110 = load i8*, i8** %23, align 8
  %111 = load %struct.wmi_connect_cmd*, %struct.wmi_connect_cmd** %33, align 8
  %112 = getelementptr inbounds %struct.wmi_connect_cmd, %struct.wmi_connect_cmd* %111, i32 0, i32 11
  store i8* %110, i8** %112, align 8
  %113 = load i32, i32* %24, align 4
  %114 = load %struct.wmi_connect_cmd*, %struct.wmi_connect_cmd** %33, align 8
  %115 = getelementptr inbounds %struct.wmi_connect_cmd, %struct.wmi_connect_cmd* %114, i32 0, i32 5
  store i32 %113, i32* %115, align 4
  %116 = load i8*, i8** %25, align 8
  %117 = load %struct.wmi_connect_cmd*, %struct.wmi_connect_cmd** %33, align 8
  %118 = getelementptr inbounds %struct.wmi_connect_cmd, %struct.wmi_connect_cmd* %117, i32 0, i32 10
  store i8* %116, i8** %118, align 8
  %119 = load i32, i32* %29, align 4
  %120 = call i32 @cpu_to_le16(i32 %119)
  %121 = load %struct.wmi_connect_cmd*, %struct.wmi_connect_cmd** %33, align 8
  %122 = getelementptr inbounds %struct.wmi_connect_cmd, %struct.wmi_connect_cmd* %121, i32 0, i32 9
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %30, align 4
  %124 = call i32 @cpu_to_le32(i32 %123)
  %125 = load %struct.wmi_connect_cmd*, %struct.wmi_connect_cmd** %33, align 8
  %126 = getelementptr inbounds %struct.wmi_connect_cmd, %struct.wmi_connect_cmd* %125, i32 0, i32 8
  store i32 %124, i32* %126, align 8
  %127 = load i8*, i8** %31, align 8
  %128 = load %struct.wmi_connect_cmd*, %struct.wmi_connect_cmd** %33, align 8
  %129 = getelementptr inbounds %struct.wmi_connect_cmd, %struct.wmi_connect_cmd* %128, i32 0, i32 7
  store i8* %127, i8** %129, align 8
  %130 = load i8**, i8*** %28, align 8
  %131 = icmp ne i8** %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %94
  %133 = load %struct.wmi_connect_cmd*, %struct.wmi_connect_cmd** %33, align 8
  %134 = getelementptr inbounds %struct.wmi_connect_cmd, %struct.wmi_connect_cmd* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = load i8**, i8*** %28, align 8
  %137 = load i32, i32* @ETH_ALEN, align 4
  %138 = call i32 @memcpy(i32 %135, i8** %136, i32 %137)
  br label %139

139:                                              ; preds = %132, %94
  %140 = load %struct.wmi*, %struct.wmi** %17, align 8
  %141 = load i8*, i8** %18, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %32, align 8
  %143 = load i32, i32* @WMI_CONNECT_CMDID, align 4
  %144 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %145 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %140, i8* %141, %struct.sk_buff* %142, i32 %143, i32 %144)
  store i32 %145, i32* %34, align 4
  %146 = load i32, i32* %34, align 4
  store i32 %146, i32* %16, align 4
  br label %147

147:                                              ; preds = %139, %77, %70, %59
  %148 = load i32, i32* %16, align 4
  ret i32 %148
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, i8**, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ath6kl_dbg_dump(i32, i32*, i8*, i8**, i32) #1

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #1

declare dso_local i32 @memcpy(i32, i8**, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i8*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
