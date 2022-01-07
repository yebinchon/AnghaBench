; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c_get_buf_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c_get_buf_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.sge }
%struct.sge = type { i32 }
%struct.rx_sw_desc = type { i32 }

@RX_LARGE_BUF = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.rx_sw_desc*)* @get_buf_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_buf_size(%struct.adapter* %0, %struct.rx_sw_desc* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.rx_sw_desc*, align 8
  %5 = alloca %struct.sge*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.rx_sw_desc* %1, %struct.rx_sw_desc** %4, align 8
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  store %struct.sge* %7, %struct.sge** %5, align 8
  %8 = load %struct.sge*, %struct.sge** %5, align 8
  %9 = getelementptr inbounds %struct.sge, %struct.sge* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %4, align 8
  %14 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RX_LARGE_BUF, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = load %struct.sge*, %struct.sge** %5, align 8
  %22 = getelementptr inbounds %struct.sge, %struct.sge* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %20, %23
  br label %27

25:                                               ; preds = %12, %2
  %26 = load i32, i32* @PAGE_SIZE, align 4
  br label %27

27:                                               ; preds = %25, %19
  %28 = phi i32 [ %24, %19 ], [ %26, %25 ]
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
