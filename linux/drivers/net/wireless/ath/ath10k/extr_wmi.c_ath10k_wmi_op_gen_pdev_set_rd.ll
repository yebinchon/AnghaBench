; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_pdev_set_rd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_pdev_set_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_pdev_set_regdomain_cmd = type { i8*, i8*, i8*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"wmi pdev regdomain rd %x rd2g %x rd5g %x ctl2g %x ctl5g %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i32, i32, i32, i32, i32, i32)* @ath10k_wmi_op_gen_pdev_set_rd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_op_gen_pdev_set_rd(%struct.ath10k* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ath10k*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.wmi_pdev_set_regdomain_cmd*, align 8
  %17 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %19 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %18, i32 40)
  store %struct.sk_buff* %19, %struct.sk_buff** %17, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %7
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.sk_buff* @ERR_PTR(i32 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %8, align 8
  br label %60

26:                                               ; preds = %7
  %27 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.wmi_pdev_set_regdomain_cmd*
  store %struct.wmi_pdev_set_regdomain_cmd* %30, %struct.wmi_pdev_set_regdomain_cmd** %16, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i8* @__cpu_to_le32(i32 %31)
  %33 = load %struct.wmi_pdev_set_regdomain_cmd*, %struct.wmi_pdev_set_regdomain_cmd** %16, align 8
  %34 = getelementptr inbounds %struct.wmi_pdev_set_regdomain_cmd, %struct.wmi_pdev_set_regdomain_cmd* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i8* @__cpu_to_le32(i32 %35)
  %37 = load %struct.wmi_pdev_set_regdomain_cmd*, %struct.wmi_pdev_set_regdomain_cmd** %16, align 8
  %38 = getelementptr inbounds %struct.wmi_pdev_set_regdomain_cmd, %struct.wmi_pdev_set_regdomain_cmd* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i8* @__cpu_to_le32(i32 %39)
  %41 = load %struct.wmi_pdev_set_regdomain_cmd*, %struct.wmi_pdev_set_regdomain_cmd** %16, align 8
  %42 = getelementptr inbounds %struct.wmi_pdev_set_regdomain_cmd, %struct.wmi_pdev_set_regdomain_cmd* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call i8* @__cpu_to_le32(i32 %43)
  %45 = load %struct.wmi_pdev_set_regdomain_cmd*, %struct.wmi_pdev_set_regdomain_cmd** %16, align 8
  %46 = getelementptr inbounds %struct.wmi_pdev_set_regdomain_cmd, %struct.wmi_pdev_set_regdomain_cmd* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %14, align 4
  %48 = call i8* @__cpu_to_le32(i32 %47)
  %49 = load %struct.wmi_pdev_set_regdomain_cmd*, %struct.wmi_pdev_set_regdomain_cmd** %16, align 8
  %50 = getelementptr inbounds %struct.wmi_pdev_set_regdomain_cmd, %struct.wmi_pdev_set_regdomain_cmd* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  %52 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @ath10k_dbg(%struct.ath10k* %51, i32 %52, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %59, %struct.sk_buff** %8, align 8
  br label %60

60:                                               ; preds = %26, %22
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  ret %struct.sk_buff* %61
}

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
