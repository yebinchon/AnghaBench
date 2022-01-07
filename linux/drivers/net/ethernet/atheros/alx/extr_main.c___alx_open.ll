; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c___alx_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c___alx_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_priv = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ALX_ISR = common dso_local global i32 0, align 4
@ALX_ISR_DIS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alx_priv*, i32)* @__alx_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__alx_open(%struct.alx_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.alx_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.alx_priv* %0, %struct.alx_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %8 = call i32 @alx_enable_msix(%struct.alx_priv* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %13 = call i32 @alx_init_intr(%struct.alx_priv* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %95

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18, %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %24 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @netif_carrier_off(i32 %25)
  br label %27

27:                                               ; preds = %22, %19
  %28 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %29 = call i32 @alx_alloc_napis(%struct.alx_priv* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %88

33:                                               ; preds = %27
  %34 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %35 = call i32 @alx_alloc_rings(%struct.alx_priv* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %83

39:                                               ; preds = %33
  %40 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %41 = call i32 @alx_configure(%struct.alx_priv* %40)
  %42 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %43 = call i32 @alx_request_irq(%struct.alx_priv* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %83

47:                                               ; preds = %39
  %48 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %49 = call i32 @alx_reinit_rings(%struct.alx_priv* %48)
  %50 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %51 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %54 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @netif_set_real_num_tx_queues(i32 %52, i32 %55)
  %57 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %58 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %61 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @netif_set_real_num_rx_queues(i32 %59, i32 %62)
  %64 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %65 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %64, i32 0, i32 0
  %66 = load i32, i32* @ALX_ISR, align 4
  %67 = load i64, i64* @ALX_ISR_DIS, align 8
  %68 = trunc i64 %67 to i32
  %69 = xor i32 %68, -1
  %70 = call i32 @alx_write_mem32(%struct.TYPE_2__* %65, i32 %66, i32 %69)
  %71 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %72 = call i32 @alx_irq_enable(%struct.alx_priv* %71)
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %47
  %76 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %77 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @netif_tx_start_all_queues(i32 %78)
  br label %80

80:                                               ; preds = %75, %47
  %81 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %82 = call i32 @alx_schedule_link_check(%struct.alx_priv* %81)
  store i32 0, i32* %3, align 4
  br label %95

83:                                               ; preds = %46, %38
  %84 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %85 = call i32 @alx_free_rings(%struct.alx_priv* %84)
  %86 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %87 = call i32 @alx_free_napis(%struct.alx_priv* %86)
  br label %88

88:                                               ; preds = %83, %32
  %89 = load %struct.alx_priv*, %struct.alx_priv** %4, align 8
  %90 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @pci_free_irq_vectors(i32 %92)
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %88, %80, %16
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @alx_enable_msix(%struct.alx_priv*) #1

declare dso_local i32 @alx_init_intr(%struct.alx_priv*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @alx_alloc_napis(%struct.alx_priv*) #1

declare dso_local i32 @alx_alloc_rings(%struct.alx_priv*) #1

declare dso_local i32 @alx_configure(%struct.alx_priv*) #1

declare dso_local i32 @alx_request_irq(%struct.alx_priv*) #1

declare dso_local i32 @alx_reinit_rings(%struct.alx_priv*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(i32, i32) #1

declare dso_local i32 @netif_set_real_num_rx_queues(i32, i32) #1

declare dso_local i32 @alx_write_mem32(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @alx_irq_enable(%struct.alx_priv*) #1

declare dso_local i32 @netif_tx_start_all_queues(i32) #1

declare dso_local i32 @alx_schedule_link_check(%struct.alx_priv*) #1

declare dso_local i32 @alx_free_rings(%struct.alx_priv*) #1

declare dso_local i32 @alx_free_napis(%struct.alx_priv*) #1

declare dso_local i32 @pci_free_irq_vectors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
