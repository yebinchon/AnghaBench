; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-ops.h_ath10k_wmi_get_txbf_conf_scheme.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi-ops.h_ath10k_wmi_get_txbf_conf_scheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ath10k*)* }

@WMI_TXBF_CONF_UNSUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_wmi_get_txbf_conf_scheme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_get_txbf_conf_scheme(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %4 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %5 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32 (%struct.ath10k*)*, i32 (%struct.ath10k*)** %8, align 8
  %10 = icmp ne i32 (%struct.ath10k*)* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @WMI_TXBF_CONF_UNSUPPORTED, align 4
  store i32 %12, i32* %2, align 4
  br label %22

13:                                               ; preds = %1
  %14 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.ath10k*)*, i32 (%struct.ath10k*)** %18, align 8
  %20 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %21 = call i32 %19(%struct.ath10k* %20)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %13, %11
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
