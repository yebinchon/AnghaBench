; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_hynix.c_hynix_mlc_1xnm_rr_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_hynix.c_hynix_mlc_1xnm_rr_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAND_HYNIX_1XNM_RR_REPEAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32, i32, i32*)* @hynix_mlc_1xnm_rr_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hynix_mlc_1xnm_rr_value(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %24 = load i32, i32* @NAND_HYNIX_1XNM_RR_REPEAT, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %16, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %17, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %11, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %36

36:                                               ; preds = %55, %7
  %37 = load i32, i32* %20, align 4
  %38 = load i32, i32* @NAND_HYNIX_1XNM_RR_REPEAT, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = load i32, i32* %20, align 4
  %42 = load i32, i32* %19, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @NAND_HYNIX_1XNM_RR_SET_OFFS(i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %22, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* %22, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %20, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %27, i64 %53
  store i32 %51, i32* %54, align 4
  br label %55

55:                                               ; preds = %40
  %56 = load i32, i32* %20, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %20, align 4
  br label %36

58:                                               ; preds = %36
  %59 = load i32, i32* @NAND_HYNIX_1XNM_RR_REPEAT, align 4
  %60 = load i32*, i32** %15, align 8
  %61 = call i32 @hynix_get_majority(i32* %27, i32 %59, i32* %60)
  store i32 %61, i32* %21, align 4
  %62 = load i32, i32* %21, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %21, align 4
  store i32 %65, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %75

66:                                               ; preds = %58
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32*, i32** %15, align 8
  %71 = load i32, i32* %70, align 4
  %72 = xor i32 %71, -1
  %73 = load i32*, i32** %15, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %69, %66
  store i32 0, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %75

75:                                               ; preds = %74, %64
  %76 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %8, align 4
  ret i32 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @NAND_HYNIX_1XNM_RR_SET_OFFS(i32, i32, i32) #2

declare dso_local i32 @hynix_get_majority(i32*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
