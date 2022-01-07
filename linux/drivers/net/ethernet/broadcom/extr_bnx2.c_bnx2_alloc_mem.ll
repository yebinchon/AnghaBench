; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_alloc_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_alloc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, i32, i32*, i32*, %struct.TYPE_4__*, %struct.status_block_msix*, %struct.bnx2_napi* }
%struct.TYPE_4__ = type { i32 }
%struct.status_block_msix = type { i32, i32, i32, i32 }
%struct.bnx2_napi = type { i32, i32*, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.status_block_msix*, %struct.status_block_msix* }

@BNX2_FLAG_MSIX_CAP = common dso_local global i32 0, align 4
@BNX2_SBLK_MSIX_ALIGN_SIZE = common dso_local global i32 0, align 4
@BNX2_CHIP_5709 = common dso_local global i64 0, align 8
@BNX2_PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_alloc_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_alloc_mem(%struct.bnx2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2_napi*, align 8
  %7 = alloca %struct.status_block_msix*, align 8
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  %8 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %9 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %8, i32 0, i32 7
  %10 = load %struct.bnx2_napi*, %struct.bnx2_napi** %9, align 8
  %11 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %10, i64 0
  store %struct.bnx2_napi* %11, %struct.bnx2_napi** %6, align 8
  %12 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %13 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %12, i32 0, i32 6
  %14 = load %struct.status_block_msix*, %struct.status_block_msix** %13, align 8
  %15 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %16 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store %struct.status_block_msix* %14, %struct.status_block_msix** %17, align 8
  %18 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %19 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load %struct.status_block_msix*, %struct.status_block_msix** %20, align 8
  %22 = getelementptr inbounds %struct.status_block_msix, %struct.status_block_msix* %21, i32 0, i32 3
  %23 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %24 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %26 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load %struct.status_block_msix*, %struct.status_block_msix** %27, align 8
  %29 = getelementptr inbounds %struct.status_block_msix, %struct.status_block_msix* %28, i32 0, i32 2
  %30 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %31 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %30, i32 0, i32 1
  store i32* %29, i32** %31, align 8
  %32 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %33 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @BNX2_FLAG_MSIX_CAP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %80

38:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %39

39:                                               ; preds = %76, %38
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %42 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %79

45:                                               ; preds = %39
  %46 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %47 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %46, i32 0, i32 7
  %48 = load %struct.bnx2_napi*, %struct.bnx2_napi** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %48, i64 %50
  store %struct.bnx2_napi* %51, %struct.bnx2_napi** %6, align 8
  %52 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %53 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %52, i32 0, i32 6
  %54 = load %struct.status_block_msix*, %struct.status_block_msix** %53, align 8
  %55 = load i32, i32* @BNX2_SBLK_MSIX_ALIGN_SIZE, align 4
  %56 = load i32, i32* %4, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.status_block_msix, %struct.status_block_msix* %54, i64 %58
  store %struct.status_block_msix* %59, %struct.status_block_msix** %7, align 8
  %60 = load %struct.status_block_msix*, %struct.status_block_msix** %7, align 8
  %61 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %62 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store %struct.status_block_msix* %60, %struct.status_block_msix** %63, align 8
  %64 = load %struct.status_block_msix*, %struct.status_block_msix** %7, align 8
  %65 = getelementptr inbounds %struct.status_block_msix, %struct.status_block_msix* %64, i32 0, i32 1
  %66 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %67 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %66, i32 0, i32 2
  store i32* %65, i32** %67, align 8
  %68 = load %struct.status_block_msix*, %struct.status_block_msix** %7, align 8
  %69 = getelementptr inbounds %struct.status_block_msix, %struct.status_block_msix* %68, i32 0, i32 0
  %70 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %71 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %70, i32 0, i32 1
  store i32* %69, i32** %71, align 8
  %72 = load i32, i32* %4, align 4
  %73 = shl i32 %72, 24
  %74 = load %struct.bnx2_napi*, %struct.bnx2_napi** %6, align 8
  %75 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %45
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %39

79:                                               ; preds = %39
  br label %80

80:                                               ; preds = %79, %1
  %81 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %82 = call i64 @BNX2_CHIP(%struct.bnx2* %81)
  %83 = load i64, i64* @BNX2_CHIP_5709, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %138

85:                                               ; preds = %80
  %86 = load i32, i32* @BNX2_PAGE_SIZE, align 4
  %87 = sdiv i32 8192, %86
  %88 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %89 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %91 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %96 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %95, i32 0, i32 2
  store i32 1, i32* %96, align 8
  br label %97

97:                                               ; preds = %94, %85
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %134, %97
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %101 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %137

104:                                              ; preds = %98
  %105 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %106 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %105, i32 0, i32 5
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* @BNX2_PAGE_SIZE, align 4
  %110 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %111 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call i32 @dma_alloc_coherent(i32* %108, i32 %109, i32* %115, i32 %116)
  %118 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %119 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %117, i32* %123, align 4
  %124 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %125 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %104
  br label %151

133:                                              ; preds = %104
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %4, align 4
  br label %98

137:                                              ; preds = %98
  br label %138

138:                                              ; preds = %137, %80
  %139 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %140 = call i32 @bnx2_alloc_rx_mem(%struct.bnx2* %139)
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* %5, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %151

144:                                              ; preds = %138
  %145 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %146 = call i32 @bnx2_alloc_tx_mem(%struct.bnx2* %145)
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* %5, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %151

150:                                              ; preds = %144
  store i32 0, i32* %2, align 4
  br label %156

151:                                              ; preds = %149, %143, %132
  %152 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %153 = call i32 @bnx2_free_mem(%struct.bnx2* %152)
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %151, %150
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i64 @BNX2_CHIP(%struct.bnx2*) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @bnx2_alloc_rx_mem(%struct.bnx2*) #1

declare dso_local i32 @bnx2_alloc_tx_mem(%struct.bnx2*) #1

declare dso_local i32 @bnx2_free_mem(%struct.bnx2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
