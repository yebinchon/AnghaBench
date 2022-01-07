; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_utils.c_genwqe_user_vmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_utils.c_genwqe_user_vmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.dma_mapping = type { i64, i32, i32*, i32*, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"err: alloc page_list failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@FOLL_WRITE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genwqe_user_vmap(%struct.genwqe_dev* %0, %struct.dma_mapping* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.genwqe_dev*, align 8
  %7 = alloca %struct.dma_mapping*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.pci_dev*, align 8
  store %struct.genwqe_dev* %0, %struct.genwqe_dev** %6, align 8
  store %struct.dma_mapping* %1, %struct.dma_mapping** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  %16 = load %struct.genwqe_dev*, %struct.genwqe_dev** %6, align 8
  %17 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %16, i32 0, i32 0
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %13, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* %9, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21, %4
  %25 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %26 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %177

29:                                               ; preds = %21
  %30 = load i8*, i8** %8, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %33 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %36 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = ptrtoint i8* %37 to i64
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call i64 @offset_in_page(i64 %39)
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @ULONG_MAX, align 8
  %43 = load i64, i64* @PAGE_SIZE, align 8
  %44 = sub i64 %42, %43
  %45 = load i64, i64* %12, align 8
  %46 = sub i64 %44, %45
  %47 = icmp ugt i64 %41, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %29
  %49 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %50 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %177

53:                                               ; preds = %29
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %54, %55
  %57 = load i64, i64* @PAGE_SIZE, align 8
  %58 = call i32 @DIV_ROUND_UP(i64 %56, i64 %57)
  %59 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %60 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %62 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i32* @kcalloc(i32 %63, i32 12, i32 %64)
  %66 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %67 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %66, i32 0, i32 4
  store i32* %65, i32** %67, align 8
  %68 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %69 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %84, label %72

72:                                               ; preds = %53
  %73 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %74 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %73, i32 0, i32 0
  %75 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %76 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %77 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %76, i32 0, i32 1
  store i32 0, i32* %77, align 8
  %78 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %79 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %78, i32 0, i32 2
  store i32* null, i32** %79, align 8
  %80 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %81 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %177

84:                                               ; preds = %53
  %85 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %86 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %89 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  %93 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %94 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %93, i32 0, i32 3
  store i32* %92, i32** %94, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* @PAGE_MASK, align 8
  %97 = and i64 %95, %96
  %98 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %99 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %102 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %84
  %106 = load i32, i32* @FOLL_WRITE, align 4
  br label %108

107:                                              ; preds = %84
  br label %108

108:                                              ; preds = %107, %105
  %109 = phi i32 [ %106, %105 ], [ 0, %107 ]
  %110 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %111 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @get_user_pages_fast(i64 %97, i32 %100, i32 %109, i32* %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  br label %161

117:                                              ; preds = %108
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %120 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %117
  %124 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %125 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %124, i32 0, i32 4
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %129 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @genwqe_free_user_pages(i32* %126, i32 %127, i32 %130)
  %132 = load i32, i32* @EFAULT, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %10, align 4
  br label %161

134:                                              ; preds = %117
  %135 = load %struct.genwqe_dev*, %struct.genwqe_dev** %6, align 8
  %136 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %137 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %140 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %143 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @genwqe_map_pages(%struct.genwqe_dev* %135, i32* %138, i32 %141, i32* %144)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %134
  br label %150

149:                                              ; preds = %134
  store i32 0, i32* %5, align 4
  br label %177

150:                                              ; preds = %148
  %151 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %152 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %151, i32 0, i32 4
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %155 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %158 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @genwqe_free_user_pages(i32* %153, i32 %156, i32 %159)
  br label %161

161:                                              ; preds = %150, %123, %116
  %162 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %163 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %162, i32 0, i32 4
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @kfree(i32* %164)
  %166 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %167 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %166, i32 0, i32 4
  store i32* null, i32** %167, align 8
  %168 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %169 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %168, i32 0, i32 3
  store i32* null, i32** %169, align 8
  %170 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %171 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %170, i32 0, i32 1
  store i32 0, i32* %171, align 8
  %172 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %173 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %172, i32 0, i32 2
  store i32* null, i32** %173, align 8
  %174 = load %struct.dma_mapping*, %struct.dma_mapping** %7, align 8
  %175 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %174, i32 0, i32 0
  store i64 0, i64* %175, align 8
  %176 = load i32, i32* %10, align 4
  store i32 %176, i32* %5, align 4
  br label %177

177:                                              ; preds = %161, %149, %72, %48, %24
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local i64 @offset_in_page(i64) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @get_user_pages_fast(i64, i32, i32, i32*) #1

declare dso_local i32 @genwqe_free_user_pages(i32*, i32, i32) #1

declare dso_local i32 @genwqe_map_pages(%struct.genwqe_dev*, i32*, i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
