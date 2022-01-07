; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_delba_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_delba_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_delba_send_cmd = type { i8*, i8*, i8*, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"wmi delba send vdev_id 0x%X mac_addr %pM tid %u initiator %u reason %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, i32, i32*, i32, i32, i32)* @ath10k_wmi_op_gen_delba_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_op_gen_delba_send(%struct.ath10k* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ath10k*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.wmi_delba_send_cmd*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32*, i32** %10, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.sk_buff* @ERR_PTR(i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %7, align 8
  br label %67

22:                                               ; preds = %6
  %23 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %24 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %23, i32 40)
  store %struct.sk_buff* %24, %struct.sk_buff** %15, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.sk_buff* @ERR_PTR(i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %7, align 8
  br label %67

31:                                               ; preds = %22
  %32 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.wmi_delba_send_cmd*
  store %struct.wmi_delba_send_cmd* %35, %struct.wmi_delba_send_cmd** %14, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i8* @__cpu_to_le32(i32 %36)
  %38 = load %struct.wmi_delba_send_cmd*, %struct.wmi_delba_send_cmd** %14, align 8
  %39 = getelementptr inbounds %struct.wmi_delba_send_cmd, %struct.wmi_delba_send_cmd* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = load %struct.wmi_delba_send_cmd*, %struct.wmi_delba_send_cmd** %14, align 8
  %41 = getelementptr inbounds %struct.wmi_delba_send_cmd, %struct.wmi_delba_send_cmd* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @ether_addr_copy(i32 %43, i32* %44)
  %46 = load i32, i32* %11, align 4
  %47 = call i8* @__cpu_to_le32(i32 %46)
  %48 = load %struct.wmi_delba_send_cmd*, %struct.wmi_delba_send_cmd** %14, align 8
  %49 = getelementptr inbounds %struct.wmi_delba_send_cmd, %struct.wmi_delba_send_cmd* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i8* @__cpu_to_le32(i32 %50)
  %52 = load %struct.wmi_delba_send_cmd*, %struct.wmi_delba_send_cmd** %14, align 8
  %53 = getelementptr inbounds %struct.wmi_delba_send_cmd, %struct.wmi_delba_send_cmd* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i8* @__cpu_to_le32(i32 %54)
  %56 = load %struct.wmi_delba_send_cmd*, %struct.wmi_delba_send_cmd** %14, align 8
  %57 = getelementptr inbounds %struct.wmi_delba_send_cmd, %struct.wmi_delba_send_cmd* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  %59 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @ath10k_dbg(%struct.ath10k* %58, i32 %59, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %60, i32* %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %66, %struct.sk_buff** %7, align 8
  br label %67

67:                                               ; preds = %31, %27, %18
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %68
}

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
