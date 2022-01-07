; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_flush_descriptors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_flush_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@FLAG2_DMA_BURST = common dso_local global i32 0, align 4
@TIDV = common dso_local global i32 0, align 4
@E1000_TIDV_FPD = common dso_local global i32 0, align 4
@RDTR = common dso_local global i32 0, align 4
@E1000_RDTR_FPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000e_flush_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000e_flush_descriptors(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %4 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %4, i32 0, i32 3
  store %struct.e1000_hw* %5, %struct.e1000_hw** %3, align 8
  %6 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @FLAG2_DMA_BURST, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %44

13:                                               ; preds = %1
  %14 = load i32, i32* @TIDV, align 4
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @E1000_TIDV_FPD, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @ew32(i32 %14, i32 %19)
  %21 = load i32, i32* @RDTR, align 4
  %22 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @E1000_RDTR_FPD, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @ew32(i32 %21, i32 %26)
  %28 = call i32 (...) @e1e_flush()
  %29 = load i32, i32* @TIDV, align 4
  %30 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @E1000_TIDV_FPD, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @ew32(i32 %29, i32 %34)
  %36 = load i32, i32* @RDTR, align 4
  %37 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @E1000_RDTR_FPD, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @ew32(i32 %36, i32 %41)
  %43 = call i32 (...) @e1e_flush()
  br label %44

44:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1e_flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
