; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_1_op_gen_peer_assoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_1_op_gen_peer_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ath10k = type { i32 }
%struct.wmi_peer_assoc_complete_arg = type { i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"wmi peer assoc vdev %d addr %pM (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"reassociate\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, %struct.wmi_peer_assoc_complete_arg*)* @ath10k_wmi_10_1_op_gen_peer_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_10_1_op_gen_peer_assoc(%struct.ath10k* %0, %struct.wmi_peer_assoc_complete_arg* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.wmi_peer_assoc_complete_arg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.wmi_peer_assoc_complete_arg* %1, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  store i64 4, i64* %6, align 8
  %9 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %10 = call i32 @ath10k_wmi_peer_assoc_check_arg(%struct.wmi_peer_assoc_complete_arg* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.sk_buff* @ERR_PTR(i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %3, align 8
  br label %49

16:                                               ; preds = %2
  %17 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %17, i64 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.sk_buff* @ERR_PTR(i32 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %3, align 8
  br label %49

26:                                               ; preds = %16
  %27 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %32 = call i32 @ath10k_wmi_peer_assoc_fill_10_1(%struct.ath10k* %27, i32 %30, %struct.wmi_peer_assoc_complete_arg* %31)
  %33 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %34 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %35 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %36 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %39 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %5, align 8
  %42 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %47 = call i32 @ath10k_dbg(%struct.ath10k* %33, i32 %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i8* %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %48, %struct.sk_buff** %3, align 8
  br label %49

49:                                               ; preds = %26, %22, %13
  %50 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %50
}

declare dso_local i32 @ath10k_wmi_peer_assoc_check_arg(%struct.wmi_peer_assoc_complete_arg*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i64) #1

declare dso_local i32 @ath10k_wmi_peer_assoc_fill_10_1(%struct.ath10k*, i32, %struct.wmi_peer_assoc_complete_arg*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
