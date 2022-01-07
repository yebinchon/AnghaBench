; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_card_init_chain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_card_init_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gelic_card = type { i32 }
%struct.gelic_descr_chain = type { %struct.gelic_descr*, %struct.gelic_descr* }
%struct.gelic_descr = type { i64, i64, %struct.gelic_descr*, %struct.gelic_descr* }

@GELIC_DESCR_DMA_NOT_IN_USE = common dso_local global i32 0, align 4
@GELIC_DESCR_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gelic_card*, %struct.gelic_descr_chain*, %struct.gelic_descr*, i32)* @gelic_card_init_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gelic_card_init_chain(%struct.gelic_card* %0, %struct.gelic_descr_chain* %1, %struct.gelic_descr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gelic_card*, align 8
  %7 = alloca %struct.gelic_descr_chain*, align 8
  %8 = alloca %struct.gelic_descr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.gelic_descr*, align 8
  store %struct.gelic_card* %0, %struct.gelic_card** %6, align 8
  store %struct.gelic_descr_chain* %1, %struct.gelic_descr_chain** %7, align 8
  store %struct.gelic_descr* %2, %struct.gelic_descr** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.gelic_descr*, %struct.gelic_descr** %8, align 8
  store %struct.gelic_descr* %12, %struct.gelic_descr** %11, align 8
  %13 = load %struct.gelic_descr*, %struct.gelic_descr** %11, align 8
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 32, %15
  %17 = trunc i64 %16 to i32
  %18 = call i32 @memset(%struct.gelic_descr* %13, i32 0, i32 %17)
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %49, %4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %19
  %24 = load %struct.gelic_descr*, %struct.gelic_descr** %11, align 8
  %25 = load i32, i32* @GELIC_DESCR_DMA_NOT_IN_USE, align 4
  %26 = call i32 @gelic_descr_set_status(%struct.gelic_descr* %24, i32 %25)
  %27 = load %struct.gelic_card*, %struct.gelic_card** %6, align 8
  %28 = call i32 @ctodev(%struct.gelic_card* %27)
  %29 = load %struct.gelic_descr*, %struct.gelic_descr** %11, align 8
  %30 = load i32, i32* @GELIC_DESCR_SIZE, align 4
  %31 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %32 = call i64 @dma_map_single(i32 %28, %struct.gelic_descr* %29, i32 %30, i32 %31)
  %33 = load %struct.gelic_descr*, %struct.gelic_descr** %11, align 8
  %34 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.gelic_descr*, %struct.gelic_descr** %11, align 8
  %36 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %23
  br label %92

40:                                               ; preds = %23
  %41 = load %struct.gelic_descr*, %struct.gelic_descr** %11, align 8
  %42 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %41, i64 1
  %43 = load %struct.gelic_descr*, %struct.gelic_descr** %11, align 8
  %44 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %43, i32 0, i32 2
  store %struct.gelic_descr* %42, %struct.gelic_descr** %44, align 8
  %45 = load %struct.gelic_descr*, %struct.gelic_descr** %11, align 8
  %46 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %45, i64 -1
  %47 = load %struct.gelic_descr*, %struct.gelic_descr** %11, align 8
  %48 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %47, i32 0, i32 3
  store %struct.gelic_descr* %46, %struct.gelic_descr** %48, align 8
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  %52 = load %struct.gelic_descr*, %struct.gelic_descr** %11, align 8
  %53 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %52, i32 1
  store %struct.gelic_descr* %53, %struct.gelic_descr** %11, align 8
  br label %19

54:                                               ; preds = %19
  %55 = load %struct.gelic_descr*, %struct.gelic_descr** %8, align 8
  %56 = load %struct.gelic_descr*, %struct.gelic_descr** %11, align 8
  %57 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %56, i64 -1
  %58 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %57, i32 0, i32 2
  store %struct.gelic_descr* %55, %struct.gelic_descr** %58, align 8
  %59 = load %struct.gelic_descr*, %struct.gelic_descr** %11, align 8
  %60 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %59, i64 -1
  %61 = load %struct.gelic_descr*, %struct.gelic_descr** %8, align 8
  %62 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %61, i32 0, i32 3
  store %struct.gelic_descr* %60, %struct.gelic_descr** %62, align 8
  %63 = load %struct.gelic_descr*, %struct.gelic_descr** %8, align 8
  store %struct.gelic_descr* %63, %struct.gelic_descr** %11, align 8
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %77, %54
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = load %struct.gelic_descr*, %struct.gelic_descr** %11, align 8
  %70 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %69, i32 0, i32 2
  %71 = load %struct.gelic_descr*, %struct.gelic_descr** %70, align 8
  %72 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @cpu_to_be32(i64 %73)
  %75 = load %struct.gelic_descr*, %struct.gelic_descr** %11, align 8
  %76 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  %80 = load %struct.gelic_descr*, %struct.gelic_descr** %11, align 8
  %81 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %80, i32 1
  store %struct.gelic_descr* %81, %struct.gelic_descr** %11, align 8
  br label %64

82:                                               ; preds = %64
  %83 = load %struct.gelic_descr*, %struct.gelic_descr** %8, align 8
  %84 = load %struct.gelic_descr_chain*, %struct.gelic_descr_chain** %7, align 8
  %85 = getelementptr inbounds %struct.gelic_descr_chain, %struct.gelic_descr_chain* %84, i32 0, i32 1
  store %struct.gelic_descr* %83, %struct.gelic_descr** %85, align 8
  %86 = load %struct.gelic_descr*, %struct.gelic_descr** %8, align 8
  %87 = load %struct.gelic_descr_chain*, %struct.gelic_descr_chain** %7, align 8
  %88 = getelementptr inbounds %struct.gelic_descr_chain, %struct.gelic_descr_chain* %87, i32 0, i32 0
  store %struct.gelic_descr* %86, %struct.gelic_descr** %88, align 8
  %89 = load %struct.gelic_descr*, %struct.gelic_descr** %11, align 8
  %90 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %89, i64 -1
  %91 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  store i32 0, i32* %5, align 4
  br label %123

92:                                               ; preds = %39
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %10, align 4
  %95 = load %struct.gelic_descr*, %struct.gelic_descr** %11, align 8
  %96 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %95, i32 -1
  store %struct.gelic_descr* %96, %struct.gelic_descr** %11, align 8
  br label %97

97:                                               ; preds = %115, %92
  %98 = load i32, i32* %10, align 4
  %99 = icmp sle i32 0, %98
  br i1 %99, label %100, label %120

100:                                              ; preds = %97
  %101 = load %struct.gelic_descr*, %struct.gelic_descr** %11, align 8
  %102 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = load %struct.gelic_card*, %struct.gelic_card** %6, align 8
  %107 = call i32 @ctodev(%struct.gelic_card* %106)
  %108 = load %struct.gelic_descr*, %struct.gelic_descr** %11, align 8
  %109 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* @GELIC_DESCR_SIZE, align 4
  %112 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %113 = call i32 @dma_unmap_single(i32 %107, i64 %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %105, %100
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %10, align 4
  %118 = load %struct.gelic_descr*, %struct.gelic_descr** %11, align 8
  %119 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %118, i32 -1
  store %struct.gelic_descr* %119, %struct.gelic_descr** %11, align 8
  br label %97

120:                                              ; preds = %97
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %120, %82
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @memset(%struct.gelic_descr*, i32, i32) #1

declare dso_local i32 @gelic_descr_set_status(%struct.gelic_descr*, i32) #1

declare dso_local i64 @dma_map_single(i32, %struct.gelic_descr*, i32, i32) #1

declare dso_local i32 @ctodev(%struct.gelic_card*) #1

declare dso_local i64 @cpu_to_be32(i64) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
