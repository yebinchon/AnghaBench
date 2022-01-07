; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp.c_nfp_nsp_versions_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp.c_nfp_nsp_versions_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nfp_nsp_versions_get.id2off = internal constant [142 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 128, i32 0, i32 130, i32 0, i32 132, i32 0, i32 134, i32 0, i32 136, i32 0, i32 138, i32 0, i32 140], align 16
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nfp_nsp_versions_get(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([142 x i32], [142 x i32]* @nfp_nsp_versions_get.id2off, i64 0, i64 0))
  %15 = icmp uge i32 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [142 x i32], [142 x i32]* @nfp_nsp_versions_get.id2off, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16, %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i8* @ERR_PTR(i32 %24)
  store i8* %25, i8** %5, align 8
  br label %90

26:                                               ; preds = %16
  %27 = load i32, i32* %6, align 4
  %28 = mul i32 %27, 2
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %28, %29
  store i32 %30, i32* %10, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @get_unaligned_le16(i32* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ule i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  %39 = call i8* @ERR_PTR(i32 %38)
  store i8* %39, i8** %5, align 8
  br label %90

40:                                               ; preds = %26
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [142 x i32], [142 x i32]* @nfp_nsp_versions_get.id2off, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %41, i64 %46
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = call i32 @get_unaligned_le16(i32* %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %40
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  %58 = call i8* @ERR_PTR(i32 %57)
  store i8* %58, i8** %5, align 8
  br label %90

59:                                               ; preds = %40
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp uge i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  %66 = call i8* @ERR_PTR(i32 %65)
  store i8* %66, i8** %5, align 8
  br label %90

67:                                               ; preds = %59
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %12, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %12, align 4
  %74 = sub i32 %72, %73
  %75 = call i32 @strnlen(i32* %71, i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %12, align 4
  %78 = sub i32 %76, %77
  %79 = icmp eq i32 %75, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %67
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  %83 = call i8* @ERR_PTR(i32 %82)
  store i8* %83, i8** %5, align 8
  br label %90

84:                                               ; preds = %67
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* %12, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = bitcast i32* %88 to i8*
  store i8* %89, i8** %5, align 8
  br label %90

90:                                               ; preds = %84, %80, %63, %55, %36, %22
  %91 = load i8*, i8** %5, align 8
  ret i8* %91
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @strnlen(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
