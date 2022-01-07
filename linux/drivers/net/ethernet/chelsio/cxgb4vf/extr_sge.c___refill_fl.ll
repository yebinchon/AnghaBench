; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c___refill_fl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c___refill_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_fl = type { i64 }

@MAX_RX_REFILL = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_fl*)* @__refill_fl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__refill_fl(%struct.adapter* %0, %struct.sge_fl* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_fl*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sge_fl* %1, %struct.sge_fl** %4, align 8
  %5 = load %struct.adapter*, %struct.adapter** %3, align 8
  %6 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %7 = load i64, i64* @MAX_RX_REFILL, align 8
  %8 = trunc i64 %7 to i32
  %9 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %10 = call i64 @fl_cap(%struct.sge_fl* %9)
  %11 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %12 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %10, %13
  %15 = call i32 @min(i32 %8, i64 %14)
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call i32 @refill_fl(%struct.adapter* %5, %struct.sge_fl* %6, i32 %15, i32 %16)
  ret void
}

declare dso_local i32 @refill_fl(%struct.adapter*, %struct.sge_fl*, i32, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i64 @fl_cap(%struct.sge_fl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
