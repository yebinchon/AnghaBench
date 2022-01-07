; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.h_scif_zalloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.h_scif_zalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i32 0, align 4
@MAX_ORDER = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @scif_zalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @scif_zalloc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i8* null, i8** %3, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i32, i32* @PAGE_SIZE, align 4
  %7 = call i64 @ALIGN(i64 %5, i32 %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @get_order(i64 %11)
  %13 = load i64, i64* @MAX_ORDER, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = load i32, i32* @__GFP_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @get_order(i64 %19)
  %21 = call i64 @__get_free_pages(i32 %18, i64 %20)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %3, align 8
  br label %23

23:                                               ; preds = %15, %10, %1
  %24 = load i8*, i8** %3, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i8*, i8** %3, align 8
  br label %31

28:                                               ; preds = %23
  %29 = load i64, i64* %4, align 8
  %30 = call i8* @vzalloc(i64 %29)
  br label %31

31:                                               ; preds = %28, %26
  %32 = phi i8* [ %27, %26 ], [ %30, %28 ]
  ret i8* %32
}

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i64 @get_order(i64) #1

declare dso_local i64 @__get_free_pages(i32, i64) #1

declare dso_local i8* @vzalloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
