; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_get_scd_ssn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_get_scd_ssn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il4965_tx_resp = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_MAX_SN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il4965_tx_resp*)* @il4965_get_scd_ssn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_get_scd_ssn(%struct.il4965_tx_resp* %0) #0 {
  %2 = alloca %struct.il4965_tx_resp*, align 8
  store %struct.il4965_tx_resp* %0, %struct.il4965_tx_resp** %2, align 8
  %3 = load %struct.il4965_tx_resp*, %struct.il4965_tx_resp** %2, align 8
  %4 = getelementptr inbounds %struct.il4965_tx_resp, %struct.il4965_tx_resp* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load %struct.il4965_tx_resp*, %struct.il4965_tx_resp** %2, align 8
  %7 = getelementptr inbounds %struct.il4965_tx_resp, %struct.il4965_tx_resp* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %5, i64 %9
  %11 = call i32 @le32_to_cpup(i32* %10)
  %12 = load i32, i32* @IEEE80211_MAX_SN, align 4
  %13 = and i32 %11, %12
  ret i32 %13
}

declare dso_local i32 @le32_to_cpup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
