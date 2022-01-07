; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_op64_fill_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_op64_fill_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_dmaring = type { i32, %struct.TYPE_2__*, %struct.b43_dmadesc64* }
%struct.TYPE_2__ = type { i32 }
%struct.b43_dmadesc64 = type { i8*, i8*, i8*, i8* }
%struct.b43_dmadesc_generic = type { %struct.b43_dmadesc64 }

@B43_DMA_ADDR_LOW = common dso_local global i32 0, align 4
@B43_DMA_ADDR_HIGH = common dso_local global i32 0, align 4
@B43_DMA_ADDR_EXT = common dso_local global i32 0, align 4
@B43_DMA64_DCTL0_DTABLEEND = common dso_local global i32 0, align 4
@B43_DMA64_DCTL0_FRAMESTART = common dso_local global i32 0, align 4
@B43_DMA64_DCTL0_FRAMEEND = common dso_local global i32 0, align 4
@B43_DMA64_DCTL0_IRQ = common dso_local global i32 0, align 4
@B43_DMA64_DCTL1_BYTECNT = common dso_local global i32 0, align 4
@B43_DMA64_DCTL1_ADDREXT_SHIFT = common dso_local global i32 0, align 4
@B43_DMA64_DCTL1_ADDREXT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_dmaring*, %struct.b43_dmadesc_generic*, i32, i32, i32, i32, i32)* @op64_fill_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @op64_fill_descriptor(%struct.b43_dmaring* %0, %struct.b43_dmadesc_generic* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.b43_dmaring*, align 8
  %9 = alloca %struct.b43_dmadesc_generic*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.b43_dmadesc64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.b43_dmaring* %0, %struct.b43_dmaring** %8, align 8
  store %struct.b43_dmadesc_generic* %1, %struct.b43_dmadesc_generic** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %22 = load %struct.b43_dmaring*, %struct.b43_dmaring** %8, align 8
  %23 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %22, i32 0, i32 2
  %24 = load %struct.b43_dmadesc64*, %struct.b43_dmadesc64** %23, align 8
  store %struct.b43_dmadesc64* %24, %struct.b43_dmadesc64** %15, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %25 = load %struct.b43_dmadesc_generic*, %struct.b43_dmadesc_generic** %9, align 8
  %26 = getelementptr inbounds %struct.b43_dmadesc_generic, %struct.b43_dmadesc_generic* %25, i32 0, i32 0
  %27 = load %struct.b43_dmadesc64*, %struct.b43_dmadesc64** %15, align 8
  %28 = ptrtoint %struct.b43_dmadesc64* %26 to i64
  %29 = ptrtoint %struct.b43_dmadesc64* %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 32
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %7
  %36 = load i32, i32* %16, align 4
  %37 = load %struct.b43_dmaring*, %struct.b43_dmaring** %8, align 8
  %38 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br label %41

41:                                               ; preds = %35, %7
  %42 = phi i1 [ false, %7 ], [ %40, %35 ]
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @B43_WARN_ON(i32 %44)
  %46 = load %struct.b43_dmaring*, %struct.b43_dmaring** %8, align 8
  %47 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @B43_DMA_ADDR_LOW, align 4
  %52 = call i32 @b43_dma_address(i32* %49, i32 %50, i32 %51)
  store i32 %52, i32* %19, align 4
  %53 = load %struct.b43_dmaring*, %struct.b43_dmaring** %8, align 8
  %54 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @B43_DMA_ADDR_HIGH, align 4
  %59 = call i32 @b43_dma_address(i32* %56, i32 %57, i32 %58)
  store i32 %59, i32* %20, align 4
  %60 = load %struct.b43_dmaring*, %struct.b43_dmaring** %8, align 8
  %61 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @B43_DMA_ADDR_EXT, align 4
  %66 = call i32 @b43_dma_address(i32* %63, i32 %64, i32 %65)
  store i32 %66, i32* %21, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load %struct.b43_dmaring*, %struct.b43_dmaring** %8, align 8
  %69 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  %72 = icmp eq i32 %67, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %41
  %74 = load i32, i32* @B43_DMA64_DCTL0_DTABLEEND, align 4
  %75 = load i32, i32* %17, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %17, align 4
  br label %77

77:                                               ; preds = %73, %41
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* @B43_DMA64_DCTL0_FRAMESTART, align 4
  %82 = load i32, i32* %17, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %17, align 4
  br label %84

84:                                               ; preds = %80, %77
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* @B43_DMA64_DCTL0_FRAMEEND, align 4
  %89 = load i32, i32* %17, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %17, align 4
  br label %91

91:                                               ; preds = %87, %84
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32, i32* @B43_DMA64_DCTL0_IRQ, align 4
  %96 = load i32, i32* %17, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %17, align 4
  br label %98

98:                                               ; preds = %94, %91
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @B43_DMA64_DCTL1_BYTECNT, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* %18, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %21, align 4
  %105 = load i32, i32* @B43_DMA64_DCTL1_ADDREXT_SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = load i32, i32* @B43_DMA64_DCTL1_ADDREXT_MASK, align 4
  %108 = and i32 %106, %107
  %109 = load i32, i32* %18, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %17, align 4
  %112 = call i8* @cpu_to_le32(i32 %111)
  %113 = load %struct.b43_dmadesc_generic*, %struct.b43_dmadesc_generic** %9, align 8
  %114 = getelementptr inbounds %struct.b43_dmadesc_generic, %struct.b43_dmadesc_generic* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.b43_dmadesc64, %struct.b43_dmadesc64* %114, i32 0, i32 3
  store i8* %112, i8** %115, align 8
  %116 = load i32, i32* %18, align 4
  %117 = call i8* @cpu_to_le32(i32 %116)
  %118 = load %struct.b43_dmadesc_generic*, %struct.b43_dmadesc_generic** %9, align 8
  %119 = getelementptr inbounds %struct.b43_dmadesc_generic, %struct.b43_dmadesc_generic* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.b43_dmadesc64, %struct.b43_dmadesc64* %119, i32 0, i32 2
  store i8* %117, i8** %120, align 8
  %121 = load i32, i32* %19, align 4
  %122 = call i8* @cpu_to_le32(i32 %121)
  %123 = load %struct.b43_dmadesc_generic*, %struct.b43_dmadesc_generic** %9, align 8
  %124 = getelementptr inbounds %struct.b43_dmadesc_generic, %struct.b43_dmadesc_generic* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.b43_dmadesc64, %struct.b43_dmadesc64* %124, i32 0, i32 1
  store i8* %122, i8** %125, align 8
  %126 = load i32, i32* %20, align 4
  %127 = call i8* @cpu_to_le32(i32 %126)
  %128 = load %struct.b43_dmadesc_generic*, %struct.b43_dmadesc_generic** %9, align 8
  %129 = getelementptr inbounds %struct.b43_dmadesc_generic, %struct.b43_dmadesc_generic* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.b43_dmadesc64, %struct.b43_dmadesc64* %129, i32 0, i32 0
  store i8* %127, i8** %130, align 8
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_dma_address(i32*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
