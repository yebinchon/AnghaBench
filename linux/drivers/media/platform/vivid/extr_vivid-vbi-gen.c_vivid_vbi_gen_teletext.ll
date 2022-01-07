; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-gen.c_vivid_vbi_gen_teletext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-gen.c_vivid_vbi_gen_teletext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hamming = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"Page: 100 Row: 10\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @vivid_vbi_gen_teletext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vivid_vbi_gen_teletext(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 2, i32* %7, align 4
  %9 = load i32*, i32** @hamming, align 8
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, 1
  %12 = shl i32 %11, 3
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %9, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %16, i32* %18, align 4
  %19 = load i32*, i32** @hamming, align 8
  %20 = load i32, i32* %5, align 4
  %21 = lshr i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %24, i32* %26, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = call i32 @memset(i32* %28, i32 32, i32 40)
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %79

32:                                               ; preds = %3
  %33 = load i32*, i32** @hamming, align 8
  %34 = load i32, i32* %6, align 4
  %35 = urem i32 %34, 10
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  store i32 %38, i32* %40, align 4
  %41 = load i32*, i32** @hamming, align 8
  %42 = load i32, i32* %6, align 4
  %43 = udiv i32 %42, 10
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** @hamming, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  store i32 %51, i32* %53, align 4
  %54 = load i32*, i32** @hamming, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 5
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** @hamming, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 6
  store i32 %61, i32* %63, align 4
  %64 = load i32*, i32** @hamming, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 7
  store i32 %66, i32* %68, align 4
  %69 = load i32*, i32** @hamming, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 8
  store i32 %71, i32* %73, align 4
  %74 = load i32*, i32** @hamming, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 9
  store i32 %76, i32* %78, align 4
  store i32 10, i32* %7, align 4
  br label %79

79:                                               ; preds = %32, %3
  %80 = load i32, i32* %7, align 4
  %81 = load i32*, i32** %4, align 8
  %82 = zext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %4, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @memcpy(i32* %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 17)
  %86 = load i32, i32* %6, align 4
  %87 = udiv i32 %86, 10
  %88 = add i32 48, %87
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 7
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %6, align 4
  %92 = urem i32 %91, 10
  %93 = add i32 48, %92
  %94 = load i32*, i32** %4, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 8
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %5, align 4
  %97 = udiv i32 %96, 10
  %98 = add i32 48, %97
  %99 = load i32*, i32** %4, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 15
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %5, align 4
  %102 = urem i32 %101, 10
  %103 = add i32 48, %102
  %104 = load i32*, i32** %4, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 16
  store i32 %103, i32* %105, align 4
  store i32 0, i32* %8, align 4
  br label %106

106:                                              ; preds = %122, %79
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %7, align 4
  %109 = sub i32 42, %108
  %110 = icmp ult i32 %107, %109
  br i1 %110, label %111, label %125

111:                                              ; preds = %106
  %112 = load i32*, i32** %4, align 8
  %113 = load i32, i32* %8, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @calc_parity(i32 %116)
  %118 = load i32*, i32** %4, align 8
  %119 = load i32, i32* %8, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %117, i32* %121, align 4
  br label %122

122:                                              ; preds = %111
  %123 = load i32, i32* %8, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %106

125:                                              ; preds = %106
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @calc_parity(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
