; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_create_pstream_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_create_pstream_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32, i32*, i32, i32 }
%struct.wmi_create_pstream_cmd = type { i32, i32, i64, i64, i64, i32, i32, i32 }
%struct.sk_buff = type { i64 }

@up_to_ac = common dso_local global i32* null, align 8
@UPLINK_TRAFFIC = common dso_local global i64 0, align 8
@DNLINK_TRAFFIC = common dso_local global i64 0, align 8
@BIDIR_TRAFFIC = common dso_local global i64 0, align 8
@TRAFFIC_TYPE_APERIODIC = common dso_local global i64 0, align 8
@TRAFFIC_TYPE_PERIODIC = common dso_local global i64 0, align 8
@DISABLE_FOR_THIS_AC = common dso_local global i64 0, align 8
@ENABLE_FOR_THIS_AC = common dso_local global i64 0, align 8
@ENABLE_FOR_ALL_AC = common dso_local global i64 0, align 8
@WMI_IMPLICIT_PSTREAM = common dso_local global i32 0, align 4
@WMI_MAX_THINSTREAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"TSRS IE enabled::MinPhy %x->NominalPhy ===> %x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"sending create_pstream_cmd: ac=%d  tsid:%d\0A\00", align 1
@WMI_CREATE_PSTREAM_CMDID = common dso_local global i32 0, align 4
@NO_SYNC_WMIFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_create_pstream_cmd(%struct.wmi* %0, i32 %1, %struct.wmi_create_pstream_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wmi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wmi_create_pstream_cmd*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.wmi_create_pstream_cmd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.wmi_create_pstream_cmd* %2, %struct.wmi_create_pstream_cmd** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %15 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sle i32 %16, 7
  br i1 %17, label %18, label %91

18:                                               ; preds = %3
  %19 = load i32*, i32** @up_to_ac, align 8
  %20 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %21 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 7
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %19, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %28 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %91

31:                                               ; preds = %18
  %32 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %33 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @UPLINK_TRAFFIC, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %31
  %38 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %39 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DNLINK_TRAFFIC, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %45 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BIDIR_TRAFFIC, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %91

49:                                               ; preds = %43, %37, %31
  %50 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %51 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TRAFFIC_TYPE_APERIODIC, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %57 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TRAFFIC_TYPE_PERIODIC, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %91

61:                                               ; preds = %55, %49
  %62 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %63 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DISABLE_FOR_THIS_AC, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %79, label %67

67:                                               ; preds = %61
  %68 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %69 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ENABLE_FOR_THIS_AC, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %75 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ENABLE_FOR_ALL_AC, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %73, %67, %61
  %80 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %81 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @WMI_IMPLICIT_PSTREAM, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %94, label %85

85:                                               ; preds = %79
  %86 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %87 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @WMI_MAX_THINSTREAM, align 4
  %90 = icmp sle i32 %88, %89
  br i1 %90, label %94, label %91

91:                                               ; preds = %85, %73, %55, %43, %18, %3
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %231

94:                                               ; preds = %85, %79
  %95 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %96 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @le32_to_cpu(i32 %97)
  %99 = sdiv i32 %98, 1000
  %100 = sdiv i32 %99, 1000
  store i32 %100, i32* %11, align 4
  %101 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %102 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp sge i32 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %94
  %107 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %108 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %109, 1000
  %111 = sdiv i32 %110, 500
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @ath6kl_dbg(i32 %112, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %114)
  %116 = load i32, i32* %12, align 4
  %117 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %118 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %117, i32 0, i32 6
  store i32 %116, i32* %118, align 4
  br label %122

119:                                              ; preds = %94
  %120 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %121 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %120, i32 0, i32 6
  store i32 0, i32* %121, align 4
  br label %122

122:                                              ; preds = %119, %106
  %123 = call %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32 48)
  store %struct.sk_buff* %123, %struct.sk_buff** %8, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %125 = icmp ne %struct.sk_buff* %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %231

129:                                              ; preds = %122
  %130 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %131 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %132 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %135 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @ath6kl_dbg(i32 %130, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %133, i32 %136)
  %138 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = inttoptr i64 %140 to %struct.wmi_create_pstream_cmd*
  store %struct.wmi_create_pstream_cmd* %141, %struct.wmi_create_pstream_cmd** %9, align 8
  %142 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %9, align 8
  %143 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %144 = call i32 @memcpy(%struct.wmi_create_pstream_cmd* %142, %struct.wmi_create_pstream_cmd* %143, i32 48)
  %145 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %146 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = load i32, i32* @WMI_IMPLICIT_PSTREAM, align 4
  %150 = sext i32 %149 to i64
  %151 = icmp eq i64 %148, %150
  br i1 %151, label %152, label %175

