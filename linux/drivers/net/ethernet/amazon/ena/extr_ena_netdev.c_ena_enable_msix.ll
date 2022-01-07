; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_enable_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_enable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, i32, i32, i64, i32 }

@ENA_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error, MSI-X is already enabled\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"trying to enable MSI-X, vectors %d\0A\00", align 1
@ENA_MIN_MSIX_VEC = common dso_local global i32 0, align 4
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to enable MSI-X. irq_cnt %d\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"enable only %d MSI-X (out of %d), reduce the number of queues\0A\00", align 1
@ENA_ADMIN_MSIX_VEC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to map IRQs to CPUs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*, i32)* @ena_enable_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_enable_msix(%struct.ena_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @ENA_FLAG_MSIX_ENABLED, align 4
  %9 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %9, i32 0, i32 1
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %15 = load i32, i32* @probe, align 4
  %16 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (%struct.ena_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ena_adapter* %14, i32 %15, i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %89

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ENA_MAX_MSIX_VEC(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %26 = load i32, i32* @probe, align 4
  %27 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %28 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @netif_dbg(%struct.ena_adapter* %25, i32 %26, i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %33 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ENA_MIN_MSIX_VEC, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %38 = call i32 @pci_alloc_irq_vectors(i32 %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %22
  %42 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %43 = load i32, i32* @probe, align 4
  %44 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %45 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 (%struct.ena_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ena_adapter* %42, i32 %43, i32 %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @ENOSPC, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %89

51:                                               ; preds = %22
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %57 = load i32, i32* @probe, align 4
  %58 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %59 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @netif_notice(%struct.ena_adapter* %56, i32 %57, i32 %60, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* @ENA_ADMIN_MSIX_VEC, align 8
  %67 = sub nsw i64 %65, %66
  %68 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %69 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %68, i32 0, i32 3
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %55, %51
  %71 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %72 = call i64 @ena_init_rx_cpu_rmap(%struct.ena_adapter* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %76 = load i32, i32* @probe, align 4
  %77 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %78 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @netif_warn(%struct.ena_adapter* %75, i32 %76, i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %81

81:                                               ; preds = %74, %70
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %84 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @ENA_FLAG_MSIX_ENABLED, align 4
  %86 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %87 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %86, i32 0, i32 1
  %88 = call i32 @set_bit(i32 %85, i32* %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %81, %41, %13
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_err(%struct.ena_adapter*, i32, i32, i8*, ...) #1

declare dso_local i32 @ENA_MAX_MSIX_VEC(i32) #1

declare dso_local i32 @netif_dbg(%struct.ena_adapter*, i32, i32, i8*, i32) #1

declare dso_local i32 @pci_alloc_irq_vectors(i32, i32, i32, i32) #1

declare dso_local i32 @netif_notice(%struct.ena_adapter*, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @ena_init_rx_cpu_rmap(%struct.ena_adapter*) #1

declare dso_local i32 @netif_warn(%struct.ena_adapter*, i32, i32, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
