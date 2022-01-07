; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_alloc_rx_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_alloc_rx_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, i32, %struct.TYPE_2__*, i64, %struct.bnx2_napi* }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2_napi = type { %struct.bnx2_rx_ring_info }
%struct.bnx2_rx_ring_info = type { i8**, i32*, i8*, i8**, i32*, i8* }

@SW_RXBD_RING_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RXBD_RING_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SW_RXPG_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_alloc_rx_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_alloc_rx_mem(%struct.bnx2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2_napi*, align 8
  %6 = alloca %struct.bnx2_rx_ring_info*, align 8
  %7 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %145, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %11 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %148

14:                                               ; preds = %8
  %15 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %16 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %15, i32 0, i32 5
  %17 = load %struct.bnx2_napi*, %struct.bnx2_napi** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %17, i64 %19
  store %struct.bnx2_napi* %20, %struct.bnx2_napi** %5, align 8
  %21 = load %struct.bnx2_napi*, %struct.bnx2_napi** %5, align 8
  %22 = getelementptr inbounds %struct.bnx2_napi, %struct.bnx2_napi* %21, i32 0, i32 0
  store %struct.bnx2_rx_ring_info* %22, %struct.bnx2_rx_ring_info** %6, align 8
  %23 = load i32, i32* @SW_RXBD_RING_SIZE, align 4
  %24 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %25 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @array_size(i32 %23, i32 %26)
  %28 = call i8* @vzalloc(i32 %27)
  %29 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %30 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %32 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %31, i32 0, i32 5
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %14
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %149

38:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %77, %38
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %42 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %80

45:                                               ; preds = %39
  %46 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %47 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* @RXBD_RING_SIZE, align 4
  %51 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %52 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i8* @dma_alloc_coherent(i32* %49, i32 %50, i32* %56, i32 %57)
  %59 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %60 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %59, i32 0, i32 3
  %61 = load i8**, i8*** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  store i8* %58, i8** %64, align 8
  %65 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %66 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %65, i32 0, i32 3
  %67 = load i8**, i8*** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %45
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %149

76:                                               ; preds = %45
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %39

80:                                               ; preds = %39
  %81 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %82 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %80
  %86 = load i32, i32* @SW_RXPG_RING_SIZE, align 4
  %87 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %88 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @array_size(i32 %86, i32 %89)
  %91 = call i8* @vzalloc(i32 %90)
  %92 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %93 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %95 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %85
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %149

101:                                              ; preds = %85
  br label %102

102:                                              ; preds = %101, %80
  store i32 0, i32* %7, align 4
  br label %103

103:                                              ; preds = %141, %102
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %106 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %144

109:                                              ; preds = %103
  %110 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %111 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %110, i32 0, i32 3
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* @RXBD_RING_SIZE, align 4
  %115 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %116 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* @GFP_KERNEL, align 4
  %122 = call i8* @dma_alloc_coherent(i32* %113, i32 %114, i32* %120, i32 %121)
  %123 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %124 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %123, i32 0, i32 0
  %125 = load i8**, i8*** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  store i8* %122, i8** %128, align 8
  %129 = load %struct.bnx2_rx_ring_info*, %struct.bnx2_rx_ring_info** %6, align 8
  %130 = getelementptr inbounds %struct.bnx2_rx_ring_info, %struct.bnx2_rx_ring_info* %129, i32 0, i32 0
  %131 = load i8**, i8*** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %109
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %2, align 4
  br label %149

140:                                              ; preds = %109
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  br label %103

144:                                              ; preds = %103
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %4, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %4, align 4
  br label %8

148:                                              ; preds = %8
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %148, %137, %98, %73, %35
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i8* @vzalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
