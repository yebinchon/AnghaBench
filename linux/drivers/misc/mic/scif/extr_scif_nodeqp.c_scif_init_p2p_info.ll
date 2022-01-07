; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nodeqp.c_scif_init_p2p_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_nodeqp.c_scif_init_p2p_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_p2p_info = type { i32*, i32*, i8**, i32, i8** }
%struct.scif_dev = type { i32, %struct.scif_hw_dev* }
%struct.scif_hw_dev = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SCIF_PPI_MMIO = common dso_local global i64 0, align 8
@SCIF_PPI_APER = common dso_local global i64 0, align 8
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scif_p2p_info* (%struct.scif_dev*, %struct.scif_dev*)* @scif_init_p2p_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scif_p2p_info* @scif_init_p2p_info(%struct.scif_dev* %0, %struct.scif_dev* %1) #0 {
  %3 = alloca %struct.scif_p2p_info*, align 8
  %4 = alloca %struct.scif_dev*, align 8
  %5 = alloca %struct.scif_dev*, align 8
  %6 = alloca %struct.scif_p2p_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.scif_hw_dev*, align 8
  %13 = alloca %struct.scif_hw_dev*, align 8
  store %struct.scif_dev* %0, %struct.scif_dev** %4, align 8
  store %struct.scif_dev* %1, %struct.scif_dev** %5, align 8
  %14 = load %struct.scif_dev*, %struct.scif_dev** %5, align 8
  %15 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %14, i32 0, i32 1
  %16 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %15, align 8
  store %struct.scif_hw_dev* %16, %struct.scif_hw_dev** %12, align 8
  %17 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %18 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %17, i32 0, i32 1
  %19 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %18, align 8
  store %struct.scif_hw_dev* %19, %struct.scif_hw_dev** %13, align 8
  %20 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %12, align 8
  %21 = getelementptr inbounds %struct.scif_hw_dev, %struct.scif_hw_dev* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PAGE_SHIFT, align 4
  %26 = ashr i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %12, align 8
  %28 = getelementptr inbounds %struct.scif_hw_dev, %struct.scif_hw_dev* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PAGE_SHIFT, align 4
  %33 = ashr i32 %31, %32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.scif_p2p_info* @kzalloc(i32 40, i32 %34)
  store %struct.scif_p2p_info* %35, %struct.scif_p2p_info** %6, align 8
  %36 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %6, align 8
  %37 = icmp ne %struct.scif_p2p_info* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %2
  store %struct.scif_p2p_info* null, %struct.scif_p2p_info** %3, align 8
  br label %209

39:                                               ; preds = %2
  %40 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %12, align 8
  %41 = getelementptr inbounds %struct.scif_hw_dev, %struct.scif_hw_dev* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i8* @scif_p2p_setsg(i32 %44, i32 %45, i32 %46)
  %48 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %6, align 8
  %49 = getelementptr inbounds %struct.scif_p2p_info, %struct.scif_p2p_info* %48, i32 0, i32 2
  %50 = load i8**, i8*** %49, align 8
  %51 = load i64, i64* @SCIF_PPI_MMIO, align 8
  %52 = getelementptr inbounds i8*, i8** %50, i64 %51
  store i8* %47, i8** %52, align 8
  %53 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %6, align 8
  %54 = getelementptr inbounds %struct.scif_p2p_info, %struct.scif_p2p_info* %53, i32 0, i32 2
  %55 = load i8**, i8*** %54, align 8
  %56 = load i64, i64* @SCIF_PPI_MMIO, align 8
  %57 = getelementptr inbounds i8*, i8** %55, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %39
  br label %206

