; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_setpmkid_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_setpmkid_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_setpmkid_cmd = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@PMKID_ENABLE = common dso_local global i32 0, align 4
@PMKID_DISABLE = common dso_local global i32 0, align 4
@WMI_SET_PMKID_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_setpmkid_cmd(%struct.wmi* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wmi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.wmi_setpmkid_cmd*, align 8
  %14 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %74

20:                                               ; preds = %5
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32*, i32** %10, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %74

29:                                               ; preds = %23, %20
  %30 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 12)
  store %struct.sk_buff* %30, %struct.sk_buff** %12, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %74

36:                                               ; preds = %29
  %37 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.wmi_setpmkid_cmd*
  store %struct.wmi_setpmkid_cmd* %40, %struct.wmi_setpmkid_cmd** %13, align 8
  %41 = load %struct.wmi_setpmkid_cmd*, %struct.wmi_setpmkid_cmd** %13, align 8
  %42 = getelementptr inbounds %struct.wmi_setpmkid_cmd, %struct.wmi_setpmkid_cmd* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* @ETH_ALEN, align 4
  %46 = call i32 @memcpy(i32 %43, i32* %44, i32 %45)
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %36
  %50 = load %struct.wmi_setpmkid_cmd*, %struct.wmi_setpmkid_cmd** %13, align 8
  %51 = getelementptr inbounds %struct.wmi_setpmkid_cmd, %struct.wmi_setpmkid_cmd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @memcpy(i32 %52, i32* %53, i32 4)
  %55 = load i32, i32* @PMKID_ENABLE, align 4
  %56 = load %struct.wmi_setpmkid_cmd*, %struct.wmi_setpmkid_cmd** %13, align 8
  %57 = getelementptr inbounds %struct.wmi_setpmkid_cmd, %struct.wmi_setpmkid_cmd* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %66

58:                                               ; preds = %36
  %59 = load %struct.wmi_setpmkid_cmd*, %struct.wmi_setpmkid_cmd** %13, align 8
  %60 = getelementptr inbounds %struct.wmi_setpmkid_cmd, %struct.wmi_setpmkid_cmd* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @memset(i32 %61, i32 0, i32 4)
  %63 = load i32, i32* @PMKID_DISABLE, align 4
  %64 = load %struct.wmi_setpmkid_cmd*, %struct.wmi_setpmkid_cmd** %13, align 8
  %65 = getelementptr inbounds %struct.wmi_setpmkid_cmd, %struct.wmi_setpmkid_cmd* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %58, %49
  %67 = load %struct.wmi*, %struct.wmi** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %70 = load i32, i32* @WMI_SET_PMKID_CMDID, align 4
  %71 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %72 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %67, i32 %68, %struct.sk_buff* %69, i32 %70, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %66, %33, %26, %17
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i32, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
