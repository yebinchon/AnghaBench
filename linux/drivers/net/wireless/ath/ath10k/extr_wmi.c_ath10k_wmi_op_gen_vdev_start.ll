; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_vdev_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_vdev_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_vdev_start_request_arg = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.wmi_vdev_start_request_cmd = type { %struct.TYPE_5__, %struct.TYPE_4__, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@WMI_VDEV_START_HIDDEN_SSID = common dso_local global i32 0, align 4
@WMI_VDEV_START_PMF_ENABLED = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [84 x i8] c"wmi vdev %s id 0x%x flags: 0x%0X, freq %d, mode %d, ch_flags: 0x%0X, max_power: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, %struct.wmi_vdev_start_request_arg*, i32)* @ath10k_wmi_op_gen_vdev_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_op_gen_vdev_start(%struct.ath10k* %0, %struct.wmi_vdev_start_request_arg* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.wmi_vdev_start_request_arg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wmi_vdev_start_request_cmd*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.wmi_vdev_start_request_arg* %1, %struct.wmi_vdev_start_request_arg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %13 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %12, i32 0, i32 10
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %18 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %16, %3
  %23 = phi i1 [ false, %3 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.sk_buff* @ERR_PTR(i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %4, align 8
  br label %175

31:                                               ; preds = %22
  %32 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %33 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = icmp ugt i64 %35, 4
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.sk_buff* @ERR_PTR(i32 %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %4, align 8
  br label %175

44:                                               ; preds = %31
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %49

48:                                               ; preds = %44
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %49

49:                                               ; preds = %48, %47
  %50 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %51 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %50, i32 80)
  store %struct.sk_buff* %51, %struct.sk_buff** %9, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %53 = icmp ne %struct.sk_buff* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  %57 = call %struct.sk_buff* @ERR_PTR(i32 %56)
  store %struct.sk_buff* %57, %struct.sk_buff** %4, align 8
  br label %175

58:                                               ; preds = %49
  %59 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %60 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %59, i32 0, i32 10
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @WMI_VDEV_START_HIDDEN_SSID, align 4
  %65 = load i32, i32* %11, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %69 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %68, i32 0, i32 9
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @WMI_VDEV_START_PMF_ENABLED, align 4
  %74 = load i32, i32* %11, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.wmi_vdev_start_request_cmd*
  store %struct.wmi_vdev_start_request_cmd* %80, %struct.wmi_vdev_start_request_cmd** %8, align 8
  %81 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %82 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @__cpu_to_le32(i32 %83)
  %85 = load %struct.wmi_vdev_start_request_cmd*, %struct.wmi_vdev_start_request_cmd** %8, align 8
  %86 = getelementptr inbounds %struct.wmi_vdev_start_request_cmd, %struct.wmi_vdev_start_request_cmd* %85, i32 0, i32 8
  store i8* %84, i8** %86, align 8
  %87 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %88 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i8* @__cpu_to_le32(i32 %89)
  %91 = load %struct.wmi_vdev_start_request_cmd*, %struct.wmi_vdev_start_request_cmd** %8, align 8
  %92 = getelementptr inbounds %struct.wmi_vdev_start_request_cmd, %struct.wmi_vdev_start_request_cmd* %91, i32 0, i32 7
  store i8* %90, i8** %92, align 8
  %93 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %94 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @__cpu_to_le32(i32 %95)
  %97 = load %struct.wmi_vdev_start_request_cmd*, %struct.wmi_vdev_start_request_cmd** %8, align 8
  %98 = getelementptr inbounds %struct.wmi_vdev_start_request_cmd, %struct.wmi_vdev_start_request_cmd* %97, i32 0, i32 6
  store i8* %96, i8** %98, align 8
  %99 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %100 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = call i8* @__cpu_to_le32(i32 %101)
  %103 = load %struct.wmi_vdev_start_request_cmd*, %struct.wmi_vdev_start_request_cmd** %8, align 8
  %104 = getelementptr inbounds %struct.wmi_vdev_start_request_cmd, %struct.wmi_vdev_start_request_cmd* %103, i32 0, i32 5
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call i8* @__cpu_to_le32(i32 %105)
  %107 = load %struct.wmi_vdev_start_request_cmd*, %struct.wmi_vdev_start_request_cmd** %8, align 8
  %108 = getelementptr inbounds %struct.wmi_vdev_start_request_cmd, %struct.wmi_vdev_start_request_cmd* %107, i32 0, i32 4
  store i8* %106, i8** %108, align 8
  %109 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %110 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @__cpu_to_le32(i32 %111)
  %113 = load %struct.wmi_vdev_start_request_cmd*, %struct.wmi_vdev_start_request_cmd** %8, align 8
  %114 = getelementptr inbounds %struct.wmi_vdev_start_request_cmd, %struct.wmi_vdev_start_request_cmd* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %116 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = call i8* @__cpu_to_le32(i32 %117)
  %119 = load %struct.wmi_vdev_start_request_cmd*, %struct.wmi_vdev_start_request_cmd** %8, align 8
  %120 = getelementptr inbounds %struct.wmi_vdev_start_request_cmd, %struct.wmi_vdev_start_request_cmd* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  %121 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %122 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %144

125:                                              ; preds = %76
  %126 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %127 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i8* @__cpu_to_le32(i32 %128)
  %130 = load %struct.wmi_vdev_start_request_cmd*, %struct.wmi_vdev_start_request_cmd** %8, align 8
  %131 = getelementptr inbounds %struct.wmi_vdev_start_request_cmd, %struct.wmi_vdev_start_request_cmd* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  store i8* %129, i8** %132, align 8
  %133 = load %struct.wmi_vdev_start_request_cmd*, %struct.wmi_vdev_start_request_cmd** %8, align 8
  %134 = getelementptr inbounds %struct.wmi_vdev_start_request_cmd, %struct.wmi_vdev_start_request_cmd* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %138 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %141 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @memcpy(i32 %136, i32 %139, i32 %142)
  br label %144

144:                                              ; preds = %125, %76
  %145 = load %struct.wmi_vdev_start_request_cmd*, %struct.wmi_vdev_start_request_cmd** %8, align 8
  %146 = getelementptr inbounds %struct.wmi_vdev_start_request_cmd, %struct.wmi_vdev_start_request_cmd* %145, i32 0, i32 0
  %147 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %148 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %147, i32 0, i32 7
  %149 = call i32 @ath10k_wmi_put_wmi_channel(%struct.TYPE_5__* %146, %struct.TYPE_6__* %148)
  %150 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %151 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %152 = load i8*, i8** %10, align 8
  %153 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %154 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %11, align 4
  %157 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %158 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %157, i32 0, i32 7
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %162 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %161, i32 0, i32 7
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.wmi_vdev_start_request_cmd*, %struct.wmi_vdev_start_request_cmd** %8, align 8
  %166 = getelementptr inbounds %struct.wmi_vdev_start_request_cmd, %struct.wmi_vdev_start_request_cmd* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %6, align 8
  %170 = getelementptr inbounds %struct.wmi_vdev_start_request_arg, %struct.wmi_vdev_start_request_arg* %169, i32 0, i32 7
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @ath10k_dbg(%struct.ath10k* %150, i32 %151, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i8* %152, i32 %155, i32 %156, i32 %160, i32 %164, i32 %168, i32 %172)
  %174 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %174, %struct.sk_buff** %4, align 8
  br label %175

175:                                              ; preds = %144, %54, %40, %27
  %176 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %176
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ath10k_wmi_put_wmi_channel(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
