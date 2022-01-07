; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, i64, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@IGB_FLAG_HAS_MSIX = common dso_local global i32 0, align 4
@E1000_IMS_LSC = common dso_local global i32 0, align 4
@E1000_IMS_DOUTSYNC = common dso_local global i32 0, align 4
@E1000_IMS_DRSTA = common dso_local global i32 0, align 4
@E1000_EIAC = common dso_local global i32 0, align 4
@E1000_EIAM = common dso_local global i32 0, align 4
@E1000_EIMS = common dso_local global i32 0, align 4
@E1000_MBVFIMR = common dso_local global i32 0, align 4
@E1000_IMS_VMMB = common dso_local global i32 0, align 4
@E1000_IMS = common dso_local global i32 0, align 4
@IMS_ENABLE_MASK = common dso_local global i32 0, align 4
@E1000_IAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*)* @igb_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_irq_enable(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %6 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %6, i32 0, i32 3
  store %struct.e1000_hw* %7, %struct.e1000_hw** %3, align 8
  %8 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IGB_FLAG_HAS_MSIX, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %57

14:                                               ; preds = %1
  %15 = load i32, i32* @E1000_IMS_LSC, align 4
  %16 = load i32, i32* @E1000_IMS_DOUTSYNC, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @E1000_IMS_DRSTA, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @E1000_EIAC, align 4
  %21 = call i32 @rd32(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @E1000_EIAC, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %23, %26
  %28 = call i32 @wr32(i32 %22, i32 %27)
  %29 = load i32, i32* @E1000_EIAM, align 4
  %30 = call i32 @rd32(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @E1000_EIAM, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %32, %35
  %37 = call i32 @wr32(i32 %31, i32 %36)
  %38 = load i32, i32* @E1000_EIMS, align 4
  %39 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @wr32(i32 %38, i32 %41)
  %43 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %14
  %48 = load i32, i32* @E1000_MBVFIMR, align 4
  %49 = call i32 @wr32(i32 %48, i32 255)
  %50 = load i32, i32* @E1000_IMS_VMMB, align 4
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %47, %14
  %54 = load i32, i32* @E1000_IMS, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @wr32(i32 %54, i32 %55)
  br label %68

57:                                               ; preds = %1
  %58 = load i32, i32* @E1000_IMS, align 4
  %59 = load i32, i32* @IMS_ENABLE_MASK, align 4
  %60 = load i32, i32* @E1000_IMS_DRSTA, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @wr32(i32 %58, i32 %61)
  %63 = load i32, i32* @E1000_IAM, align 4
  %64 = load i32, i32* @IMS_ENABLE_MASK, align 4
  %65 = load i32, i32* @E1000_IMS_DRSTA, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @wr32(i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %57, %53
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
