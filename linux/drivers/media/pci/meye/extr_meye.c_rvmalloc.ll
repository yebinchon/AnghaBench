; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/meye/extr_meye.c_rvmalloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/meye/extr_meye.c_rvmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @rvmalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rvmalloc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @PAGE_ALIGN(i64 %5)
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i8* @vmalloc_32(i64 %7)
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = load i64, i64* %2, align 8
  %14 = call i32 @memset(i8* %12, i32 0, i64 %13)
  %15 = load i8*, i8** %3, align 8
  %16 = ptrtoint i8* %15 to i64
  store i64 %16, i64* %4, align 8
  br label %17

17:                                               ; preds = %20, %11
  %18 = load i64, i64* %2, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load i64, i64* %4, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @vmalloc_to_page(i8* %22)
  %24 = call i32 @SetPageReserved(i32 %23)
  %25 = load i64, i64* @PAGE_SIZE, align 8
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* @PAGE_SIZE, align 8
  %29 = load i64, i64* %2, align 8
  %30 = sub i64 %29, %28
  store i64 %30, i64* %2, align 8
  br label %17

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31, %1
  %33 = load i8*, i8** %3, align 8
  ret i8* %33
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i8* @vmalloc_32(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @SetPageReserved(i32) #1

declare dso_local i32 @vmalloc_to_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
