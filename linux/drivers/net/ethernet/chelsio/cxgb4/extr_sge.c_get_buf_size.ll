; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_get_buf_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_get_buf_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.sge }
%struct.sge = type { i32 }
%struct.rx_sw_desc = type { i32 }

@RX_BUF_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.rx_sw_desc*)* @get_buf_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_buf_size(%struct.adapter* %0, %struct.rx_sw_desc* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.rx_sw_desc*, align 8
  %5 = alloca %struct.sge*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.rx_sw_desc* %1, %struct.rx_sw_desc** %4, align 8
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  store %struct.sge* %9, %struct.sge** %5, align 8
  %10 = load %struct.rx_sw_desc*, %struct.rx_sw_desc** %4, align 8
  %11 = getelementptr inbounds %struct.rx_sw_desc, %struct.rx_sw_desc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RX_BUF_SIZE, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %30 [
    i32 128, label %16
    i32 130, label %18
    i32 129, label %24
    i32 131, label %27
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %17, i32* %7, align 4
  br label %32

18:                                               ; preds = %2
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = load %struct.sge*, %struct.sge** %5, align 8
  %21 = getelementptr inbounds %struct.sge, %struct.sge* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %19, %22
  store i32 %23, i32* %7, align 4
  br label %32

24:                                               ; preds = %2
  %25 = load %struct.adapter*, %struct.adapter** %3, align 8
  %26 = call i32 @FL_MTU_SMALL_BUFSIZE(%struct.adapter* %25)
  store i32 %26, i32* %7, align 4
  br label %32

27:                                               ; preds = %2
  %28 = load %struct.adapter*, %struct.adapter** %3, align 8
  %29 = call i32 @FL_MTU_LARGE_BUFSIZE(%struct.adapter* %28)
  store i32 %29, i32* %7, align 4
  br label %32

30:                                               ; preds = %2
  %31 = call i32 (...) @BUG()
  br label %32

32:                                               ; preds = %30, %27, %24, %18, %16
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local i32 @FL_MTU_SMALL_BUFSIZE(%struct.adapter*) #1

declare dso_local i32 @FL_MTU_LARGE_BUFSIZE(%struct.adapter*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
