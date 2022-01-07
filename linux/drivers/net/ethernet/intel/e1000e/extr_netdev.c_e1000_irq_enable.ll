; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i64, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EIAC_82574 = common dso_local global i32 0, align 4
@E1000_EIAC_MASK_82574 = common dso_local global i32 0, align 4
@IMS = common dso_local global i32 0, align 4
@E1000_IMS_OTHER = common dso_local global i32 0, align 4
@IMS_OTHER_MASK = common dso_local global i32 0, align 4
@e1000_pch_lpt = common dso_local global i64 0, align 8
@IMS_ENABLE_MASK = common dso_local global i32 0, align 4
@E1000_IMS_ECCER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_irq_enable(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %4 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %4, i32 0, i32 2
  store %struct.e1000_hw* %5, %struct.e1000_hw** %3, align 8
  %6 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load i32, i32* @EIAC_82574, align 4
  %12 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @E1000_EIAC_MASK_82574, align 4
  %16 = and i32 %14, %15
  %17 = call i32 @ew32(i32 %11, i32 %16)
  %18 = load i32, i32* @IMS, align 4
  %19 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @E1000_IMS_OTHER, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @IMS_OTHER_MASK, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @ew32(i32 %18, i32 %25)
  br label %45

27:                                               ; preds = %1
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @e1000_pch_lpt, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i32, i32* @IMS, align 4
  %36 = load i32, i32* @IMS_ENABLE_MASK, align 4
  %37 = load i32, i32* @E1000_IMS_ECCER, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @ew32(i32 %35, i32 %38)
  br label %44

40:                                               ; preds = %27
  %41 = load i32, i32* @IMS, align 4
  %42 = load i32, i32* @IMS_ENABLE_MASK, align 4
  %43 = call i32 @ew32(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %34
  br label %45

45:                                               ; preds = %44, %10
  %46 = call i32 (...) @e1e_flush()
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
