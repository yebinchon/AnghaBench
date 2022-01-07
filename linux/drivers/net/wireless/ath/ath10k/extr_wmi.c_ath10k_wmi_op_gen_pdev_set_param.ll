; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_pdev_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_pdev_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_pdev_set_param_cmd = type { i8*, i8* }

@WMI_PDEV_PARAM_UNSUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"pdev param %d not supported by firmware\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"wmi pdev set param %d value %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i64, i64)* @ath10k_wmi_op_gen_pdev_set_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_op_gen_pdev_set_param(%struct.ath10k* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wmi_pdev_set_param_cmd*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @WMI_PDEV_PARAM_UNSUPPORTED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @ath10k_warn(%struct.ath10k* %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.sk_buff* @ERR_PTR(i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %4, align 8
  br label %48

20:                                               ; preds = %3
  %21 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %22 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %21, i32 16)
  store %struct.sk_buff* %22, %struct.sk_buff** %9, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.sk_buff* @ERR_PTR(i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %4, align 8
  br label %48

29:                                               ; preds = %20
  %30 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.wmi_pdev_set_param_cmd*
  store %struct.wmi_pdev_set_param_cmd* %33, %struct.wmi_pdev_set_param_cmd** %8, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i8* @__cpu_to_le32(i64 %34)
  %36 = load %struct.wmi_pdev_set_param_cmd*, %struct.wmi_pdev_set_param_cmd** %8, align 8
  %37 = getelementptr inbounds %struct.wmi_pdev_set_param_cmd, %struct.wmi_pdev_set_param_cmd* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i8* @__cpu_to_le32(i64 %38)
  %40 = load %struct.wmi_pdev_set_param_cmd*, %struct.wmi_pdev_set_param_cmd** %8, align 8
  %41 = getelementptr inbounds %struct.wmi_pdev_set_param_cmd, %struct.wmi_pdev_set_param_cmd* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %43 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @ath10k_dbg(%struct.ath10k* %42, i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %44, i64 %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %47, %struct.sk_buff** %4, align 8
  br label %48

48:                                               ; preds = %29, %25, %13
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %49
}

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i64) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local i8* @__cpu_to_le32(i64) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
