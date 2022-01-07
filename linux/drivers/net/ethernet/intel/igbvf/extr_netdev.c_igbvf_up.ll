; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_adapter = type { i32, i64, %struct.TYPE_4__*, i32, %struct.e1000_hw }
%struct.TYPE_4__ = type { i32 }
%struct.e1000_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@__IGBVF_DOWN = common dso_local global i32 0, align 4
@EICR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igbvf_up(%struct.igbvf_adapter* %0) #0 {
  %2 = alloca %struct.igbvf_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  store %struct.igbvf_adapter* %0, %struct.igbvf_adapter** %2, align 8
  %4 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %4, i32 0, i32 4
  store %struct.e1000_hw* %5, %struct.e1000_hw** %3, align 8
  %6 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %7 = call i32 @igbvf_configure(%struct.igbvf_adapter* %6)
  %8 = load i32, i32* @__IGBVF_DOWN, align 4
  %9 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %9, i32 0, i32 3
  %11 = call i32 @clear_bit(i32 %8, i32* %10)
  %12 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @napi_enable(i32* %15)
  %17 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %23 = call i32 @igbvf_configure_msix(%struct.igbvf_adapter* %22)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load i32, i32* @EICR, align 4
  %26 = call i32 @er32(i32 %25)
  %27 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %28 = call i32 @igbvf_irq_enable(%struct.igbvf_adapter* %27)
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %32, i32 0, i32 0
  %34 = load i64, i64* @jiffies, align 8
  %35 = add nsw i64 %34, 1
  %36 = call i32 @mod_timer(i32* %33, i64 %35)
  ret i32 0
}

declare dso_local i32 @igbvf_configure(%struct.igbvf_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @igbvf_configure_msix(%struct.igbvf_adapter*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @igbvf_irq_enable(%struct.igbvf_adapter*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
