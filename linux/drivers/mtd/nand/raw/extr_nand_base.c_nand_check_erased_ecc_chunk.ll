; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_check_erased_ecc_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_check_erased_ecc_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nand_check_erased_ecc_chunk(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %15, align 4
  %22 = call i32 @nand_check_erased_buf(i8* %19, i32 %20, i32 %21)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i32, i32* %16, align 4
  store i32 %26, i32* %8, align 4
  br label %78

27:                                               ; preds = %7
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* %15, align 4
  %30 = sub nsw i32 %29, %28
  store i32 %30, i32* %15, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @nand_check_erased_buf(i8* %31, i32 %32, i32 %33)
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %17, align 4
  store i32 %38, i32* %8, align 4
  br label %78

39:                                               ; preds = %27
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %15, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %15, align 4
  %43 = load i8*, i8** %13, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @nand_check_erased_buf(i8* %43, i32 %44, i32 %45)
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %18, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %18, align 4
  store i32 %50, i32* %8, align 4
  br label %78

51:                                               ; preds = %39
  %52 = load i32, i32* %16, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i8*, i8** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @memset(i8* %55, i32 255, i32 %56)
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i32, i32* %17, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i8*, i8** %11, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @memset(i8* %62, i32 255, i32 %63)
  br label %65

65:                                               ; preds = %61, %58
  %66 = load i32, i32* %18, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i8*, i8** %13, align 8
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @memset(i8* %69, i32 255, i32 %70)
  br label %72

72:                                               ; preds = %68, %65
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %17, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* %18, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %72, %49, %37, %25
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local i32 @nand_check_erased_buf(i8*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
