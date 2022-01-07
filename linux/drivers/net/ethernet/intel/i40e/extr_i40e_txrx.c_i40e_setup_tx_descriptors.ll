; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_setup_tx_descriptors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_setup_tx_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { i32, i32, i32*, %struct.TYPE_2__, i64, i64, i32, i32, i32, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Unable to allocate memory for the Tx descriptor ring, size=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_setup_tx_descriptors(%struct.i40e_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_ring*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.i40e_ring* %0, %struct.i40e_ring** %3, align 8
  %6 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %7 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %6, i32 0, i32 9
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = icmp ne %struct.device* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %96

14:                                               ; preds = %1
  %15 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %16 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @WARN_ON(i32* %17)
  %19 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %20 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32* @kzalloc(i32 %25, i32 %26)
  %28 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %29 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %28, i32 0, i32 2
  store i32* %27, i32** %29, align 8
  %30 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %31 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %14
  br label %87

35:                                               ; preds = %14
  %36 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %37 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %36, i32 0, i32 8
  %38 = call i32 @u64_stats_init(i32* %37)
  %39 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %40 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %46 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %48 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 %50, 4
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  %53 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %54 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ALIGN(i32 %55, i32 4096)
  %57 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %58 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %61 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %64 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %63, i32 0, i32 7
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i32 @dma_alloc_coherent(%struct.device* %59, i32 %62, i32* %64, i32 %65)
  %67 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %68 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 8
  %69 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %70 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %35
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %76 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_info(%struct.device* %74, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %87

79:                                               ; preds = %35
  %80 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %81 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %80, i32 0, i32 5
  store i64 0, i64* %81, align 8
  %82 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %83 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %82, i32 0, i32 4
  store i64 0, i64* %83, align 8
  %84 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %85 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 -1, i32* %86, align 8
  store i32 0, i32* %2, align 4
  br label %96

87:                                               ; preds = %73, %34
  %88 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %89 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @kfree(i32* %90)
  %92 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %93 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %92, i32 0, i32 2
  store i32* null, i32** %93, align 8
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %87, %79, %11
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @WARN_ON(i32*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @u64_stats_init(i32*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
