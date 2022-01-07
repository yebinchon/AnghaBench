; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_sync_point.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_sync_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_sync_cmd = type { i32 }
%struct.wmi_data_sync_bufs = type { i32, i32* }

@WMM_NUM_AC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WMI_SYNCHRONIZE_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, i32)* @ath6kl_wmi_sync_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wmi_sync_point(%struct.wmi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wmi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.wmi_sync_cmd*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* @WMM_NUM_AC, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca %struct.wmi_data_sync_bufs, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = mul nuw i64 16, %16
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memset(%struct.wmi_data_sync_bufs* %18, i32 0, i32 %20)
  %22 = load %struct.wmi*, %struct.wmi** %4, align 8
  %23 = getelementptr inbounds %struct.wmi, %struct.wmi* %22, i32 0, i32 2
  %24 = call i32 @spin_lock_bh(i32* %23)
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %47, %2
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @WMM_NUM_AC, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = load %struct.wmi*, %struct.wmi** %4, align 8
  %31 = getelementptr inbounds %struct.wmi, %struct.wmi* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = shl i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.wmi_data_sync_bufs, %struct.wmi_data_sync_bufs* %18, i64 %43
  %45 = getelementptr inbounds %struct.wmi_data_sync_bufs, %struct.wmi_data_sync_bufs* %44, i32 0, i32 0
  store i32 %40, i32* %45, align 16
  br label %46

46:                                               ; preds = %37, %29
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %25

50:                                               ; preds = %25
  %51 = load %struct.wmi*, %struct.wmi** %4, align 8
  %52 = getelementptr inbounds %struct.wmi, %struct.wmi* %51, i32 0, i32 2
  %53 = call i32 @spin_unlock_bh(i32* %52)
  %54 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 4)
  store %struct.sk_buff* %54, %struct.sk_buff** %6, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %176

60:                                               ; preds = %50
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to %struct.wmi_sync_cmd*
  store %struct.wmi_sync_cmd* %64, %struct.wmi_sync_cmd** %7, align 8
  %65 = load %struct.wmi*, %struct.wmi** %4, align 8
  %66 = getelementptr inbounds %struct.wmi, %struct.wmi* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.wmi_sync_cmd*, %struct.wmi_sync_cmd** %7, align 8
  %69 = getelementptr inbounds %struct.wmi_sync_cmd, %struct.wmi_sync_cmd* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %90, %60
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %70
  %75 = call i32* @ath6kl_buf_alloc(i32 0)
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.wmi_data_sync_bufs, %struct.wmi_data_sync_bufs* %18, i64 %77
  %79 = getelementptr inbounds %struct.wmi_data_sync_bufs, %struct.wmi_data_sync_bufs* %78, i32 0, i32 1
  store i32* %75, i32** %79, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.wmi_data_sync_bufs, %struct.wmi_data_sync_bufs* %18, i64 %81
  %83 = getelementptr inbounds %struct.wmi_data_sync_bufs, %struct.wmi_data_sync_bufs* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %74
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %13, align 4
  br label %93

89:                                               ; preds = %74
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %70

93:                                               ; preds = %86, %70
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %155

97:                                               ; preds = %93
  %98 = load %struct.wmi*, %struct.wmi** %4, align 8
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %101 = load i32, i32* @WMI_SYNCHRONIZE_CMDID, align 4
  %102 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %103 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %98, i32 %99, %struct.sk_buff* %100, i32 %101, i32 %102)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  br label %158

107:                                              ; preds = %97
  store i32 0, i32* %11, align 4
  br label %108

108:                                              ; preds = %151, %107
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %154

112:                                              ; preds = %108
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.wmi_data_sync_bufs, %struct.wmi_data_sync_bufs* %18, i64 %114
  %116 = getelementptr inbounds %struct.wmi_data_sync_bufs, %struct.wmi_data_sync_bufs* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = call i64 @WARN_ON(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %112
  br label %158

124:                                              ; preds = %112
  %125 = load %struct.wmi*, %struct.wmi** %4, align 8
  %126 = getelementptr inbounds %struct.wmi, %struct.wmi* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.wmi_data_sync_bufs, %struct.wmi_data_sync_bufs* %18, i64 %129
  %131 = getelementptr inbounds %struct.wmi_data_sync_bufs, %struct.wmi_data_sync_bufs* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 16
  %133 = call i32 @ath6kl_ac2_endpoint_id(i32 %127, i32 %132)
  store i32 %133, i32* %10, align 4
  %134 = load %struct.wmi*, %struct.wmi** %4, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.wmi_data_sync_bufs, %struct.wmi_data_sync_bufs* %18, i64 %136
  %138 = getelementptr inbounds %struct.wmi_data_sync_bufs, %struct.wmi_data_sync_bufs* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @ath6kl_wmi_data_sync_send(%struct.wmi* %134, i32* %139, i32 %140, i32 %141)
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.wmi_data_sync_bufs, %struct.wmi_data_sync_bufs* %18, i64 %144
  %146 = getelementptr inbounds %struct.wmi_data_sync_bufs, %struct.wmi_data_sync_bufs* %145, i32 0, i32 1
  store i32* null, i32** %146, align 8
  %147 = load i32, i32* %13, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %124
  br label %158

150:                                              ; preds = %124
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %11, align 4
  br label %108

154:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %176

155:                                              ; preds = %96
  %156 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %157 = call i32 @dev_kfree_skb(%struct.sk_buff* %156)
  br label %158

158:                                              ; preds = %155, %149, %123, %106
  store i32 0, i32* %11, align 4
  br label %159

159:                                              ; preds = %171, %158
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %12, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %174

163:                                              ; preds = %159
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.wmi_data_sync_bufs, %struct.wmi_data_sync_bufs* %18, i64 %165
  %167 = getelementptr inbounds %struct.wmi_data_sync_bufs, %struct.wmi_data_sync_bufs* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = bitcast i32* %168 to %struct.sk_buff*
  %170 = call i32 @dev_kfree_skb(%struct.sk_buff* %169)
  br label %171

171:                                              ; preds = %163
  %172 = load i32, i32* %11, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %11, align 4
  br label %159

174:                                              ; preds = %159
  %175 = load i32, i32* %13, align 4
  store i32 %175, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %176

176:                                              ; preds = %174, %154, %57
  %177 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %177)
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.wmi_data_sync_bufs*, i32, i32) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #2

declare dso_local i32* @ath6kl_buf_alloc(i32) #2

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i32, %struct.sk_buff*, i32, i32) #2

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i32 @ath6kl_ac2_endpoint_id(i32, i32) #2

declare dso_local i32 @ath6kl_wmi_data_sync_send(%struct.wmi*, i32*, i32, i32) #2

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
