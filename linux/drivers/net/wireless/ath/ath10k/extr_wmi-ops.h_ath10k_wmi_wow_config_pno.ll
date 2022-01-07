; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-ops.h_ath10k_wmi_wow_config_pno.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-ops.h_ath10k_wmi_wow_config_pno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.sk_buff* (%struct.ath10k*, i32, %struct.wmi_pno_scan_req*)* }
%struct.sk_buff = type { i32 }
%struct.wmi_pno_scan_req = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, %struct.wmi_pno_scan_req*)* @ath10k_wmi_wow_config_pno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_wow_config_pno(%struct.ath10k* %0, i32 %1, %struct.wmi_pno_scan_req* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wmi_pno_scan_req*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.wmi_pno_scan_req* %2, %struct.wmi_pno_scan_req** %7, align 8
  %10 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %11 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.sk_buff* (%struct.ath10k*, i32, %struct.wmi_pno_scan_req*)*, %struct.sk_buff* (%struct.ath10k*, i32, %struct.wmi_pno_scan_req*)** %14, align 8
  %16 = icmp ne %struct.sk_buff* (%struct.ath10k*, i32, %struct.wmi_pno_scan_req*)* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %48

20:                                               ; preds = %3
  %21 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %22 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.sk_buff* (%struct.ath10k*, i32, %struct.wmi_pno_scan_req*)*, %struct.sk_buff* (%struct.ath10k*, i32, %struct.wmi_pno_scan_req*)** %25, align 8
  %27 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.wmi_pno_scan_req*, %struct.wmi_pno_scan_req** %7, align 8
  %30 = call %struct.sk_buff* %26(%struct.ath10k* %27, i32 %28, %struct.wmi_pno_scan_req* %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %8, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = call i64 @IS_ERR(%struct.sk_buff* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %20
  %35 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %36 = call i32 @PTR_ERR(%struct.sk_buff* %35)
  store i32 %36, i32* %4, align 4
  br label %48

37:                                               ; preds = %20
  %38 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %39 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  %44 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @ath10k_wmi_cmd_send(%struct.ath10k* %44, %struct.sk_buff* %45, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %37, %34, %17
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @ath10k_wmi_cmd_send(%struct.ath10k*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
