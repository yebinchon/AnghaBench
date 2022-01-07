; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_free_vnic_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_free_vnic_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.bnxt_vnic_info*, %struct.pci_dev* }
%struct.bnxt_vnic_info = type { i64, i32*, i32*, i32, i32*, i32, i32, i32*, i32* }
%struct.pci_dev = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_free_vnic_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_free_vnic_attributes(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt_vnic_info*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %6 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %7 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %6, i32 0, i32 2
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %5, align 8
  %9 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %10 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %9, i32 0, i32 1
  %11 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %10, align 8
  %12 = icmp ne %struct.bnxt_vnic_info* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %85

14:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %82, %14
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %85

21:                                               ; preds = %15
  %22 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %23 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %22, i32 0, i32 1
  %24 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %24, i64 %26
  store %struct.bnxt_vnic_info* %27, %struct.bnxt_vnic_info** %4, align 8
  %28 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %29 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %28, i32 0, i32 8
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @kfree(i32* %30)
  %32 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %33 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %32, i32 0, i32 8
  store i32* null, i32** %33, align 8
  %34 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %35 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %34, i32 0, i32 7
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @kfree(i32* %36)
  %38 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %39 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %38, i32 0, i32 7
  store i32* null, i32** %39, align 8
  %40 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %41 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %21
  %45 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %48 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %51 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %54 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dma_free_coherent(i32* %46, i32 %49, i32* %52, i32 %55)
  %57 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %58 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %57, i32 0, i32 4
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %44, %21
  %60 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %61 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = load i32, i32* @PAGE_SIZE, align 4
  %68 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %69 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %72 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dma_free_coherent(i32* %66, i32 %67, i32* %70, i32 %73)
  %75 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %76 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %75, i32 0, i32 2
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %64, %59
  %78 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %79 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %78, i32 0, i32 1
  store i32* null, i32** %79, align 8
  %80 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %81 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %3, align 4
  br label %15

85:                                               ; preds = %13, %15
  ret void
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
