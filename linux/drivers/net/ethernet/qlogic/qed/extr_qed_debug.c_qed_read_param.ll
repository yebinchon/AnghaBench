; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_read_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_read_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i8**, i32*)* @qed_read_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_read_param(i32* %0, i8** %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to i8*
  store i8* %12, i8** %9, align 8
  store i64 0, i64* %10, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = load i8**, i8*** %6, align 8
  store i8* %13, i8** %14, align 8
  %15 = load i8**, i8*** %6, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = add nsw i64 %17, 1
  %19 = load i64, i64* %10, align 8
  %20 = add i64 %19, %18
  store i64 %20, i64* %10, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %10, align 8
  %24 = getelementptr inbounds i8, i8* %21, i64 %22
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %4
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8**, i8*** %7, align 8
  store i8* %30, i8** %31, align 8
  %32 = load i32*, i32** %8, align 8
  store i32 0, i32* %32, align 4
  %33 = load i8**, i8*** %7, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = add nsw i64 %35, 1
  %37 = load i64, i64* %10, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = and i64 %39, 3
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %27
  %43 = load i64, i64* %10, align 8
  %44 = and i64 %43, 3
  %45 = sub i64 4, %44
  %46 = load i64, i64* %10, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %10, align 8
  br label %48

48:                                               ; preds = %42, %27
  br label %69

49:                                               ; preds = %4
  %50 = load i8**, i8*** %7, align 8
  store i8* null, i8** %50, align 8
  %51 = load i64, i64* %10, align 8
  %52 = and i64 %51, 3
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i64, i64* %10, align 8
  %56 = and i64 %55, 3
  %57 = sub i64 4, %56
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %10, align 8
  br label %60

60:                                               ; preds = %54, %49
  %61 = load i8*, i8** %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = bitcast i8* %63 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i64, i64* %10, align 8
  %68 = add i64 %67, 4
  store i64 %68, i64* %10, align 8
  br label %69

69:                                               ; preds = %60, %48
  %70 = load i64, i64* %10, align 8
  %71 = trunc i64 %70 to i32
  %72 = sdiv i32 %71, 4
  ret i32 %72
}

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
