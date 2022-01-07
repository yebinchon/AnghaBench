; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-ops.h_ath10k_wmi_sta_keepalive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-ops.h_ath10k_wmi_sta_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.sk_buff* (%struct.ath10k*, %struct.wmi_sta_keepalive_arg*)* }
%struct.sk_buff = type { i32 }
%struct.wmi_sta_keepalive_arg = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.wmi_sta_keepalive_arg*)* @ath10k_wmi_sta_keepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_sta_keepalive(%struct.ath10k* %0, %struct.wmi_sta_keepalive_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.wmi_sta_keepalive_arg*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.wmi_sta_keepalive_arg* %1, %struct.wmi_sta_keepalive_arg** %5, align 8
  %8 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %9 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.sk_buff* (%struct.ath10k*, %struct.wmi_sta_keepalive_arg*)*, %struct.sk_buff* (%struct.ath10k*, %struct.wmi_sta_keepalive_arg*)** %12, align 8
  %14 = icmp ne %struct.sk_buff* (%struct.ath10k*, %struct.wmi_sta_keepalive_arg*)* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %20 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.sk_buff* (%struct.ath10k*, %struct.wmi_sta_keepalive_arg*)*, %struct.sk_buff* (%struct.ath10k*, %struct.wmi_sta_keepalive_arg*)** %23, align 8
  %25 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %26 = load %struct.wmi_sta_keepalive_arg*, %struct.wmi_sta_keepalive_arg** %5, align 8
  %27 = call %struct.sk_buff* %24(%struct.ath10k* %25, %struct.wmi_sta_keepalive_arg* %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %6, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = call i64 @IS_ERR(%struct.sk_buff* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call i32 @PTR_ERR(%struct.sk_buff* %32)
  store i32 %33, i32* %3, align 4
  br label %45

34:                                               ; preds = %18
  %35 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %36 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  %41 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ath10k_wmi_cmd_send(%struct.ath10k* %41, %struct.sk_buff* %42, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %34, %31, %15
  %46 = load i32, i32* %3, align 4
  ret i32 %46
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
