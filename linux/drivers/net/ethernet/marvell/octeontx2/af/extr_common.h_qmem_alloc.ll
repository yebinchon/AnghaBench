; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_common.h_qmem_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_common.h_qmem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.qmem = type { i32, i32, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OTX2_ALIGN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.qmem**, i32, i32)* @qmem_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qmem_alloc(%struct.device* %0, %struct.qmem** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.qmem**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qmem*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.qmem** %1, %struct.qmem*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %91

17:                                               ; preds = %4
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.qmem* @devm_kzalloc(%struct.device* %18, i32 40, i32 %19)
  %21 = load %struct.qmem**, %struct.qmem*** %7, align 8
  store %struct.qmem* %20, %struct.qmem** %21, align 8
  %22 = load %struct.qmem**, %struct.qmem*** %7, align 8
  %23 = load %struct.qmem*, %struct.qmem** %22, align 8
  %24 = icmp ne %struct.qmem* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %91

28:                                               ; preds = %17
  %29 = load %struct.qmem**, %struct.qmem*** %7, align 8
  %30 = load %struct.qmem*, %struct.qmem** %29, align 8
  store %struct.qmem* %30, %struct.qmem** %10, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.qmem*, %struct.qmem** %10, align 8
  %33 = getelementptr inbounds %struct.qmem, %struct.qmem* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* @OTX2_ALIGN, align 8
  %39 = add nsw i64 %37, %38
  %40 = load %struct.qmem*, %struct.qmem** %10, align 8
  %41 = getelementptr inbounds %struct.qmem, %struct.qmem* %40, i32 0, i32 5
  store i64 %39, i64* %41, align 8
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = load %struct.qmem*, %struct.qmem** %10, align 8
  %44 = getelementptr inbounds %struct.qmem, %struct.qmem* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.qmem*, %struct.qmem** %10, align 8
  %47 = getelementptr inbounds %struct.qmem, %struct.qmem* %46, i32 0, i32 3
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i64 @dma_alloc_coherent(%struct.device* %42, i64 %45, i64* %47, i32 %48)
  %50 = load %struct.qmem*, %struct.qmem** %10, align 8
  %51 = getelementptr inbounds %struct.qmem, %struct.qmem* %50, i32 0, i32 4
  store i64 %49, i64* %51, align 8
  %52 = load %struct.qmem*, %struct.qmem** %10, align 8
  %53 = getelementptr inbounds %struct.qmem, %struct.qmem* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %28
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %91

59:                                               ; preds = %28
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.qmem*, %struct.qmem** %10, align 8
  %62 = getelementptr inbounds %struct.qmem, %struct.qmem* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.qmem*, %struct.qmem** %10, align 8
  %64 = getelementptr inbounds %struct.qmem, %struct.qmem* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i64, i64* @OTX2_ALIGN, align 8
  %68 = call i32 @ALIGN(i32 %66, i64 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.qmem*, %struct.qmem** %10, align 8
  %72 = getelementptr inbounds %struct.qmem, %struct.qmem* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  %75 = load %struct.qmem*, %struct.qmem** %10, align 8
  %76 = getelementptr inbounds %struct.qmem, %struct.qmem* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  %77 = load %struct.qmem*, %struct.qmem** %10, align 8
  %78 = getelementptr inbounds %struct.qmem, %struct.qmem* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.qmem*, %struct.qmem** %10, align 8
  %81 = getelementptr inbounds %struct.qmem, %struct.qmem* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, %79
  store i64 %83, i64* %81, align 8
  %84 = load %struct.qmem*, %struct.qmem** %10, align 8
  %85 = getelementptr inbounds %struct.qmem, %struct.qmem* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.qmem*, %struct.qmem** %10, align 8
  %88 = getelementptr inbounds %struct.qmem, %struct.qmem* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, %86
  store i64 %90, i64* %88, align 8
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %59, %56, %25, %14
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.qmem* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @dma_alloc_coherent(%struct.device*, i64, i64*, i32) #1

declare dso_local i32 @ALIGN(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
