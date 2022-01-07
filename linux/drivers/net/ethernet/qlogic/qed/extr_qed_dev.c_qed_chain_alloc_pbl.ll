; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_chain_alloc_pbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_chain_alloc_pbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.qed_chain = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8** }
%struct.qed_chain_ext_pbl = type { i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@QED_CHAIN_PBL_ENTRY_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@QED_CHAIN_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, %struct.qed_chain*, %struct.qed_chain_ext_pbl*)* @qed_chain_alloc_pbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_chain_alloc_pbl(%struct.qed_dev* %0, %struct.qed_chain* %1, %struct.qed_chain_ext_pbl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_dev*, align 8
  %6 = alloca %struct.qed_chain*, align 8
  %7 = alloca %struct.qed_chain_ext_pbl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %5, align 8
  store %struct.qed_chain* %1, %struct.qed_chain** %6, align 8
  store %struct.qed_chain_ext_pbl* %2, %struct.qed_chain_ext_pbl** %7, align 8
  %16 = load %struct.qed_chain*, %struct.qed_chain** %6, align 8
  %17 = getelementptr inbounds %struct.qed_chain, %struct.qed_chain* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i8** null, i8*** %13, align 8
  store i32* null, i32** %14, align 8
  store i8* null, i8** %15, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i8** @vzalloc(i32 %23)
  store i8** %24, i8*** %13, align 8
  %25 = load i8**, i8*** %13, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %112

30:                                               ; preds = %3
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @QED_CHAIN_PBL_ENTRY_SIZE, align 4
  %33 = mul nsw i32 %31, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.qed_chain_ext_pbl*, %struct.qed_chain_ext_pbl** %7, align 8
  %35 = icmp ne %struct.qed_chain_ext_pbl* %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %30
  %37 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %38 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @dma_alloc_coherent(i32* %40, i32 %41, i32* %12, i32 %42)
  %44 = bitcast i8* %43 to i32*
  store i32* %44, i32** %14, align 8
  br label %54

45:                                               ; preds = %30
  %46 = load %struct.qed_chain_ext_pbl*, %struct.qed_chain_ext_pbl** %7, align 8
  %47 = getelementptr inbounds %struct.qed_chain_ext_pbl, %struct.qed_chain_ext_pbl* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %14, align 8
  %49 = load %struct.qed_chain_ext_pbl*, %struct.qed_chain_ext_pbl** %7, align 8
  %50 = getelementptr inbounds %struct.qed_chain_ext_pbl, %struct.qed_chain_ext_pbl* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %12, align 4
  %52 = load %struct.qed_chain*, %struct.qed_chain** %6, align 8
  %53 = getelementptr inbounds %struct.qed_chain, %struct.qed_chain* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %45, %36
  %55 = load %struct.qed_chain*, %struct.qed_chain** %6, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i8**, i8*** %13, align 8
  %59 = call i32 @qed_chain_init_pbl_mem(%struct.qed_chain* %55, i32* %56, i32 %57, i8** %58)
  %60 = load i32*, i32** %14, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %112

65:                                               ; preds = %54
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %108, %65
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %111

70:                                               ; preds = %66
  %71 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %72 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* @QED_CHAIN_PAGE_SIZE, align 4
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i8* @dma_alloc_coherent(i32* %74, i32 %75, i32* %11, i32 %76)
  store i8* %77, i8** %15, align 8
  %78 = load i8*, i8** %15, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %70
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %112

83:                                               ; preds = %70
  %84 = load i32, i32* %10, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load %struct.qed_chain*, %struct.qed_chain** %6, align 8
  %88 = load i8*, i8** %15, align 8
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @qed_chain_init_mem(%struct.qed_chain* %87, i8* %88, i32 %89)
  %91 = load %struct.qed_chain*, %struct.qed_chain** %6, align 8
  %92 = call i32 @qed_chain_reset(%struct.qed_chain* %91)
  br label %93

93:                                               ; preds = %86, %83
  %94 = load i32, i32* %11, align 4
  %95 = load i32*, i32** %14, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i8*, i8** %15, align 8
  %97 = load %struct.qed_chain*, %struct.qed_chain** %6, align 8
  %98 = getelementptr inbounds %struct.qed_chain, %struct.qed_chain* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i8**, i8*** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  store i8* %96, i8** %103, align 8
  %104 = load i32, i32* @QED_CHAIN_PBL_ENTRY_SIZE, align 4
  %105 = load i32*, i32** %14, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %14, align 8
  br label %108

108:                                              ; preds = %93
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %66

111:                                              ; preds = %66
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %80, %62, %27
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i8** @vzalloc(i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @qed_chain_init_pbl_mem(%struct.qed_chain*, i32*, i32, i8**) #1

declare dso_local i32 @qed_chain_init_mem(%struct.qed_chain*, i8*, i32) #1

declare dso_local i32 @qed_chain_reset(%struct.qed_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
