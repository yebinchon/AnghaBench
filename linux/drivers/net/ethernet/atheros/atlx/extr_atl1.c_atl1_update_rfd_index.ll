; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_update_rfd_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_update_rfd_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_adapter = type { i32 }
%struct.rx_return_desc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1_adapter*, %struct.rx_return_desc*)* @atl1_update_rfd_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1_update_rfd_index(%struct.atl1_adapter* %0, %struct.rx_return_desc* %1) #0 {
  %3 = alloca %struct.atl1_adapter*, align 8
  %4 = alloca %struct.rx_return_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.atl1_adapter* %0, %struct.atl1_adapter** %3, align 8
  store %struct.rx_return_desc* %1, %struct.rx_return_desc** %4, align 8
  %6 = load %struct.rx_return_desc*, %struct.rx_return_desc** %4, align 8
  %7 = getelementptr inbounds %struct.rx_return_desc, %struct.rx_return_desc* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %10, %13
  %15 = sub nsw i32 %14, 1
  %16 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %15, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.rx_return_desc*, %struct.rx_return_desc** %4, align 8
  %21 = getelementptr inbounds %struct.rx_return_desc, %struct.rx_return_desc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %27 = load %struct.rx_return_desc*, %struct.rx_return_desc** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @atl1_clean_alloc_flag(%struct.atl1_adapter* %26, %struct.rx_return_desc* %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %2
  ret void
}

declare dso_local i32 @atl1_clean_alloc_flag(%struct.atl1_adapter*, %struct.rx_return_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
