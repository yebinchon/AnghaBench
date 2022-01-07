; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4.h_init_rspq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4.h_init_rspq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_rspq = type { i32, i32, %struct.adapter* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_rspq*, i32, i32, i32, i32)* @init_rspq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_rspq(%struct.adapter* %0, %struct.sge_rspq* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.sge_rspq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store %struct.sge_rspq* %1, %struct.sge_rspq** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.adapter*, %struct.adapter** %7, align 8
  %14 = load %struct.sge_rspq*, %struct.sge_rspq** %8, align 8
  %15 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %14, i32 0, i32 2
  store %struct.adapter* %13, %struct.adapter** %15, align 8
  %16 = load %struct.sge_rspq*, %struct.sge_rspq** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @cxgb4_set_rspq_intr_params(%struct.sge_rspq* %16, i32 %17, i32 %18)
  %20 = load i32, i32* %12, align 4
  %21 = load %struct.sge_rspq*, %struct.sge_rspq** %8, align 8
  %22 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.sge_rspq*, %struct.sge_rspq** %8, align 8
  %25 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  ret void
}

declare dso_local i32 @cxgb4_set_rspq_intr_params(%struct.sge_rspq*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
