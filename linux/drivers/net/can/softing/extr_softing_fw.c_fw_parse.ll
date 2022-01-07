; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_fw.c_fw_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_fw.c_fw_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32*, i32*, i32**)* @fw_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_parse(i32** %0, i32* %1, i32* %2, i32* %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32** %4, i32*** %11, align 8
  %15 = load i32**, i32*** %7, align 8
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %13, align 8
  %17 = load i32*, i32** %13, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = bitcast i32* %18 to i8*
  %20 = call i32 @le16_to_cpup(i8* %19)
  %21 = load i32*, i32** %8, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %13, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = bitcast i32* %23 to i8*
  %25 = call i32 @le32_to_cpup(i8* %24)
  %26 = load i32*, i32** %9, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %13, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 6
  %29 = bitcast i32* %28 to i8*
  %30 = call i32 @le16_to_cpup(i8* %29)
  %31 = load i32*, i32** %10, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %13, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 8
  %34 = load i32**, i32*** %11, align 8
  store i32* %33, i32** %34, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 8, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  store i32* %40, i32** %14, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = bitcast i32* %41 to i8*
  %43 = call i32 @le16_to_cpup(i8* %42)
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %56, %5
  %47 = load i32*, i32** %13, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = icmp ult i32* %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50
  %57 = load i32*, i32** %13, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %13, align 8
  br label %46

59:                                               ; preds = %46
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %76

68:                                               ; preds = %59
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 10, %70
  %72 = load i32**, i32*** %7, align 8
  %73 = load i32*, i32** %72, align 8
  %74 = sext i32 %71 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %72, align 8
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %68, %65
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @le16_to_cpup(i8*) #1

declare dso_local i32 @le32_to_cpup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
