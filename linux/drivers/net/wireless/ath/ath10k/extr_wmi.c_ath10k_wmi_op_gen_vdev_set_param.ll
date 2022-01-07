; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_vdev_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_vdev_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_vdev_set_param_cmd = type { i8*, i8*, i8* }

@WMI_VDEV_PARAM_UNSUPPORTED = common dso_local global i64 0, align 8
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"vdev param %d not supported by firmware\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"wmi vdev id 0x%x set param %d value %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i64, i64, i64)* @ath10k_wmi_op_gen_vdev_set_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_op_gen_vdev_set_param(%struct.ath10k* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wmi_vdev_set_param_cmd*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @WMI_VDEV_PARAM_UNSUPPORTED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %17 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %18 = load i64, i64* %8, align 8
  %19 = call i32 (%struct.ath10k*, i32, i8*, i64, ...) @ath10k_dbg(%struct.ath10k* %16, i32 %17, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.sk_buff* @ERR_PTR(i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %5, align 8
  br label %56

23:                                               ; preds = %4
  %24 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %25 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %24, i32 24)
  store %struct.sk_buff* %25, %struct.sk_buff** %11, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.sk_buff* @ERR_PTR(i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %5, align 8
  br label %56

32:                                               ; preds = %23
  %33 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.wmi_vdev_set_param_cmd*
  store %struct.wmi_vdev_set_param_cmd* %36, %struct.wmi_vdev_set_param_cmd** %10, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i8* @__cpu_to_le32(i64 %37)
  %39 = load %struct.wmi_vdev_set_param_cmd*, %struct.wmi_vdev_set_param_cmd** %10, align 8
  %40 = getelementptr inbounds %struct.wmi_vdev_set_param_cmd, %struct.wmi_vdev_set_param_cmd* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i8* @__cpu_to_le32(i64 %41)
  %43 = load %struct.wmi_vdev_set_param_cmd*, %struct.wmi_vdev_set_param_cmd** %10, align 8
  %44 = getelementptr inbounds %struct.wmi_vdev_set_param_cmd, %struct.wmi_vdev_set_param_cmd* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i8* @__cpu_to_le32(i64 %45)
  %47 = load %struct.wmi_vdev_set_param_cmd*, %struct.wmi_vdev_set_param_cmd** %10, align 8
  %48 = getelementptr inbounds %struct.wmi_vdev_set_param_cmd, %struct.wmi_vdev_set_param_cmd* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %50 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 (%struct.ath10k*, i32, i8*, i64, ...) @ath10k_dbg(%struct.ath10k* %49, i32 %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %51, i64 %52, i64 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %55, %struct.sk_buff** %5, align 8
  br label %56

56:                                               ; preds = %32, %28, %15
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %57
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i64, ...) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local i8* @__cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
