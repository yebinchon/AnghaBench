; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_disassociate_bssid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_disassociate_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32 }
%struct.host_command = type { i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@DISASSOCIATION_BSSID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"DISASSOCIATION_BSSID\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*)* @ipw2100_disassociate_bssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_disassociate_bssid(%struct.ipw2100_priv* %0) #0 {
  %2 = alloca %struct.ipw2100_priv*, align 8
  %3 = alloca %struct.host_command, align 4
  %4 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %2, align 8
  %5 = getelementptr inbounds %struct.host_command, %struct.host_command* %3, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds %struct.host_command, %struct.host_command* %3, i32 0, i32 1
  %7 = load i32, i32* @ETH_ALEN, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.host_command, %struct.host_command* %3, i32 0, i32 2
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.host_command, %struct.host_command* %3, i32 0, i32 3
  %10 = load i32, i32* @DISASSOCIATION_BSSID, align 4
  store i32 %10, i32* %9, align 4
  %11 = call i32 @IPW_DEBUG_HC(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %12 = getelementptr inbounds %struct.host_command, %struct.host_command* %3, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %15 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = call i32 @memcpy(i32 %13, i32 %16, i32 %17)
  %19 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %20 = call i32 @ipw2100_hw_send_command(%struct.ipw2100_priv* %19, %struct.host_command* %3)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i32 @IPW_DEBUG_HC(i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ipw2100_hw_send_command(%struct.ipw2100_priv*, %struct.host_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
