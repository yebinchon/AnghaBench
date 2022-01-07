; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-ops.h_ath10k_wmi_vdev_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-ops.h_ath10k_wmi_vdev_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.sk_buff* (%struct.ath10k*, %struct.wmi_vdev_start_request_arg*, i32)* }
%struct.sk_buff = type { i32 }
%struct.wmi_vdev_start_request_arg = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.wmi_vdev_start_request_arg*)* @ath10k_wmi_vdev_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_vdev_restart(%struct.ath10k* %0, %struct.wmi_vdev_start_request_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.wmi_vdev_start_request_arg*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.wmi_vdev_start_request_arg* %1, %struct.wmi_vdev_start_request_arg** %5, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %8 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.sk_buff* (%struct.ath10k*, %struct.wmi_vdev_start_request_arg*, i32)*, %struct.sk_buff* (%struct.ath10k*, %struct.wmi_vdev_start_request_arg*, i32)** %11, align 8
  %13 = icmp ne %struct.sk_buff* (%struct.ath10k*, %struct.wmi_vdev_start_request_arg*, i32)* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %19 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.sk_buff* (%struct.ath10k*, %struct.wmi_vdev_start_request_arg*, i32)*, %struct.sk_buff* (%struct.ath10k*, %struct.wmi_vdev_start_request_arg*, i32)** %22, align 8
  %24 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %25 = load %struct.wmi_vdev_start_request_arg*, %struct.wmi_vdev_start_request_arg** %5, align 8
  %26 = call %struct.sk_buff* %23(%struct.ath10k* %24, %struct.wmi_vdev_start_request_arg* %25, i32 1)
  store %struct.sk_buff* %26, %struct.sk_buff** %6, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call i64 @IS_ERR(%struct.sk_buff* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i32 @PTR_ERR(%struct.sk_buff* %31)
  store i32 %32, i32* %3, align 4
  br label %43

33:                                               ; preds = %17
  %34 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %37 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ath10k_wmi_cmd_send(%struct.ath10k* %34, %struct.sk_buff* %35, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %33, %30, %14
  %44 = load i32, i32* %3, align 4
  ret i32 %44
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
