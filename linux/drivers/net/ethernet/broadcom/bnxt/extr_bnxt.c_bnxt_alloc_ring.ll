; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_alloc_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_alloc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.bnxt_ring_mem_info = type { i32, i32, i64, i64, i32, i32*, i32*, i64, i32*, i8** }

@BNXT_RMEM_VALID_PTE_FLAG = common dso_local global i32 0, align 4
@BNXT_RMEM_RING_PTE_FLAG = common dso_local global i32 0, align 4
@PTU_PTE_VALID = common dso_local global i32 0, align 4
@BNXT_RMEM_USE_FULL_PAGE_FLAG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PTU_PTE_NEXT_TO_LAST = common dso_local global i32 0, align 4
@PTU_PTE_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.bnxt_ring_mem_info*)* @bnxt_alloc_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_alloc_ring(%struct.bnxt* %0, %struct.bnxt_ring_mem_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca %struct.bnxt_ring_mem_info*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store %struct.bnxt_ring_mem_info* %1, %struct.bnxt_ring_mem_info** %5, align 8
  %11 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 0
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %15 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @BNXT_RMEM_VALID_PTE_FLAG, align 4
  %18 = load i32, i32* @BNXT_RMEM_RING_PTE_FLAG, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @PTU_PTE_VALID, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %22, %2
  %25 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %26 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %31 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %74

34:                                               ; preds = %29, %24
  %35 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %36 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %35, i32 0, i32 8
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %74, label %39

39:                                               ; preds = %34
  %40 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %41 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %42, 8
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %9, align 8
  %45 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %46 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @BNXT_RMEM_USE_FULL_PAGE_FLAG, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %39
  %52 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %53 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %9, align 8
  br label %55

55:                                               ; preds = %51, %39
  %56 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 0
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %60 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %59, i32 0, i32 4
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i8* @dma_alloc_coherent(i32* %57, i64 %58, i32* %60, i32 %61)
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %65 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %64, i32 0, i32 8
  store i32* %63, i32** %65, align 8
  %66 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %67 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %66, i32 0, i32 8
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %55
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %204

73:                                               ; preds = %55
  br label %74

74:                                               ; preds = %73, %34, %29
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %178, %74
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %78 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %181

81:                                               ; preds = %75
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %10, align 4
  %83 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %84 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %83, i32 0, i32 0
  %85 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %86 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %89 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %88, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = call i8* @dma_alloc_coherent(i32* %84, i64 %87, i32* %93, i32 %94)
  %96 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %97 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %96, i32 0, i32 9
  %98 = load i8**, i8*** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  store i8* %95, i8** %101, align 8
  %102 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %103 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %102, i32 0, i32 9
  %104 = load i8**, i8*** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %81
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %204

113:                                              ; preds = %81
  %114 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %115 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp sgt i32 %116, 1
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %120 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %177

123:                                              ; preds = %118, %113
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %126 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %127, 2
  %129 = icmp eq i32 %124, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %123
  %131 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %132 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @BNXT_RMEM_RING_PTE_FLAG, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load i32, i32* @PTU_PTE_NEXT_TO_LAST, align 4
  %139 = load i32, i32* %10, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %10, align 4
  br label %160

141:                                              ; preds = %130, %123
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %144 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %145, 1
  %147 = icmp eq i32 %142, %146
  br i1 %147, label %148, label %159

148:                                              ; preds = %141
  %149 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %150 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @BNXT_RMEM_RING_PTE_FLAG, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %148
  %156 = load i32, i32* @PTU_PTE_LAST, align 4
  %157 = load i32, i32* %10, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %10, align 4
  br label %159

159:                                              ; preds = %155, %148, %141
  br label %160

160:                                              ; preds = %159, %137
  %161 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %162 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %161, i32 0, i32 5
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %10, align 4
  %169 = or i32 %167, %168
  %170 = call i32 @cpu_to_le64(i32 %169)
  %171 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %172 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %171, i32 0, i32 8
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %170, i32* %176, align 4
  br label %177

177:                                              ; preds = %160, %118
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %8, align 4
  br label %75

181:                                              ; preds = %75
  %182 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %183 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %182, i32 0, i32 7
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %203

186:                                              ; preds = %181
  %187 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %188 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %187, i32 0, i32 7
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @vzalloc(i64 %189)
  %191 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %192 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %191, i32 0, i32 6
  %193 = load i32*, i32** %192, align 8
  store i32 %190, i32* %193, align 4
  %194 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %195 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %194, i32 0, i32 6
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %186
  %200 = load i32, i32* @ENOMEM, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %3, align 4
  br label %204

202:                                              ; preds = %186
  br label %203

203:                                              ; preds = %202, %181
  store i32 0, i32* %3, align 4
  br label %204

204:                                              ; preds = %203, %199, %110, %70
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i8* @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @vzalloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
