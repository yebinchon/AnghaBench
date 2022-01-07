; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_target.c_nfp_target_cpp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_target.c_nfp_target_cpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Invalid CPP target: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Can't encode CPP address: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_target_cpp(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @NFP_CPP_ID_ISLAND_of(i32 %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @NFP_CPP_ID_TARGET_of(i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %13, align 4
  %24 = icmp sge i32 %23, 16
  br i1 %24, label %25, label %30

25:                                               ; preds = %22, %5
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %82

30:                                               ; preds = %22
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** %10, align 8
  store i32 %36, i32* %37, align 4
  store i32 0, i32* %6, align 4
  br label %82

38:                                               ; preds = %30
  %39 = load i32*, i32** %11, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %82

44:                                               ; preds = %38
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32*, i32** %10, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %14, align 4
  %56 = ashr i32 %55, 13
  %57 = and i32 %56, 7
  %58 = load i32, i32* %14, align 4
  %59 = ashr i32 %58, 12
  %60 = and i32 %59, 1
  %61 = load i32, i32* %14, align 4
  %62 = ashr i32 %61, 6
  %63 = and i32 %62, 63
  %64 = load i32, i32* %14, align 4
  %65 = ashr i32 %64, 0
  %66 = and i32 %65, 63
  %67 = call i32 @nfp_cppat_addr_encode(i32* %52, i32 %53, i32 %54, i32 %57, i32 %60, i32 %63, i32 %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %44
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %6, align 4
  br label %82

74:                                               ; preds = %44
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @NFP_CPP_ID_ACTION_of(i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @NFP_CPP_ID_TOKEN_of(i32 %78)
  %80 = call i32 @NFP_CPP_ID(i32 %75, i32 %77, i32 %79)
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %74, %70, %41, %33, %25
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @NFP_CPP_ID_ISLAND_of(i32) #1

declare dso_local i32 @NFP_CPP_ID_TARGET_of(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @nfp_cppat_addr_encode(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NFP_CPP_ID(i32, i32, i32) #1

declare dso_local i32 @NFP_CPP_ID_ACTION_of(i32) #1

declare dso_local i32 @NFP_CPP_ID_TOKEN_of(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
