; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_cmd_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_cmd_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.wmi_cmd_hdr = type { i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"wmi tx id %d len %d flag %d\0A\00", align 1
@ATH6KL_DBG_WMI_DUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"wmi tx \00", align 1
@END_WMIFLAG = common dso_local global i32 0, align 4
@SYNC_BEFORE_WMIFLAG = common dso_local global i32 0, align 4
@SYNC_BOTH_WMIFLAG = common dso_local global i32 0, align 4
@WMI_CMD_HDR_IF_ID_MASK = common dso_local global i32 0, align 4
@WMI_OPT_TX_FRAME_CMDID = common dso_local global i32 0, align 4
@OPT_MSGTYPE = common dso_local global i32 0, align 4
@WMM_AC_BE = common dso_local global i32 0, align 4
@SYNC_AFTER_WMIFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi* %0, i32 %1, %struct.sk_buff* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wmi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wmi_cmd_hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.wmi*, %struct.wmi** %7, align 8
  %17 = getelementptr inbounds %struct.wmi, %struct.wmi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %13, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = icmp eq %struct.sk_buff* %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.wmi*, %struct.wmi** %7, align 8
  %24 = getelementptr inbounds %struct.wmi, %struct.wmi* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  %29 = icmp sgt i32 %22, %28
  br label %30

30:                                               ; preds = %21, %5
  %31 = phi i1 [ true, %5 ], [ %29, %21 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %37 = call i32 @dev_kfree_skb(%struct.sk_buff* %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %134

40:                                               ; preds = %30
  %41 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @ath6kl_dbg(i32 %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i32 %46)
  %48 = load i32, i32* @ATH6KL_DBG_WMI_DUMP, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ath6kl_dbg_dump(i32 %48, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %51, i32 %54)
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @END_WMIFLAG, align 4
  %58 = icmp uge i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %40
  %60 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %61 = call i32 @dev_kfree_skb(%struct.sk_buff* %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %134

64:                                               ; preds = %40
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @SYNC_BEFORE_WMIFLAG, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @SYNC_BOTH_WMIFLAG, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68, %64
  %73 = load %struct.wmi*, %struct.wmi** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @ath6kl_wmi_sync_point(%struct.wmi* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %68
  %77 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %78 = call i32 @skb_push(%struct.sk_buff* %77, i32 16)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to %struct.wmi_cmd_hdr*
  store %struct.wmi_cmd_hdr* %82, %struct.wmi_cmd_hdr** %12, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i8* @cpu_to_le16(i32 %83)
  %85 = load %struct.wmi_cmd_hdr*, %struct.wmi_cmd_hdr** %12, align 8
  %86 = getelementptr inbounds %struct.wmi_cmd_hdr, %struct.wmi_cmd_hdr* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @WMI_CMD_HDR_IF_ID_MASK, align 4
  %89 = and i32 %87, %88
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call i8* @cpu_to_le16(i32 %90)
  %92 = load %struct.wmi_cmd_hdr*, %struct.wmi_cmd_hdr** %12, align 8
  %93 = getelementptr inbounds %struct.wmi_cmd_hdr, %struct.wmi_cmd_hdr* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @WMI_OPT_TX_FRAME_CMDID, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %76
  %98 = load %struct.wmi*, %struct.wmi** %7, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %100 = load i32, i32* @OPT_MSGTYPE, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @ath6kl_wmi_data_hdr_add(%struct.wmi* %98, %struct.sk_buff* %99, i32 %100, i32 0, i32 0, i32 0, i32* null, i32 %101)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %97
  %106 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %107 = call i32 @dev_kfree_skb(%struct.sk_buff* %106)
  %108 = load i32, i32* %14, align 4
  store i32 %108, i32* %6, align 4
  br label %134

109:                                              ; preds = %97
  %110 = load %struct.wmi*, %struct.wmi** %7, align 8
  %111 = getelementptr inbounds %struct.wmi, %struct.wmi* %110, i32 0, i32 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = load i32, i32* @WMM_AC_BE, align 4
  %114 = call i32 @ath6kl_ac2_endpoint_id(%struct.TYPE_3__* %112, i32 %113)
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %109, %76
  %116 = load %struct.wmi*, %struct.wmi** %7, align 8
  %117 = getelementptr inbounds %struct.wmi, %struct.wmi* %116, i32 0, i32 1
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @ath6kl_control_tx(%struct.TYPE_3__* %118, %struct.sk_buff* %119, i32 %120)
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @SYNC_AFTER_WMIFLAG, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %129, label %125

125:                                              ; preds = %115
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @SYNC_BOTH_WMIFLAG, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %125, %115
  %130 = load %struct.wmi*, %struct.wmi** %7, align 8
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @ath6kl_wmi_sync_point(%struct.wmi* %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %125
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %133, %105, %59, %35
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ath6kl_dbg_dump(i32, i32*, i8*, i64, i32) #1

declare dso_local i32 @ath6kl_wmi_sync_point(%struct.wmi*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ath6kl_wmi_data_hdr_add(%struct.wmi*, %struct.sk_buff*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ath6kl_ac2_endpoint_id(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @ath6kl_control_tx(%struct.TYPE_3__*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
