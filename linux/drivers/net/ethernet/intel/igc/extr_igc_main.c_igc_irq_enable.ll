; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_adapter = type { i32, i64, %struct.igc_hw }
%struct.igc_hw = type { i32 }

@IGC_IMS_LSC = common dso_local global i32 0, align 4
@IGC_IMS_DOUTSYNC = common dso_local global i32 0, align 4
@IGC_IMS_DRSTA = common dso_local global i32 0, align 4
@IGC_EIAC = common dso_local global i32 0, align 4
@IGC_EIAM = common dso_local global i32 0, align 4
@IGC_EIMS = common dso_local global i32 0, align 4
@IGC_IMS = common dso_local global i32 0, align 4
@IMS_ENABLE_MASK = common dso_local global i32 0, align 4
@IGC_IAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igc_adapter*)* @igc_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igc_irq_enable(%struct.igc_adapter* %0) #0 {
  %2 = alloca %struct.igc_adapter*, align 8
  %3 = alloca %struct.igc_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.igc_adapter* %0, %struct.igc_adapter** %2, align 8
  %6 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %6, i32 0, i32 2
  store %struct.igc_hw* %7, %struct.igc_hw** %3, align 8
  %8 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %44

12:                                               ; preds = %1
  %13 = load i32, i32* @IGC_IMS_LSC, align 4
  %14 = load i32, i32* @IGC_IMS_DOUTSYNC, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @IGC_IMS_DRSTA, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @IGC_EIAC, align 4
  %19 = call i32 @rd32(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @IGC_EIAC, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %21, %24
  %26 = call i32 @wr32(i32 %20, i32 %25)
  %27 = load i32, i32* @IGC_EIAM, align 4
  %28 = call i32 @rd32(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @IGC_EIAM, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %30, %33
  %35 = call i32 @wr32(i32 %29, i32 %34)
  %36 = load i32, i32* @IGC_EIMS, align 4
  %37 = load %struct.igc_adapter*, %struct.igc_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @wr32(i32 %36, i32 %39)
  %41 = load i32, i32* @IGC_IMS, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @wr32(i32 %41, i32 %42)
  br label %55

44:                                               ; preds = %1
  %45 = load i32, i32* @IGC_IMS, align 4
  %46 = load i32, i32* @IMS_ENABLE_MASK, align 4
  %47 = load i32, i32* @IGC_IMS_DRSTA, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @wr32(i32 %45, i32 %48)
  %50 = load i32, i32* @IGC_IAM, align 4
  %51 = load i32, i32* @IMS_ENABLE_MASK, align 4
  %52 = load i32, i32* @IGC_IMS_DRSTA, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @wr32(i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %44, %12
  ret void
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
