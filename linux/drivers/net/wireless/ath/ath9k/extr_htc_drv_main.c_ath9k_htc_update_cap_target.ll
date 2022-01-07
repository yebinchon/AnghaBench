; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_update_cap_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_main.c_ath9k_htc_update_cap_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ath9k_htc_cap_target = type { i32, i32, i32, i32 }

@WMI_TARGET_IC_UPDATE_CMDID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_htc_update_cap_target(%struct.ath9k_htc_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ath9k_htc_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath9k_htc_cap_target, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 @memset(%struct.ath9k_htc_cap_target* %5, i32 0, i32 16)
  %9 = call i32 @cpu_to_be32(i32 65535)
  %10 = getelementptr inbounds %struct.ath9k_htc_cap_target, %struct.ath9k_htc_cap_target* %5, i32 0, i32 3
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.ath9k_htc_cap_target, %struct.ath9k_htc_cap_target* %5, i32 0, i32 0
  store i32 255, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds %struct.ath9k_htc_cap_target, %struct.ath9k_htc_cap_target* %5, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %15 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.ath9k_htc_cap_target, %struct.ath9k_htc_cap_target* %5, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @WMI_TARGET_IC_UPDATE_CMDID, align 4
  %22 = call i32 @WMI_CMD_BUF(i32 %21, %struct.ath9k_htc_cap_target* %5)
  %23 = load i32, i32* %6, align 4
  ret i32 %23
}

declare dso_local i32 @memset(%struct.ath9k_htc_cap_target*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @WMI_CMD_BUF(i32, %struct.ath9k_htc_cap_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
