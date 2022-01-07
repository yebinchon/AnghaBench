; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_target.c_nfp_decode_basic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_target.c_nfp_decode_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NFP_CPP_TARGET_MU = common dso_local global i32 0, align 4
@NFP_CPP_TARGET_CT_XPB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32, i32, i32, i32)* @nfp_decode_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_decode_basic(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @NFP_CPP_TARGET_MU, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %7
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @NFP_CPP_TARGET_CT_XPB, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %7
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %126

28:                                               ; preds = %21
  %29 = load i32, i32* %12, align 4
  switch i32 %29, label %123 [
    i32 0, label %30
    i32 1, label %40
    i32 2, label %57
    i32 3, label %90
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 34, i32 26
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %16, align 4
  %37 = ashr i32 %35, %36
  %38 = and i32 %37, 63
  %39 = load i32*, i32** %10, align 8
  store i32 %38, i32* %39, align 4
  store i32 0, i32* %8, align 4
  br label %126

40:                                               ; preds = %28
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 39, i32 31
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %17, align 4
  %47 = call i32 @BIT_ULL(i32 %46)
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load i32, i32* %14, align 4
  %52 = load i32*, i32** %10, align 8
  store i32 %51, i32* %52, align 4
  br label %56

53:                                               ; preds = %40
  %54 = load i32, i32* %15, align 4
  %55 = load i32*, i32** %10, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %50
  store i32 0, i32* %8, align 4
  br label %126

57:                                               ; preds = %28
  %58 = load i32, i32* %15, align 4
  %59 = and i32 %58, -2
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %14, align 4
  %61 = and i32 %60, -2
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 39, i32 31
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %17, align 4
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %17, align 4
  %70 = call i32 @BIT_ULL(i32 %69)
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %57
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %16, align 4
  %77 = ashr i32 %75, %76
  %78 = and i32 %77, 1
  %79 = or i32 %74, %78
  %80 = load i32*, i32** %10, align 8
  store i32 %79, i32* %80, align 4
  br label %89

81:                                               ; preds = %57
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %16, align 4
  %85 = ashr i32 %83, %84
  %86 = and i32 %85, 1
  %87 = or i32 %82, %86
  %88 = load i32*, i32** %10, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %81, %73
  store i32 0, i32* %8, align 4
  br label %126

90:                                               ; preds = %28
  %91 = load i32, i32* %15, align 4
  %92 = and i32 %91, -4
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %14, align 4
  %94 = and i32 %93, -4
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 39, i32 31
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %17, align 4
  %100 = sub nsw i32 %99, 2
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @BIT_ULL(i32 %102)
  %104 = and i32 %101, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %90
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %16, align 4
  %110 = ashr i32 %108, %109
  %111 = and i32 %110, 3
  %112 = or i32 %107, %111
  %113 = load i32*, i32** %10, align 8
  store i32 %112, i32* %113, align 4
  br label %122

114:                                              ; preds = %90
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %16, align 4
  %118 = ashr i32 %116, %117
  %119 = and i32 %118, 3
  %120 = or i32 %115, %119
  %121 = load i32*, i32** %10, align 8
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %114, %106
  store i32 0, i32* %8, align 4
  br label %126

123:                                              ; preds = %28
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %123, %122, %89, %56, %30, %25
  %127 = load i32, i32* %8, align 4
  ret i32 %127
}

declare dso_local i32 @BIT_ULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