61:                                               ; preds = %39
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %6, align 8
  %64 = getelementptr inbounds %struct.scif_p2p_info, %struct.scif_p2p_info* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @SCIF_PPI_MMIO, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32 %62, i32* %67, align 4
  %68 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %12, align 8
  %69 = getelementptr inbounds %struct.scif_hw_dev, %struct.scif_hw_dev* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @min(i32 %72, i32 1073741824)
  %74 = call i32 @get_order(i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @PAGE_SHIFT, align 4
  %78 = sub nsw i32 %76, %77
  %79 = ashr i32 %75, %78
  store i32 %79, i32* %11, align 4
  %80 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %12, align 8
  %81 = getelementptr inbounds %struct.scif_hw_dev, %struct.scif_hw_dev* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %9, align 4
  %86 = shl i32 1, %85
  %87 = load i32, i32* %11, align 4
  %88 = call i8* @scif_p2p_setsg(i32 %84, i32 %86, i32 %87)
  %89 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %6, align 8
  %90 = getelementptr inbounds %struct.scif_p2p_info, %struct.scif_p2p_info* %89, i32 0, i32 2
  %91 = load i8**, i8*** %90, align 8
  %92 = load i64, i64* @SCIF_PPI_APER, align 8
  %93 = getelementptr inbounds i8*, i8** %91, i64 %92
  store i8* %88, i8** %93, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %6, align 8
  %96 = getelementptr inbounds %struct.scif_p2p_info, %struct.scif_p2p_info* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @SCIF_PPI_APER, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32 %94, i32* %99, align 4
  %100 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %13, align 8
  %101 = getelementptr inbounds %struct.scif_hw_dev, %struct.scif_hw_dev* %100, i32 0, i32 0
  %102 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %6, align 8
  %103 = getelementptr inbounds %struct.scif_p2p_info, %struct.scif_p2p_info* %102, i32 0, i32 2
  %104 = load i8**, i8*** %103, align 8
  %105 = load i64, i64* @SCIF_PPI_MMIO, align 8
  %106 = getelementptr inbounds i8*, i8** %104, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %110 = call i32 @dma_map_sg(i32* %101, i8* %107, i32 %108, i32 %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %61
  br label %191

115:                                              ; preds = %61
  %116 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %13, align 8
  %117 = getelementptr inbounds %struct.scif_hw_dev, %struct.scif_hw_dev* %116, i32 0, i32 0
  %118 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %6, align 8
  %119 = getelementptr inbounds %struct.scif_p2p_info, %struct.scif_p2p_info* %118, i32 0, i32 2
  %120 = load i8**, i8*** %119, align 8
  %121 = load i64, i64* @SCIF_PPI_APER, align 8
  %122 = getelementptr inbounds i8*, i8** %120, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %126 = call i32 @dma_map_sg(i32* %117, i8* %123, i32 %124, i32 %125)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %115
  br label %174

131:                                              ; preds = %115
  %132 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %6, align 8
  %133 = getelementptr inbounds %struct.scif_p2p_info, %struct.scif_p2p_info* %132, i32 0, i32 2
  %134 = load i8**, i8*** %133, align 8
  %135 = load i64, i64* @SCIF_PPI_MMIO, align 8
  %136 = getelementptr inbounds i8*, i8** %134, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = call i8* @sg_dma_address(i8* %137)
  %139 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %6, align 8
  %140 = getelementptr inbounds %struct.scif_p2p_info, %struct.scif_p2p_info* %139, i32 0, i32 4
  %141 = load i8**, i8*** %140, align 8
  %142 = load i64, i64* @SCIF_PPI_MMIO, align 8
  %143 = getelementptr inbounds i8*, i8** %141, i64 %142
  store i8* %138, i8** %143, align 8
  %144 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %6, align 8
  %145 = getelementptr inbounds %struct.scif_p2p_info, %struct.scif_p2p_info* %144, i32 0, i32 2
  %146 = load i8**, i8*** %145, align 8
  %147 = load i64, i64* @SCIF_PPI_APER, align 8
  %148 = getelementptr inbounds i8*, i8** %146, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = call i8* @sg_dma_address(i8* %149)
  %151 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %6, align 8
  %152 = getelementptr inbounds %struct.scif_p2p_info, %struct.scif_p2p_info* %151, i32 0, i32 4
  %153 = load i8**, i8*** %152, align 8
  %154 = load i64, i64* @SCIF_PPI_APER, align 8
  %155 = getelementptr inbounds i8*, i8** %153, i64 %154
  store i8* %150, i8** %155, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %6, align 8
  %158 = getelementptr inbounds %struct.scif_p2p_info, %struct.scif_p2p_info* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i64, i64* @SCIF_PPI_MMIO, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  store i32 %156, i32* %161, align 4
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %6, align 8
  %164 = getelementptr inbounds %struct.scif_p2p_info, %struct.scif_p2p_info* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* @SCIF_PPI_APER, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  store i32 %162, i32* %167, align 4
  %168 = load %struct.scif_dev*, %struct.scif_dev** %5, align 8
  %169 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %6, align 8
  %172 = getelementptr inbounds %struct.scif_p2p_info, %struct.scif_p2p_info* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 8
  %173 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %6, align 8
  store %struct.scif_p2p_info* %173, %struct.scif_p2p_info** %3, align 8
  br label %209

174:                                              ; preds = %130
  %175 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %13, align 8
  %176 = getelementptr inbounds %struct.scif_hw_dev, %struct.scif_hw_dev* %175, i32 0, i32 0
  %177 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %6, align 8
  %178 = getelementptr inbounds %struct.scif_p2p_info, %struct.scif_p2p_info* %177, i32 0, i32 2
  %179 = load i8**, i8*** %178, align 8
  %180 = load i64, i64* @SCIF_PPI_MMIO, align 8
  %181 = getelementptr inbounds i8*, i8** %179, i64 %180
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %6, align 8
  %184 = getelementptr inbounds %struct.scif_p2p_info, %struct.scif_p2p_info* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i64, i64* @SCIF_PPI_MMIO, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %190 = call i32 @dma_unmap_sg(i32* %176, i8* %182, i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %174, %114
  %192 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %6, align 8
  %193 = getelementptr inbounds %struct.scif_p2p_info, %struct.scif_p2p_info* %192, i32 0, i32 2
  %194 = load i8**, i8*** %193, align 8
  %195 = load i64, i64* @SCIF_PPI_MMIO, align 8
  %196 = getelementptr inbounds i8*, i8** %194, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @scif_p2p_freesg(i8* %197)
  %199 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %6, align 8
  %200 = getelementptr inbounds %struct.scif_p2p_info, %struct.scif_p2p_info* %199, i32 0, i32 2
  %201 = load i8**, i8*** %200, align 8
  %202 = load i64, i64* @SCIF_PPI_APER, align 8
  %203 = getelementptr inbounds i8*, i8** %201, i64 %202
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @scif_p2p_freesg(i8* %204)
  br label %206

206:                                              ; preds = %191, %60
  %207 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %6, align 8
  %208 = call i32 @kfree(%struct.scif_p2p_info* %207)
  store %struct.scif_p2p_info* null, %struct.scif_p2p_info** %3, align 8
  br label %209

209:                                              ; preds = %206, %131, %38
  %210 = load %struct.scif_p2p_info*, %struct.scif_p2p_info** %3, align 8
  ret %struct.scif_p2p_info* %210
}

declare dso_local %struct.scif_p2p_info* @kzalloc(i32, i32) #1

declare dso_local i8* @scif_p2p_setsg(i32, i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dma_map_sg(i32*, i8*, i32, i32) #1

declare dso_local i8* @sg_dma_address(i8*) #1

declare dso_local i32 @dma_unmap_sg(i32*, i8*, i32, i32) #1

declare dso_local i32 @scif_p2p_freesg(i8*) #1

declare dso_local i32 @kfree(%struct.scif_p2p_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
