; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_setup_tx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_setup_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.e1000_tx_ring = type { i32, i32, i8*, i64, i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"txdr align check failed: %u bytes at %p\0A\00", align 1
@probe = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"Unable to allocate aligned memory for the transmit descriptor ring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*, %struct.e1000_tx_ring*)* @e1000_setup_tx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_setup_tx_resources(%struct.e1000_adapter* %0, %struct.e1000_tx_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.e1000_adapter*, align 8
  %5 = alloca %struct.e1000_tx_ring*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %4, align 8
  store %struct.e1000_tx_ring* %1, %struct.e1000_tx_ring** %5, align 8
  %10 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %10, i32 0, i32 0
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %6, align 8
  %13 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %14 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @vzalloc(i32 %19)
  %21 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %22 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %24 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %178

30:                                               ; preds = %2
  %31 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %32 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %38 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %40 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ALIGN(i32 %41, i32 4096)
  %43 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %44 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %48 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %51 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %50, i32 0, i32 6
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @dma_alloc_coherent(i32* %46, i32 %49, i32* %51, i32 %52)
  %54 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %55 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %57 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %30
  br label %61

61:                                               ; preds = %108, %60
  %62 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %63 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @vfree(i32 %64)
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %178

68:                                               ; preds = %30
  %69 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %70 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %71 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %74 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @e1000_check_64k_bound(%struct.e1000_adapter* %69, i8* %72, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %166, label %78

78:                                               ; preds = %68
  %79 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %80 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %8, align 8
  %82 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %83 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* @tx_err, align 4
  %86 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %87 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %90 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 (i32, i8*, ...) @e_err(i32 %85, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %88, i8* %91)
  %93 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %94 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %93, i32 0, i32 0
  %95 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %96 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %99 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %98, i32 0, i32 6
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call i8* @dma_alloc_coherent(i32* %94, i32 %97, i32* %99, i32 %100)
  %102 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %103 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  %104 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %105 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %117, label %108

108:                                              ; preds = %78
  %109 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %110 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %109, i32 0, i32 0
  %111 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %112 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i8*, i8** %8, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @dma_free_coherent(i32* %110, i32 %113, i8* %114, i32 %115)
  br label %61

117:                                              ; preds = %78
  %118 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %119 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %120 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %123 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @e1000_check_64k_bound(%struct.e1000_adapter* %118, i8* %121, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %156, label %127

127:                                              ; preds = %117
  %128 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %129 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %128, i32 0, i32 0
  %130 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %131 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %134 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %137 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @dma_free_coherent(i32* %129, i32 %132, i8* %135, i32 %138)
  %140 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %141 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %140, i32 0, i32 0
  %142 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %143 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i8*, i8** %8, align 8
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @dma_free_coherent(i32* %141, i32 %144, i8* %145, i32 %146)
  %148 = load i32, i32* @probe, align 4
  %149 = call i32 (i32, i8*, ...) @e_err(i32 %148, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  %150 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %151 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @vfree(i32 %152)
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %3, align 4
  br label %178

156:                                              ; preds = %117
  %157 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %158 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %157, i32 0, i32 0
  %159 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %160 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i8*, i8** %8, align 8
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @dma_free_coherent(i32* %158, i32 %161, i8* %162, i32 %163)
  br label %165

165:                                              ; preds = %156
  br label %166

166:                                              ; preds = %165, %68
  %167 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %168 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %167, i32 0, i32 2
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %171 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @memset(i8* %169, i32 0, i32 %172)
  %174 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %175 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %174, i32 0, i32 4
  store i64 0, i64* %175, align 8
  %176 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %5, align 8
  %177 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %176, i32 0, i32 3
  store i64 0, i64* %177, align 8
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %166, %127, %61, %27
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @vzalloc(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @e1000_check_64k_bound(%struct.e1000_adapter*, i8*, i32) #1

declare dso_local i32 @e_err(i32, i8*, ...) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
