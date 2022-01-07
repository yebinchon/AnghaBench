; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_ptp.c_sja1105_ptp_adjtime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_ptp.c_sja1105_ptp_adjtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_clock_info = type { i32 }
%struct.sja1105_private = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptp_clock_info*, i32)* @sja1105_ptp_adjtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_ptp_adjtime(%struct.ptp_clock_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ptp_clock_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sja1105_private*, align 8
  store %struct.ptp_clock_info* %0, %struct.ptp_clock_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %3, align 8
  %7 = call %struct.sja1105_private* @ptp_to_sja1105(%struct.ptp_clock_info* %6)
  store %struct.sja1105_private* %7, %struct.sja1105_private** %5, align 8
  %8 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %9 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %12 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %11, i32 0, i32 1
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @timecounter_adjtime(i32* %12, i32 %13)
  %15 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %16 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %15, i32 0, i32 0
  %17 = call i32 @mutex_unlock(i32* %16)
  ret i32 0
}

declare dso_local %struct.sja1105_private* @ptp_to_sja1105(%struct.ptp_clock_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @timecounter_adjtime(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
