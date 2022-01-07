; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.c_ehea_create_busmap_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.c_ehea_create_busmap_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@EHEA_HUGEPAGE_SIZE = common dso_local global i64 0, align 8
@EHEA_BUSMAP_ADD_SECT = common dso_local global i32 0, align 4
@EHEA_SECTSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i8*)* @ehea_create_busmap_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_create_busmap_callback(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @PAGE_SIZE, align 8
  %15 = mul i64 %13, %14
  %16 = load i64, i64* @EHEA_HUGEPAGE_SIZE, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* @EHEA_BUSMAP_ADD_SECT, align 4
  %22 = call i32 @ehea_update_busmap(i64 %19, i64 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %71

23:                                               ; preds = %3
  %24 = load i64, i64* %5, align 8
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %25, %26
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %10, align 8
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %62, %23
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %29
  %34 = load i64, i64* %9, align 8
  %35 = call i64 @ehea_is_hugepage(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = sub i64 %38, %39
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i32, i32* @EHEA_BUSMAP_ADD_SECT, align 4
  %44 = call i32 @ehea_update_busmap(i64 %41, i64 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %71

49:                                               ; preds = %37
  %50 = load i64, i64* @EHEA_HUGEPAGE_SIZE, align 8
  %51 = load i64, i64* @PAGE_SIZE, align 8
  %52 = udiv i64 %50, %51
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  store i64 %55, i64* %10, align 8
  br label %62

56:                                               ; preds = %33
  %57 = load i64, i64* @EHEA_SECTSIZE, align 8
  %58 = load i64, i64* @PAGE_SIZE, align 8
  %59 = udiv i64 %57, %58
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %9, align 8
  br label %62

62:                                               ; preds = %56, %49
  br label %29

63:                                               ; preds = %29
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = sub i64 %64, %65
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i32, i32* @EHEA_BUSMAP_ADD_SECT, align 4
  %70 = call i32 @ehea_update_busmap(i64 %67, i64 %68, i32 %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %63, %47, %18
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @ehea_update_busmap(i64, i64, i32) #1

declare dso_local i64 @ehea_is_hugepage(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
