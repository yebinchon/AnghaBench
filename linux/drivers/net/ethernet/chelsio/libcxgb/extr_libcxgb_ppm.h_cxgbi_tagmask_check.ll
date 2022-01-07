; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/libcxgb/extr_libcxgb_ppm.h_cxgbi_tagmask_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/libcxgb/extr_libcxgb_ppm.h_cxgbi_tagmask_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_tag_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@PPOD_IDX_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"ippm: tagmask 0x%x, rsvd %u=%u+%u+1, mask 0x%x,0x%x, pg %u,%u,%u,%u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.cxgbi_tag_format*)* @cxgbi_tagmask_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgbi_tagmask_check(i32 %0, %struct.cxgbi_tag_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxgbi_tag_format*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.cxgbi_tag_format* %1, %struct.cxgbi_tag_format** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @fls(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = sub i32 30, %8
  %10 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %11 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %14 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @PPOD_IDX_SHIFT, align 4
  %16 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %17 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sub i32 %18, 1
  %20 = load i32, i32* @PPOD_IDX_SHIFT, align 4
  %21 = sub i32 %19, %20
  %22 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %23 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sub i32 %24, 1
  %26 = shl i32 1, %25
  %27 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %28 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %30 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 1, %31
  %33 = sub nsw i32 %32, 1
  %34 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %35 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @PPOD_IDX_SHIFT, align 4
  %37 = shl i32 1, %36
  %38 = sub nsw i32 %37, 1
  %39 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %40 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sub i32 %41, 1
  %43 = shl i32 1, %42
  %44 = sub nsw i32 %43, 1
  %45 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %46 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %5, align 4
  %48 = shl i32 1, %47
  %49 = sub nsw i32 %48, 1
  %50 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %51 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %54 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %57 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %60 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %63 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %66 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %69 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %68, i32 0, i32 9
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %74 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %73, i32 0, i32 9
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %79 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %78, i32 0, i32 9
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %4, align 8
  %84 = getelementptr inbounds %struct.cxgbi_tag_format, %struct.cxgbi_tag_format* %83, i32 0, i32 9
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @pr_info(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55, i32 %58, i32 %61, i32 %64, i32 %67, i32 %72, i32 %77, i32 %82, i32 %87)
  ret void
}

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
