; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_cxgb2.c_cxgb_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_cxgb2.c_cxgb_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@FULL_INIT_DONE = common dso_local global i32 0, align 4
@disable_msi = common dso_local global i32 0, align 4
@t1_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @cxgb_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb_up(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = getelementptr inbounds %struct.adapter, %struct.adapter* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @FULL_INIT_DONE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %1
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = call i32 @t1_init_hw_modules(%struct.adapter* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %84

16:                                               ; preds = %10
  %17 = load %struct.adapter*, %struct.adapter** %2, align 8
  %18 = call i32 @enable_hw_csum(%struct.adapter* %17)
  %19 = load i32, i32* @FULL_INIT_DONE, align 4
  %20 = load %struct.adapter*, %struct.adapter** %2, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  br label %24

24:                                               ; preds = %16, %1
  %25 = load %struct.adapter*, %struct.adapter** %2, align 8
  %26 = call i32 @t1_interrupts_clear(%struct.adapter* %25)
  %27 = load i32, i32* @disable_msi, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load %struct.adapter*, %struct.adapter** %2, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = call i32 @pci_enable_msi(%struct.TYPE_5__* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %29, %24
  %37 = phi i1 [ false, %24 ], [ %35, %29 ]
  %38 = zext i1 %37 to i32
  %39 = load %struct.adapter*, %struct.adapter** %2, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.adapter*, %struct.adapter** %2, align 8
  %43 = getelementptr inbounds %struct.adapter, %struct.adapter* %42, i32 0, i32 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @t1_interrupt, align 4
  %48 = load %struct.adapter*, %struct.adapter** %2, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %36
  br label %56

54:                                               ; preds = %36
  %55 = load i32, i32* @IRQF_SHARED, align 4
  br label %56

56:                                               ; preds = %54, %53
  %57 = phi i32 [ 0, %53 ], [ %55, %54 ]
  %58 = load %struct.adapter*, %struct.adapter** %2, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.adapter*, %struct.adapter** %2, align 8
  %62 = call i32 @request_irq(i32 %46, i32 %47, i32 %57, i32 %60, %struct.adapter* %61)
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %56
  %66 = load %struct.adapter*, %struct.adapter** %2, align 8
  %67 = getelementptr inbounds %struct.adapter, %struct.adapter* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.adapter*, %struct.adapter** %2, align 8
  %73 = getelementptr inbounds %struct.adapter, %struct.adapter* %72, i32 0, i32 2
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = call i32 @pci_disable_msi(%struct.TYPE_5__* %74)
  br label %76

76:                                               ; preds = %71, %65
  br label %84

77:                                               ; preds = %56
  %78 = load %struct.adapter*, %struct.adapter** %2, align 8
  %79 = getelementptr inbounds %struct.adapter, %struct.adapter* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @t1_sge_start(i32 %80)
  %82 = load %struct.adapter*, %struct.adapter** %2, align 8
  %83 = call i32 @t1_interrupts_enable(%struct.adapter* %82)
  br label %84

84:                                               ; preds = %77, %76, %15
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @t1_init_hw_modules(%struct.adapter*) #1

declare dso_local i32 @enable_hw_csum(%struct.adapter*) #1

declare dso_local i32 @t1_interrupts_clear(%struct.adapter*) #1

declare dso_local i32 @pci_enable_msi(%struct.TYPE_5__*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.adapter*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_5__*) #1

declare dso_local i32 @t1_sge_start(i32) #1

declare dso_local i32 @t1_interrupts_enable(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
