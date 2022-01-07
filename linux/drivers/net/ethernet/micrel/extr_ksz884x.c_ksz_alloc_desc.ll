; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_ksz_alloc_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_ksz_alloc_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_info = type { %struct.TYPE_3__, i32, %struct.ksz_hw }
%struct.TYPE_3__ = type { i32, i64, i32*, i64, i32* }
%struct.ksz_hw = type { %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, %struct.ksz_hw_desc* }
%struct.ksz_hw_desc = type { i32 }

@DESC_ALIGNMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dev_info*)* @ksz_alloc_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz_alloc_desc(%struct.dev_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dev_info*, align 8
  %4 = alloca %struct.ksz_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.dev_info* %0, %struct.dev_info** %3, align 8
  %6 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %7 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %6, i32 0, i32 2
  store %struct.ksz_hw* %7, %struct.ksz_hw** %4, align 8
  %8 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %11, %15
  %17 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %18 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %22 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %20, %24
  %26 = add nsw i32 %16, %25
  %27 = load i32, i32* @DESC_ALIGNMENT, align 4
  %28 = add nsw i32 %26, %27
  %29 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %30 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %33 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %36 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %40 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = call i32* @pci_zalloc_consistent(i32 %34, i32 %38, i64* %41)
  %43 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %44 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  store i32* %42, i32** %45, align 8
  %46 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %47 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %1
  %52 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %53 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  store i32 1, i32* %2, align 4
  br label %154

55:                                               ; preds = %1
  %56 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %57 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = ptrtoint i32* %59 to i32
  %61 = load i32, i32* @DESC_ALIGNMENT, align 4
  %62 = srem i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %55
  %65 = load i32, i32* @DESC_ALIGNMENT, align 4
  %66 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %67 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = ptrtoint i32* %69 to i32
  %71 = load i32, i32* @DESC_ALIGNMENT, align 4
  %72 = srem i32 %70, %71
  %73 = sub nsw i32 %65, %72
  br label %75

74:                                               ; preds = %55
  br label %75

75:                                               ; preds = %74, %64
  %76 = phi i32 [ %73, %64 ], [ 0, %74 ]
  store i32 %76, i32* %5, align 4
  %77 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %78 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %85 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  store i32* %83, i32** %86, align 8
  %87 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %88 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %95 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  store i64 %93, i64* %96, align 8
  %97 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %98 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = bitcast i32* %100 to %struct.ksz_hw_desc*
  %102 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %103 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  store %struct.ksz_hw_desc* %101, %struct.ksz_hw_desc** %104, align 8
  %105 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %106 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %110 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  store i64 %108, i64* %111, align 8
  %112 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %113 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %117 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = mul nsw i32 %115, %119
  store i32 %120, i32* %5, align 4
  %121 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %122 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = bitcast i32* %127 to %struct.ksz_hw_desc*
  %129 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %130 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 3
  store %struct.ksz_hw_desc* %128, %struct.ksz_hw_desc** %131, align 8
  %132 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %133 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %135, %137
  %139 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %140 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  store i64 %138, i64* %141, align 8
  %142 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %143 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %142, i32 0, i32 1
  %144 = call i64 @ksz_alloc_soft_desc(%struct.TYPE_4__* %143, i32 0)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %75
  store i32 1, i32* %2, align 4
  br label %154

147:                                              ; preds = %75
  %148 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %149 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %148, i32 0, i32 0
  %150 = call i64 @ksz_alloc_soft_desc(%struct.TYPE_4__* %149, i32 1)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  store i32 1, i32* %2, align 4
  br label %154

153:                                              ; preds = %147
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %153, %152, %146, %51
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32* @pci_zalloc_consistent(i32, i32, i64*) #1

declare dso_local i64 @ksz_alloc_soft_desc(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
