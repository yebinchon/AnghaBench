; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_clear_legacy_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_clear_legacy_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, %struct.TYPE_2__, %struct.qlcnic_hardware_context* }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_hardware_context = type { i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@QLC_83XX_LEGACY_INTX_MAX_RETRY = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_clear_legacy_intr(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_hardware_context*, align 8
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 3
  %9 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  store %struct.qlcnic_hardware_context* %9, %struct.qlcnic_hardware_context** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @readl(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @QLC_83XX_VALID_INTX_BIT31(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %2, align 4
  br label %72

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @QLC_83XX_INTX_FUNC(i32 %20)
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %22, i32 0, i32 3
  %24 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %23, align 8
  %25 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %21, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* @IRQ_NONE, align 4
  store i32 %34, i32* %2, align 4
  br label %72

35:                                               ; preds = %19
  %36 = call i32 (...) @wmb()
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @writel_relaxed(i32 0, i32 %39)
  %41 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @readl(i32 %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %68, %35
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @readl(i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @QLC_83XX_INTX_FUNC(i32 %50)
  %52 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %5, align 8
  %53 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %70

57:                                               ; preds = %45
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %4, align 4
  %62 = call i64 @QLC_83XX_VALID_INTX_BIT30(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @QLC_83XX_LEGACY_INTX_MAX_RETRY, align 4
  %67 = icmp slt i32 %65, %66
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i1 [ false, %60 ], [ %67, %64 ]
  br i1 %69, label %45, label %70

70:                                               ; preds = %68, %56
  %71 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %28, %17
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @QLC_83XX_VALID_INTX_BIT31(i32) #1

declare dso_local i64 @QLC_83XX_INTX_FUNC(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i64 @QLC_83XX_VALID_INTX_BIT30(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
