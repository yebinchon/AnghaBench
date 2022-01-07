; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_stop_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_op_gen_stop_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.wmi_stop_scan_arg = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wmi_stop_scan_cmd = type { i8*, i8*, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@WMI_SCAN_STOP_ONE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@WMI_HOST_SCAN_REQ_ID_PREFIX = common dso_local global i32 0, align 4
@WMI_HOST_SCAN_REQUESTOR_ID_PREFIX = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"wmi stop scan reqid %d req_type %d vdev/scan_id %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, %struct.wmi_stop_scan_arg*)* @ath10k_wmi_op_gen_stop_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_op_gen_stop_scan(%struct.ath10k* %0, %struct.wmi_stop_scan_arg* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.wmi_stop_scan_arg*, align 8
  %6 = alloca %struct.wmi_stop_scan_cmd*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.wmi_stop_scan_arg* %1, %struct.wmi_stop_scan_arg** %5, align 8
  %10 = load %struct.wmi_stop_scan_arg*, %struct.wmi_stop_scan_arg** %5, align 8
  %11 = getelementptr inbounds %struct.wmi_stop_scan_arg, %struct.wmi_stop_scan_arg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sgt i32 %12, 4095
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.sk_buff* @ERR_PTR(i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %3, align 8
  br label %98

18:                                               ; preds = %2
  %19 = load %struct.wmi_stop_scan_arg*, %struct.wmi_stop_scan_arg** %5, align 8
  %20 = getelementptr inbounds %struct.wmi_stop_scan_arg, %struct.wmi_stop_scan_arg* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @WMI_SCAN_STOP_ONE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct.wmi_stop_scan_arg*, %struct.wmi_stop_scan_arg** %5, align 8
  %26 = getelementptr inbounds %struct.wmi_stop_scan_arg, %struct.wmi_stop_scan_arg* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %28, 4095
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.sk_buff* @ERR_PTR(i32 %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %3, align 8
  br label %98

34:                                               ; preds = %24, %18
  %35 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %36 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %35, i32 32)
  store %struct.sk_buff* %36, %struct.sk_buff** %7, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.sk_buff* @ERR_PTR(i32 %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %3, align 8
  br label %98

43:                                               ; preds = %34
  %44 = load %struct.wmi_stop_scan_arg*, %struct.wmi_stop_scan_arg** %5, align 8
  %45 = getelementptr inbounds %struct.wmi_stop_scan_arg, %struct.wmi_stop_scan_arg* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @WMI_HOST_SCAN_REQ_ID_PREFIX, align 4
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load %struct.wmi_stop_scan_arg*, %struct.wmi_stop_scan_arg** %5, align 8
  %52 = getelementptr inbounds %struct.wmi_stop_scan_arg, %struct.wmi_stop_scan_arg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @WMI_HOST_SCAN_REQUESTOR_ID_PREFIX, align 4
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.wmi_stop_scan_cmd*
  store %struct.wmi_stop_scan_cmd* %60, %struct.wmi_stop_scan_cmd** %6, align 8
  %61 = load %struct.wmi_stop_scan_arg*, %struct.wmi_stop_scan_arg** %5, align 8
  %62 = getelementptr inbounds %struct.wmi_stop_scan_arg, %struct.wmi_stop_scan_arg* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i8* @__cpu_to_le32(i32 %64)
  %66 = load %struct.wmi_stop_scan_cmd*, %struct.wmi_stop_scan_cmd** %6, align 8
  %67 = getelementptr inbounds %struct.wmi_stop_scan_cmd, %struct.wmi_stop_scan_cmd* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load %struct.wmi_stop_scan_arg*, %struct.wmi_stop_scan_arg** %5, align 8
  %69 = getelementptr inbounds %struct.wmi_stop_scan_arg, %struct.wmi_stop_scan_arg* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @__cpu_to_le32(i32 %71)
  %73 = load %struct.wmi_stop_scan_cmd*, %struct.wmi_stop_scan_cmd** %6, align 8
  %74 = getelementptr inbounds %struct.wmi_stop_scan_cmd, %struct.wmi_stop_scan_cmd* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i8* @__cpu_to_le32(i32 %75)
  %77 = load %struct.wmi_stop_scan_cmd*, %struct.wmi_stop_scan_cmd** %6, align 8
  %78 = getelementptr inbounds %struct.wmi_stop_scan_cmd, %struct.wmi_stop_scan_cmd* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i8* @__cpu_to_le32(i32 %79)
  %81 = load %struct.wmi_stop_scan_cmd*, %struct.wmi_stop_scan_cmd** %6, align 8
  %82 = getelementptr inbounds %struct.wmi_stop_scan_cmd, %struct.wmi_stop_scan_cmd* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %84 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %85 = load %struct.wmi_stop_scan_arg*, %struct.wmi_stop_scan_arg** %5, align 8
  %86 = getelementptr inbounds %struct.wmi_stop_scan_arg, %struct.wmi_stop_scan_arg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.wmi_stop_scan_arg*, %struct.wmi_stop_scan_arg** %5, align 8
  %89 = getelementptr inbounds %struct.wmi_stop_scan_arg, %struct.wmi_stop_scan_arg* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = load %struct.wmi_stop_scan_arg*, %struct.wmi_stop_scan_arg** %5, align 8
  %93 = getelementptr inbounds %struct.wmi_stop_scan_arg, %struct.wmi_stop_scan_arg* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @ath10k_dbg(%struct.ath10k* %83, i32 %84, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %91, i32 %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %97, %struct.sk_buff** %3, align 8
  br label %98

98:                                               ; preds = %43, %39, %30, %14
  %99 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %99
}

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
