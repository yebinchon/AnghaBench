; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_add_del_mcast_filter_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_add_del_mcast_filter_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_mcast_filter_add_del_cmd = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"invalid multicast filter address\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATH6KL_MCAST_FILTER_MAC_ADDR_SIZE = common dso_local global i32 0, align 4
@WMI_SET_MCAST_FILTER_CMDID = common dso_local global i32 0, align 4
@WMI_DEL_MCAST_FILTER_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_add_del_mcast_filter_cmd(%struct.wmi* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.wmi_mcast_filter_add_del_cmd*, align 8
  %12 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 51
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 51
  br i1 %21, label %22, label %46

22:                                               ; preds = %17, %4
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %42, label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 94
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 127
  br i1 %41, label %42, label %46

42:                                               ; preds = %37, %32, %27, %22
  %43 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %78

46:                                               ; preds = %37, %17
  %47 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 4)
  store %struct.sk_buff* %47, %struct.sk_buff** %10, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %49 = icmp ne %struct.sk_buff* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %78

53:                                               ; preds = %46
  %54 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.wmi_mcast_filter_add_del_cmd*
  store %struct.wmi_mcast_filter_add_del_cmd* %57, %struct.wmi_mcast_filter_add_del_cmd** %11, align 8
  %58 = load %struct.wmi_mcast_filter_add_del_cmd*, %struct.wmi_mcast_filter_add_del_cmd** %11, align 8
  %59 = getelementptr inbounds %struct.wmi_mcast_filter_add_del_cmd, %struct.wmi_mcast_filter_add_del_cmd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* @ATH6KL_MCAST_FILTER_MAC_ADDR_SIZE, align 4
  %63 = call i32 @memcpy(i32 %60, i32* %61, i32 %62)
  %64 = load %struct.wmi*, %struct.wmi** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %53
  %70 = load i32, i32* @WMI_SET_MCAST_FILTER_CMDID, align 4
  br label %73

71:                                               ; preds = %53
  %72 = load i32, i32* @WMI_DEL_MCAST_FILTER_CMDID, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %76 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %64, i32 %65, %struct.sk_buff* %66, i32 %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %73, %50, %42
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @ath6kl_warn(i8*) #1

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i32, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
