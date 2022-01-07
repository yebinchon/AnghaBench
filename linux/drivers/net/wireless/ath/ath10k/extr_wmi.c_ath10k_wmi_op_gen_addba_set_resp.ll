; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_addba_set_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_addba_set_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_addba_setresponse_cmd = type { i8*, i8*, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"wmi addba set resp vdev_id 0x%X mac_addr %pM tid %u status %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i32, i32*, i32, i32)* @ath10k_wmi_op_gen_addba_set_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_op_gen_addba_set_resp(%struct.ath10k* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ath10k*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wmi_addba_setresponse_cmd*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.sk_buff* @ERR_PTR(i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %6, align 8
  br label %60

20:                                               ; preds = %5
  %21 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %22 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %21, i32 32)
  store %struct.sk_buff* %22, %struct.sk_buff** %13, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.sk_buff* @ERR_PTR(i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %6, align 8
  br label %60

29:                                               ; preds = %20
  %30 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.wmi_addba_setresponse_cmd*
  store %struct.wmi_addba_setresponse_cmd* %33, %struct.wmi_addba_setresponse_cmd** %12, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i8* @__cpu_to_le32(i32 %34)
  %36 = load %struct.wmi_addba_setresponse_cmd*, %struct.wmi_addba_setresponse_cmd** %12, align 8
  %37 = getelementptr inbounds %struct.wmi_addba_setresponse_cmd, %struct.wmi_addba_setresponse_cmd* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load %struct.wmi_addba_setresponse_cmd*, %struct.wmi_addba_setresponse_cmd** %12, align 8
  %39 = getelementptr inbounds %struct.wmi_addba_setresponse_cmd, %struct.wmi_addba_setresponse_cmd* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @ether_addr_copy(i32 %41, i32* %42)
  %44 = load i32, i32* %10, align 4
  %45 = call i8* @__cpu_to_le32(i32 %44)
  %46 = load %struct.wmi_addba_setresponse_cmd*, %struct.wmi_addba_setresponse_cmd** %12, align 8
  %47 = getelementptr inbounds %struct.wmi_addba_setresponse_cmd, %struct.wmi_addba_setresponse_cmd* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i8* @__cpu_to_le32(i32 %48)
  %50 = load %struct.wmi_addba_setresponse_cmd*, %struct.wmi_addba_setresponse_cmd** %12, align 8
  %51 = getelementptr inbounds %struct.wmi_addba_setresponse_cmd, %struct.wmi_addba_setresponse_cmd* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %53 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @ath10k_dbg(%struct.ath10k* %52, i32 %53, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %54, i32* %55, i32 %56, i32 %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %59, %struct.sk_buff** %6, align 8
  br label %60

60:                                               ; preds = %29, %25, %16
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %61
}

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
