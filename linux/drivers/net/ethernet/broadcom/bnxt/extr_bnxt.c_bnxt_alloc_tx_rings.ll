; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_alloc_tx_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_alloc_tx_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i64*, i32, i32, %struct.TYPE_4__*, %struct.bnxt_tx_ring_info*, i64, %struct.pci_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.bnxt_tx_ring_info = type { i32, i64, i32, %struct.TYPE_3__*, %struct.bnxt_ring_struct }
%struct.TYPE_3__ = type { i32 }
%struct.bnxt_ring_struct = type { i32, i32, i32 }
%struct.pci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_alloc_tx_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_alloc_tx_rings(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnxt_tx_ring_info*, align 8
  %10 = alloca %struct.bnxt_ring_struct*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  %13 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %14 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %13, i32 0, i32 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %7, align 8
  %16 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %17 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %19 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %1
  %23 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %24 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = add i64 4, %25
  %27 = call i32 @L1_CACHE_ALIGN(i64 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %28, 256
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  %31 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %32 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %31, i32 0, i32 7
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %30, %22
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %36 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %1
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %139, %37
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %41 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %142

44:                                               ; preds = %38
  %45 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %46 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %45, i32 0, i32 6
  %47 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %47, i64 %49
  store %struct.bnxt_tx_ring_info* %50, %struct.bnxt_tx_ring_info** %9, align 8
  %51 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %9, align 8
  %52 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %51, i32 0, i32 4
  store %struct.bnxt_ring_struct* %52, %struct.bnxt_ring_struct** %10, align 8
  %53 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %54 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %10, align 8
  %55 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %54, i32 0, i32 2
  %56 = call i32 @bnxt_alloc_ring(%struct.bnxt* %53, i32* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %44
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %143

61:                                               ; preds = %44
  %62 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %9, align 8
  %63 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %62, i32 0, i32 3
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %10, align 8
  %68 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %70 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %101

73:                                               ; preds = %61
  %74 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 0
  %76 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %77 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %9, align 8
  %80 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %79, i32 0, i32 1
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i32 @dma_alloc_coherent(i32* %75, i32 %78, i64* %80, i32 %81)
  %83 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %9, align 8
  %84 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %9, align 8
  %86 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %73
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %143

92:                                               ; preds = %73
  %93 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %9, align 8
  %94 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, 4
  store i64 %96, i64* %12, align 8
  %97 = load i64, i64* %12, align 8
  %98 = call i32 @cpu_to_le64(i64 %97)
  %99 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %9, align 8
  %100 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %92, %61
  %102 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %103 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %102, i32 0, i32 2
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %11, align 8
  %109 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %110 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %109, i32 0, i32 5
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i64, i64* %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %10, align 8
  %117 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %4, align 4
  %119 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %120 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %101
  br label %139

124:                                              ; preds = %101
  %125 = load i32, i32* %4, align 4
  %126 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %127 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = srem i32 %125, %128
  %130 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %131 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %132, 1
  %134 = icmp eq i32 %129, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %124
  %136 = load i32, i32* %5, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %135, %124
  br label %139

139:                                              ; preds = %138, %123
  %140 = load i32, i32* %4, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %4, align 4
  br label %38

142:                                              ; preds = %38
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %142, %89, %59
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @L1_CACHE_ALIGN(i64) #1

declare dso_local i32 @bnxt_alloc_ring(%struct.bnxt*, i32*) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
