; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_fl_starving.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_fl_starving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.sge }
%struct.sge = type { i64 }
%struct.sge_fl = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.sge_fl*)* @fl_starving to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_starving(%struct.adapter* %0, %struct.sge_fl* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_fl*, align 8
  %5 = alloca %struct.sge*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sge_fl* %1, %struct.sge_fl** %4, align 8
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  store %struct.sge* %7, %struct.sge** %5, align 8
  %8 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %9 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %12 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %10, %13
  %15 = load %struct.sge*, %struct.sge** %5, align 8
  %16 = getelementptr inbounds %struct.sge, %struct.sge* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sle i64 %14, %17
  %19 = zext i1 %18 to i32
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
