; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_delete_pstream_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_delete_pstream_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32*, i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_delete_pstream_cmd = type { i64, i64 }

@WMM_NUM_AC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"invalid traffic class: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"TSID %d doesn't exist for traffic class: %d\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"sending delete_pstream_cmd: traffic class: %d tsid=%d\0A\00", align 1
@WMI_DELETE_PSTREAM_CMDID = common dso_local global i32 0, align 4
@SYNC_BEFORE_WMIFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_delete_pstream_cmd(%struct.wmi* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmi*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.wmi_delete_pstream_cmd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @WMM_NUM_AC, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @ath6kl_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %119

22:                                               ; preds = %4
  %23 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 16)
  store %struct.sk_buff* %23, %struct.sk_buff** %10, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %119

29:                                               ; preds = %22
  %30 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.wmi_delete_pstream_cmd*
  store %struct.wmi_delete_pstream_cmd* %33, %struct.wmi_delete_pstream_cmd** %11, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.wmi_delete_pstream_cmd*, %struct.wmi_delete_pstream_cmd** %11, align 8
  %36 = getelementptr inbounds %struct.wmi_delete_pstream_cmd, %struct.wmi_delete_pstream_cmd* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.wmi_delete_pstream_cmd*, %struct.wmi_delete_pstream_cmd** %11, align 8
  %39 = getelementptr inbounds %struct.wmi_delete_pstream_cmd, %struct.wmi_delete_pstream_cmd* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.wmi*, %struct.wmi** %6, align 8
  %41 = getelementptr inbounds %struct.wmi, %struct.wmi* %40, i32 0, i32 3
  %42 = call i32 @spin_lock_bh(i32* %41)
  %43 = load %struct.wmi*, %struct.wmi** %6, align 8
  %44 = getelementptr inbounds %struct.wmi, %struct.wmi* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = load %struct.wmi*, %struct.wmi** %6, align 8
  %50 = getelementptr inbounds %struct.wmi, %struct.wmi* %49, i32 0, i32 3
  %51 = call i32 @spin_unlock_bh(i32* %50)
  %52 = load i32, i32* %12, align 4
  %53 = load i64, i64* %9, align 8
  %54 = trunc i64 %53 to i32
  %55 = shl i32 1, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %29
  %59 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %60 = call i32 @dev_kfree_skb(%struct.sk_buff* %59)
  %61 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @ath6kl_dbg(i32 %61, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %62, i64 %63)
  %65 = load i32, i32* @ENODATA, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %119

67:                                               ; preds = %29
  %68 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @ath6kl_dbg(i32 %68, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i64 %69, i64 %70)
  %72 = load %struct.wmi*, %struct.wmi** %6, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %75 = load i32, i32* @WMI_DELETE_PSTREAM_CMDID, align 4
  %76 = load i32, i32* @SYNC_BEFORE_WMIFLAG, align 4
  %77 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %72, i64 %73, %struct.sk_buff* %74, i32 %75, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load %struct.wmi*, %struct.wmi** %6, align 8
  %79 = getelementptr inbounds %struct.wmi, %struct.wmi* %78, i32 0, i32 3
  %80 = call i32 @spin_lock_bh(i32* %79)
  %81 = load i64, i64* %9, align 8
  %82 = trunc i64 %81 to i32
  %83 = shl i32 1, %82
  %84 = xor i32 %83, -1
  %85 = load %struct.wmi*, %struct.wmi** %6, align 8
  %86 = getelementptr inbounds %struct.wmi, %struct.wmi* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %84
  store i32 %91, i32* %89, align 4
  %92 = load %struct.wmi*, %struct.wmi** %6, align 8
  %93 = getelementptr inbounds %struct.wmi, %struct.wmi* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %12, align 4
  %98 = load %struct.wmi*, %struct.wmi** %6, align 8
  %99 = getelementptr inbounds %struct.wmi, %struct.wmi* %98, i32 0, i32 3
  %100 = call i32 @spin_unlock_bh(i32* %99)
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %117, label %103

103:                                              ; preds = %67
  %104 = load %struct.wmi*, %struct.wmi** %6, align 8
  %105 = getelementptr inbounds %struct.wmi, %struct.wmi* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* %8, align 8
  %108 = call i32 @ath6kl_indicate_tx_activity(i32 %106, i64 %107, i32 0)
  %109 = load i64, i64* %8, align 8
  %110 = trunc i64 %109 to i32
  %111 = shl i32 1, %110
  %112 = xor i32 %111, -1
  %113 = load %struct.wmi*, %struct.wmi** %6, align 8
  %114 = getelementptr inbounds %struct.wmi, %struct.wmi* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %103, %67
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %117, %58, %26, %17
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @ath6kl_err(i8*, i64) #1

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i64, i64) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i64, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ath6kl_indicate_tx_activity(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