152:                                              ; preds = %129
  %153 = load %struct.wmi*, %struct.wmi** %5, align 8
  %154 = getelementptr inbounds %struct.wmi, %struct.wmi* %153, i32 0, i32 3
  %155 = call i32 @spin_lock_bh(i32* %154)
  %156 = load %struct.wmi*, %struct.wmi** %5, align 8
  %157 = getelementptr inbounds %struct.wmi, %struct.wmi* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %160 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = shl i32 1, %161
  %163 = and i32 %158, %162
  store i32 %163, i32* %10, align 4
  %164 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %165 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 1, %166
  %168 = load %struct.wmi*, %struct.wmi** %5, align 8
  %169 = getelementptr inbounds %struct.wmi, %struct.wmi* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 8
  %172 = load %struct.wmi*, %struct.wmi** %5, align 8
  %173 = getelementptr inbounds %struct.wmi, %struct.wmi* %172, i32 0, i32 3
  %174 = call i32 @spin_unlock_bh(i32* %173)
  br label %212

175:                                              ; preds = %129
  %176 = load %struct.wmi*, %struct.wmi** %5, align 8
  %177 = getelementptr inbounds %struct.wmi, %struct.wmi* %176, i32 0, i32 3
  %178 = call i32 @spin_lock_bh(i32* %177)
  %179 = load %struct.wmi*, %struct.wmi** %5, align 8
  %180 = getelementptr inbounds %struct.wmi, %struct.wmi* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %183 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = shl i32 1, %184
  %186 = and i32 %181, %185
  store i32 %186, i32* %10, align 4
  %187 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %188 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = shl i32 1, %189
  %191 = load %struct.wmi*, %struct.wmi** %5, align 8
  %192 = getelementptr inbounds %struct.wmi, %struct.wmi* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %195 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %193, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = or i32 %199, %190
  store i32 %200, i32* %198, align 4
  %201 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %202 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = shl i32 1, %203
  %205 = load %struct.wmi*, %struct.wmi** %5, align 8
  %206 = getelementptr inbounds %struct.wmi, %struct.wmi* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = or i32 %207, %204
  store i32 %208, i32* %206, align 8
  %209 = load %struct.wmi*, %struct.wmi** %5, align 8
  %210 = getelementptr inbounds %struct.wmi, %struct.wmi* %209, i32 0, i32 3
  %211 = call i32 @spin_unlock_bh(i32* %210)
  br label %212

212:                                              ; preds = %175, %152
  %213 = load i32, i32* %10, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %223, label %215

215:                                              ; preds = %212
  %216 = load %struct.wmi*, %struct.wmi** %5, align 8
  %217 = getelementptr inbounds %struct.wmi, %struct.wmi* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd** %7, align 8
  %220 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @ath6kl_indicate_tx_activity(i32 %218, i32 %221, i32 1)
  br label %223

223:                                              ; preds = %215, %212
  %224 = load %struct.wmi*, %struct.wmi** %5, align 8
  %225 = load i32, i32* %6, align 4
  %226 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %227 = load i32, i32* @WMI_CREATE_PSTREAM_CMDID, align 4
  %228 = load i32, i32* @NO_SYNC_WMIFLAG, align 4
  %229 = call i32 @ath6kl_wmi_cmd_send(%struct.wmi* %224, i32 %225, %struct.sk_buff* %226, i32 %227, i32 %228)
  store i32 %229, i32* %13, align 4
  %230 = load i32, i32* %13, align 4
  store i32 %230, i32* %4, align 4
  br label %231

231:                                              ; preds = %223, %126, %91
  %232 = load i32, i32* %4, align 4
  ret i32 %232
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32) #1

declare dso_local %struct.sk_buff* @ath6kl_wmi_get_new_buf(i32) #1

declare dso_local i32 @memcpy(%struct.wmi_create_pstream_cmd*, %struct.wmi_create_pstream_cmd*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath6kl_indicate_tx_activity(i32, i32, i32) #1

declare dso_local i32 @ath6kl_wmi_cmd_send(%struct.wmi*, i32, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
