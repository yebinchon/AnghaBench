; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_ptp.c_sja1105_ptp_adjfine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_ptp.c_sja1105_ptp_adjfine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_clock_info = type { i32 }
%struct.sja1105_private = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@SJA1105_CC_MULT_NUM = common dso_local global i32 0, align 4
@SJA1105_CC_MULT_DEM = common dso_local global i32 0, align 4
@SJA1105_CC_MULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptp_clock_info*, i64)* @sja1105_ptp_adjfine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_ptp_adjfine(%struct.ptp_clock_info* %0, i64 %1) #0 {
  %3 = alloca %struct.ptp_clock_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sja1105_private*, align 8
  %6 = alloca i32, align 4
  store %struct.ptp_clock_info* %0, %struct.ptp_clock_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %3, align 8
  %8 = call %struct.sja1105_private* @ptp_to_sja1105(%struct.ptp_clock_info* %7)
  store %struct.sja1105_private* %8, %struct.sja1105_private** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* @SJA1105_CC_MULT_NUM, align 4
  %12 = mul nsw i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @SJA1105_CC_MULT_DEM, align 4
  %15 = call i32 @div_s64(i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %17 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %20 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %19, i32 0, i32 2
  %21 = call i32 @timecounter_read(i32* %20)
  %22 = load i64, i64* @SJA1105_CC_MULT, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %27 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  %29 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %30 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  ret i32 0
}

declare dso_local %struct.sja1105_private* @ptp_to_sja1105(%struct.ptp_clock_info*) #1

declare dso_local i32 @div_s64(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @timecounter_read(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
