; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_alloc_rx_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_alloc_rx_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_priv = type { i32 }
%struct.myri10ge_rx_buf = type { i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32*, i32, %struct.TYPE_4__*, %struct.page* }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i32, %struct.page* }
%struct.page = type { i32 }

@MYRI10GE_ALLOC_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4
@MYRI10GE_ALLOC_ORDER = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myri10ge_priv*, %struct.myri10ge_rx_buf*, i32, i32)* @myri10ge_alloc_rx_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myri10ge_alloc_rx_pages(%struct.myri10ge_priv* %0, %struct.myri10ge_rx_buf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.myri10ge_priv*, align 8
  %6 = alloca %struct.myri10ge_rx_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.myri10ge_priv* %0, %struct.myri10ge_priv** %5, align 8
  store %struct.myri10ge_rx_buf* %1, %struct.myri10ge_rx_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %13 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i1 [ false, %4 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %217

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %216, %26
  %28 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %29 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %32 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %35 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  %38 = add nsw i32 %37, 1
  %39 = icmp ne i32 %30, %38
  br i1 %39, label %40, label %217

40:                                               ; preds = %27
  %41 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %42 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %45 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %43, %46
  store i32 %47, i32* %11, align 4
  %48 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %49 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* @MYRI10GE_ALLOC_SIZE, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %40
  %56 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %57 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %56, i32 0, i32 9
  %58 = load %struct.page*, %struct.page** %57, align 8
  %59 = call i32 @get_page(%struct.page* %58)
  br label %124

60:                                               ; preds = %40
  %61 = load i32, i32* @GFP_ATOMIC, align 4
  %62 = load i32, i32* @__GFP_COMP, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @MYRI10GE_ALLOC_ORDER, align 4
  %65 = call %struct.page* @alloc_pages(i32 %63, i32 %64)
  store %struct.page* %65, %struct.page** %9, align 8
  %66 = load %struct.page*, %struct.page** %9, align 8
  %67 = icmp eq %struct.page* %66, null
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %60
  %72 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %73 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %76 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %74, %77
  %79 = icmp slt i32 %78, 16
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %82 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  br label %83

83:                                               ; preds = %80, %71
  br label %217

84:                                               ; preds = %60
  %85 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %5, align 8
  %86 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.page*, %struct.page** %9, align 8
  %89 = load i32, i32* @MYRI10GE_ALLOC_SIZE, align 4
  %90 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %91 = call i32 @pci_map_page(i32 %87, %struct.page* %88, i32 0, i32 %89, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %5, align 8
  %93 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @pci_dma_mapping_error(i32 %94, i32 %95)
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %84
  %100 = load %struct.page*, %struct.page** %9, align 8
  %101 = load i32, i32* @MYRI10GE_ALLOC_ORDER, align 4
  %102 = call i32 @__free_pages(%struct.page* %100, i32 %101)
  %103 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %104 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %107 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %105, %108
  %110 = icmp slt i32 %109, 16
  br i1 %110, label %111, label %114

111:                                              ; preds = %99
  %112 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %113 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  br label %114

114:                                              ; preds = %111, %99
  br label %217

115:                                              ; preds = %84
  %116 = load %struct.page*, %struct.page** %9, align 8
  %117 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %118 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %117, i32 0, i32 9
  store %struct.page* %116, %struct.page** %118, align 8
  %119 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %120 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %119, i32 0, i32 4
  store i32 0, i32* %120, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %123 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %122, i32 0, i32 7
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %115, %55
  %125 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %126 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %125, i32 0, i32 9
  %127 = load %struct.page*, %struct.page** %126, align 8
  %128 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %129 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %128, i32 0, i32 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  store %struct.page* %127, %struct.page** %134, align 8
  %135 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %136 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %139 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %138, i32 0, i32 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  store i32 %137, i32* %144, align 8
  %145 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %146 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %145, i32 0, i32 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 %149
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %153 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @dma_unmap_addr_set(%struct.TYPE_4__* %150, i32 %151, i32 %154)
  %156 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %157 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %156, i32 0, i32 7
  %158 = load i32, i32* %157, align 8
  %159 = call i64 @MYRI10GE_LOWPART_TO_U32(i32 %158)
  %160 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %161 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %159, %163
  %165 = call i8* @htonl(i64 %164)
  %166 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %167 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %166, i32 0, i32 5
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 1
  store i8* %165, i8** %172, align 8
  %173 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %174 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 8
  %176 = call i64 @MYRI10GE_HIGHPART_TO_U32(i32 %175)
  %177 = call i8* @htonl(i64 %176)
  %178 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %179 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %178, i32 0, i32 5
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %179, align 8
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  store i8* %177, i8** %184, align 8
  %185 = load i32, i32* %7, align 4
  %186 = call i64 @SKB_DATA_ALIGN(i32 %185)
  %187 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %188 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %190, %186
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %188, align 8
  %193 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %194 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 4
  %197 = load i32, i32* %11, align 4
  %198 = and i32 %197, 7
  %199 = icmp eq i32 %198, 7
  br i1 %199, label %200, label %216

200:                                              ; preds = %124
  %201 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %202 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %201, i32 0, i32 6
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %11, align 4
  %205 = sub nsw i32 %204, 7
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %203, i64 %206
  %208 = load %struct.myri10ge_rx_buf*, %struct.myri10ge_rx_buf** %6, align 8
  %209 = getelementptr inbounds %struct.myri10ge_rx_buf, %struct.myri10ge_rx_buf* %208, i32 0, i32 5
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %209, align 8
  %211 = load i32, i32* %11, align 4
  %212 = sub nsw i32 %211, 7
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i64 %213
  %215 = call i32 @myri10ge_submit_8rx(i32* %207, %struct.TYPE_3__* %214)
  br label %216

216:                                              ; preds = %200, %124
  br label %27

217:                                              ; preds = %25, %83, %114, %27
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @pci_map_page(i32, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i64 @MYRI10GE_LOWPART_TO_U32(i32) #1

declare dso_local i64 @MYRI10GE_HIGHPART_TO_U32(i32) #1

declare dso_local i64 @SKB_DATA_ALIGN(i32) #1

declare dso_local i32 @myri10ge_submit_8rx(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
