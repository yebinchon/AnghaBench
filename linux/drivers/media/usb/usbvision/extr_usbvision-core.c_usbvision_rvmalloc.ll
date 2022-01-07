; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_rvmalloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_rvmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @usbvision_rvmalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @usbvision_rvmalloc(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @PAGE_ALIGN(i64 %6)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i8* @vmalloc_32(i64 %8)
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %35

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @memset(i8* %14, i32 0, i64 %15)
  %17 = load i8*, i8** %4, align 8
  %18 = ptrtoint i8* %17 to i64
  store i64 %18, i64* %5, align 8
  br label %19

19:                                               ; preds = %22, %13
  %20 = load i64, i64* %3, align 8
  %21 = icmp ugt i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i64, i64* %5, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @vmalloc_to_page(i8* %24)
  %26 = call i32 @SetPageReserved(i32 %25)
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = load i64, i64* %5, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* @PAGE_SIZE, align 8
  %31 = load i64, i64* %3, align 8
  %32 = sub i64 %31, %30
  store i64 %32, i64* %3, align 8
  br label %19

33:                                               ; preds = %19
  %34 = load i8*, i8** %4, align 8
  store i8* %34, i8** %2, align 8
  br label %35

35:                                               ; preds = %33, %12
  %36 = load i8*, i8** %2, align 8
  ret i8* %36
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
