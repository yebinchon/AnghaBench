; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_reload_bbt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_docg3.c_doc_reload_bbt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.docg3 = type { i64, i32* }

@DOC_LAYOUT_BLOCK_BBT = common dso_local global i32 0, align 4
@DOC_LAYOUT_PAGE_SIZE = common dso_local global i32 0, align 4
@DOC_LAYOUT_PAGE_BBT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.docg3*)* @doc_reload_bbt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doc_reload_bbt(%struct.docg3* %0) #0 {
  %2 = alloca %struct.docg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.docg3* %0, %struct.docg3** %2, align 8
  %8 = load i32, i32* @DOC_LAYOUT_BLOCK_BBT, align 4
  store i32 %8, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %9 = load %struct.docg3*, %struct.docg3** %2, align 8
  %10 = getelementptr inbounds %struct.docg3, %struct.docg3* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %7, align 8
  %12 = load %struct.docg3*, %struct.docg3** %2, align 8
  %13 = getelementptr inbounds %struct.docg3, %struct.docg3* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  %16 = load i32, i32* @DOC_LAYOUT_PAGE_SIZE, align 4
  %17 = mul nsw i32 8, %16
  %18 = call i32 @DIV_ROUND_UP(i64 %15, i32 %17)
  store i32 %18, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %57, %1
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i1 [ false, %19 ], [ %25, %22 ]
  br i1 %27, label %28, label %60

28:                                               ; preds = %26
  %29 = load %struct.docg3*, %struct.docg3** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @DOC_LAYOUT_PAGE_BBT, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @doc_read_page_prepare(%struct.docg3* %29, i32 %30, i32 %32, i64 %36, i32 0)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %28
  %41 = load %struct.docg3*, %struct.docg3** %2, align 8
  %42 = load i32, i32* @DOC_LAYOUT_PAGE_SIZE, align 4
  %43 = call i32 @doc_read_page_ecc_init(%struct.docg3* %41, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %28
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load %struct.docg3*, %struct.docg3** %2, align 8
  %49 = load i32, i32* @DOC_LAYOUT_PAGE_SIZE, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @doc_read_page_getbytes(%struct.docg3* %48, i32 %49, i32* %50, i32 1, i32 0)
  br label %52

52:                                               ; preds = %47, %44
  %53 = load i32, i32* @DOC_LAYOUT_PAGE_SIZE, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %7, align 8
  br label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %19

60:                                               ; preds = %26
  %61 = load %struct.docg3*, %struct.docg3** %2, align 8
  %62 = call i32 @doc_read_page_finish(%struct.docg3* %61)
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @doc_read_page_prepare(%struct.docg3*, i32, i32, i64, i32) #1

declare dso_local i32 @doc_read_page_ecc_init(%struct.docg3*, i32) #1

declare dso_local i32 @doc_read_page_getbytes(%struct.docg3*, i32, i32*, i32, i32) #1

declare dso_local i32 @doc_read_page_finish(%struct.docg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
