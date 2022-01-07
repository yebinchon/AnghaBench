; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_voutlib.c_omap_vout_free_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_voutlib.c_omap_vout_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_vout_free_buffer(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @PAGE_ALIGN(i64 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @get_order(i64 %11)
  store i64 %12, i64* %5, align 8
  br label %13

13:                                               ; preds = %16, %2
  %14 = load i64, i64* %6, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @virt_to_page(i64 %17)
  %19 = call i32 @ClearPageReserved(i32 %18)
  %20 = load i64, i64* @PAGE_SIZE, align 8
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* @PAGE_SIZE, align 8
  %24 = load i64, i64* %6, align 8
  %25 = sub nsw i64 %24, %23
  store i64 %25, i64* %6, align 8
  br label %13

26:                                               ; preds = %13
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @free_pages(i64 %27, i64 %28)
  ret void
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i64 @get_order(i64) #1

declare dso_local i32 @ClearPageReserved(i32) #1

declare dso_local i32 @virt_to_page(i64) #1

declare dso_local i32 @free_pages(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
