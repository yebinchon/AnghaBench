; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.wmi_rdy_ev_arg = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"failed to parse ready event: %d\0A\00", align 1
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"wmi event ready sw_version %u abi_version %u mac_addr %pM status %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_wmi_event_ready(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.wmi_rdy_ev_arg, align 4
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = bitcast %struct.wmi_rdy_ev_arg* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 16, i1 false)
  %9 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call i32 @ath10k_wmi_pull_rdy(%struct.ath10k* %9, %struct.sk_buff* %10, %struct.wmi_rdy_ev_arg* %6)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @ath10k_warn(%struct.ath10k* %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %51

19:                                               ; preds = %2
  %20 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %21 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %22 = getelementptr inbounds %struct.wmi_rdy_ev_arg, %struct.wmi_rdy_ev_arg* %6, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__le32_to_cpu(i32 %23)
  %25 = getelementptr inbounds %struct.wmi_rdy_ev_arg, %struct.wmi_rdy_ev_arg* %6, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @__le32_to_cpu(i32 %26)
  %28 = getelementptr inbounds %struct.wmi_rdy_ev_arg, %struct.wmi_rdy_ev_arg* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.wmi_rdy_ev_arg, %struct.wmi_rdy_ev_arg* %6, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @__le32_to_cpu(i32 %31)
  %33 = call i32 @ath10k_dbg(%struct.ath10k* %20, i32 %21, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %27, i32 %29, i32 %32)
  %34 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %35 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @is_zero_ether_addr(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %19
  %40 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %41 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.wmi_rdy_ev_arg, %struct.wmi_rdy_ev_arg* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ether_addr_copy(i32 %42, i32 %44)
  br label %46

46:                                               ; preds = %39, %19
  %47 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %48 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @complete(i32* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %14
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ath10k_wmi_pull_rdy(%struct.ath10k*, %struct.sk_buff*, %struct.wmi_rdy_ev_arg*) #2

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #2

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @__le32_to_cpu(i32) #2

declare dso_local i64 @is_zero_ether_addr(i32) #2

declare dso_local i32 @ether_addr_copy(i32, i32) #2

declare dso_local i32 @complete(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
