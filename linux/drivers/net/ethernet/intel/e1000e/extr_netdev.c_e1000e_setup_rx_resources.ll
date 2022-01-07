; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_setup_rx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_setup_rx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_ring = type { i32, i32, %struct.e1000_buffer*, i32*, i64, i64, %struct.e1000_adapter* }
%struct.e1000_buffer = type { i32 }
%struct.e1000_adapter = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PS_PAGE_BUFFERS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Unable to allocate memory for the receive descriptor ring\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000e_setup_rx_resources(%struct.e1000_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_ring*, align 8
  %4 = alloca %struct.e1000_adapter*, align 8
  %5 = alloca %struct.e1000_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.e1000_ring* %0, %struct.e1000_ring** %3, align 8
  %10 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %10, i32 0, i32 6
  %12 = load %struct.e1000_adapter*, %struct.e1000_adapter** %11, align 8
  store %struct.e1000_adapter* %12, %struct.e1000_adapter** %4, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.e1000_buffer* @vzalloc(i32 %21)
  %23 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %24 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %23, i32 0, i32 2
  store %struct.e1000_buffer* %22, %struct.e1000_buffer** %24, align 8
  %25 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %26 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %25, i32 0, i32 2
  %27 = load %struct.e1000_buffer*, %struct.e1000_buffer** %26, align 8
  %28 = icmp ne %struct.e1000_buffer* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  br label %107

30:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %55, %30
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %34 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %31
  %38 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %39 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %38, i32 0, i32 2
  %40 = load %struct.e1000_buffer*, %struct.e1000_buffer** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %40, i64 %42
  store %struct.e1000_buffer* %43, %struct.e1000_buffer** %5, align 8
  %44 = load i32, i32* @PS_PAGE_BUFFERS, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i32 @kcalloc(i32 %44, i32 4, i32 %45)
  %47 = load %struct.e1000_buffer*, %struct.e1000_buffer** %5, align 8
  %48 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.e1000_buffer*, %struct.e1000_buffer** %5, align 8
  %50 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %37
  br label %85

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %31

58:                                               ; preds = %31
  store i32 4, i32* %8, align 4
  %59 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %60 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %65 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %67 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ALIGN(i32 %68, i32 4096)
  %70 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %71 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %73 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %74 = call i32 @e1000_alloc_ring_dma(%struct.e1000_adapter* %72, %struct.e1000_ring* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %58
  br label %85

78:                                               ; preds = %58
  %79 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %80 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %79, i32 0, i32 5
  store i64 0, i64* %80, align 8
  %81 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %82 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %81, i32 0, i32 4
  store i64 0, i64* %82, align 8
  %83 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %84 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %83, i32 0, i32 3
  store i32* null, i32** %84, align 8
  store i32 0, i32* %2, align 4
  br label %114

85:                                               ; preds = %77, %53
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %103, %85
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %89 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %86
  %93 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %94 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %93, i32 0, i32 2
  %95 = load %struct.e1000_buffer*, %struct.e1000_buffer** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %95, i64 %97
  store %struct.e1000_buffer* %98, %struct.e1000_buffer** %5, align 8
  %99 = load %struct.e1000_buffer*, %struct.e1000_buffer** %5, align 8
  %100 = getelementptr inbounds %struct.e1000_buffer, %struct.e1000_buffer* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @kfree(i32 %101)
  br label %103

103:                                              ; preds = %92
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %86

106:                                              ; preds = %86
  br label %107

107:                                              ; preds = %106, %29
  %108 = load %struct.e1000_ring*, %struct.e1000_ring** %3, align 8
  %109 = getelementptr inbounds %struct.e1000_ring, %struct.e1000_ring* %108, i32 0, i32 2
  %110 = load %struct.e1000_buffer*, %struct.e1000_buffer** %109, align 8
  %111 = call i32 @vfree(%struct.e1000_buffer* %110)
  %112 = call i32 @e_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %107, %78
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.e1000_buffer* @vzalloc(i32) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @e1000_alloc_ring_dma(%struct.e1000_adapter*, %struct.e1000_ring*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @vfree(%struct.e1000_buffer*) #1

declare dso_local i32 @e_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
