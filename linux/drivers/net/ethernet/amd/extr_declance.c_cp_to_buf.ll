; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_declance.c_cp_to_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_declance.c_cp_to_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PMAD_LANCE = common dso_local global i32 0, align 4
@PMAX_LANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i32)* @cp_to_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_to_buf(i32 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @PMAD_LANCE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @memcpy(i8* %18, i8* %19, i32 %20)
  br label %140

22:                                               ; preds = %4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @PMAX_LANCE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %65

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = ashr i32 %27, 1
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %11, align 2
  %30 = load i8*, i8** %6, align 8
  %31 = bitcast i8* %30 to i16*
  store i16* %31, i16** %9, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = bitcast i8* %32 to i16*
  store i16* %33, i16** %10, align 8
  br label %34

34:                                               ; preds = %38, %26
  %35 = load i16, i16* %11, align 2
  %36 = add i16 %35, -1
  store i16 %36, i16* %11, align 2
  %37 = icmp ne i16 %35, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i16*, i16** %10, align 8
  %40 = getelementptr inbounds i16, i16* %39, i32 1
  store i16* %40, i16** %10, align 8
  %41 = load i16, i16* %39, align 2
  %42 = load i16*, i16** %9, align 8
  %43 = getelementptr inbounds i16, i16* %42, i32 1
  store i16* %43, i16** %9, align 8
  store i16 %41, i16* %42, align 2
  %44 = load i16*, i16** %9, align 8
  %45 = getelementptr inbounds i16, i16* %44, i32 1
  store i16* %45, i16** %9, align 8
  br label %34

46:                                               ; preds = %34
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 1
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %11, align 2
  %50 = load i16*, i16** %9, align 8
  %51 = bitcast i16* %50 to i8*
  store i8* %51, i8** %12, align 8
  %52 = load i16*, i16** %10, align 8
  %53 = bitcast i16* %52 to i8*
  store i8* %53, i8** %13, align 8
  br label %54

54:                                               ; preds = %58, %46
  %55 = load i16, i16* %11, align 2
  %56 = add i16 %55, -1
  store i16 %56, i16* %11, align 2
  %57 = icmp ne i16 %55, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i8*, i8** %13, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %13, align 8
  %61 = load i8, i8* %59, align 1
  %62 = load i8*, i8** %12, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %12, align 8
  store i8 %61, i8* %62, align 1
  br label %54

64:                                               ; preds = %54
  br label %139

65:                                               ; preds = %22
  %66 = load i32, i32* %8, align 4
  %67 = ashr i32 %66, 4
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %11, align 2
  %69 = load i8*, i8** %6, align 8
  %70 = bitcast i8* %69 to i16*
  store i16* %70, i16** %9, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = bitcast i8* %71 to i16*
  store i16* %72, i16** %10, align 8
  br label %73

73:                                               ; preds = %77, %65
  %74 = load i16, i16* %11, align 2
  %75 = add i16 %74, -1
  store i16 %75, i16* %11, align 2
  %76 = icmp ne i16 %74, 0
  br i1 %76, label %77, label %120

77:                                               ; preds = %73
  %78 = load i16*, i16** %10, align 8
  %79 = getelementptr inbounds i16, i16* %78, i32 1
  store i16* %79, i16** %10, align 8
  %80 = load i16, i16* %78, align 2
  %81 = load i16*, i16** %9, align 8
  %82 = getelementptr inbounds i16, i16* %81, i32 1
  store i16* %82, i16** %9, align 8
  store i16 %80, i16* %81, align 2
  %83 = load i16*, i16** %10, align 8
  %84 = getelementptr inbounds i16, i16* %83, i32 1
  store i16* %84, i16** %10, align 8
  %85 = load i16, i16* %83, align 2
  %86 = load i16*, i16** %9, align 8
  %87 = getelementptr inbounds i16, i16* %86, i32 1
  store i16* %87, i16** %9, align 8
  store i16 %85, i16* %86, align 2
  %88 = load i16*, i16** %10, align 8
  %89 = getelementptr inbounds i16, i16* %88, i32 1
  store i16* %89, i16** %10, align 8
  %90 = load i16, i16* %88, align 2
  %91 = load i16*, i16** %9, align 8
  %92 = getelementptr inbounds i16, i16* %91, i32 1
  store i16* %92, i16** %9, align 8
  store i16 %90, i16* %91, align 2
  %93 = load i16*, i16** %10, align 8
  %94 = getelementptr inbounds i16, i16* %93, i32 1
  store i16* %94, i16** %10, align 8
  %95 = load i16, i16* %93, align 2
  %96 = load i16*, i16** %9, align 8
  %97 = getelementptr inbounds i16, i16* %96, i32 1
  store i16* %97, i16** %9, align 8
  store i16 %95, i16* %96, align 2
  %98 = load i16*, i16** %10, align 8
  %99 = getelementptr inbounds i16, i16* %98, i32 1
  store i16* %99, i16** %10, align 8
  %100 = load i16, i16* %98, align 2
  %101 = load i16*, i16** %9, align 8
  %102 = getelementptr inbounds i16, i16* %101, i32 1
  store i16* %102, i16** %9, align 8
  store i16 %100, i16* %101, align 2
  %103 = load i16*, i16** %10, align 8
  %104 = getelementptr inbounds i16, i16* %103, i32 1
  store i16* %104, i16** %10, align 8
  %105 = load i16, i16* %103, align 2
  %106 = load i16*, i16** %9, align 8
  %107 = getelementptr inbounds i16, i16* %106, i32 1
  store i16* %107, i16** %9, align 8
  store i16 %105, i16* %106, align 2
  %108 = load i16*, i16** %10, align 8
  %109 = getelementptr inbounds i16, i16* %108, i32 1
  store i16* %109, i16** %10, align 8
  %110 = load i16, i16* %108, align 2
  %111 = load i16*, i16** %9, align 8
  %112 = getelementptr inbounds i16, i16* %111, i32 1
  store i16* %112, i16** %9, align 8
  store i16 %110, i16* %111, align 2
  %113 = load i16*, i16** %10, align 8
  %114 = getelementptr inbounds i16, i16* %113, i32 1
  store i16* %114, i16** %10, align 8
  %115 = load i16, i16* %113, align 2
  %116 = load i16*, i16** %9, align 8
  %117 = getelementptr inbounds i16, i16* %116, i32 1
  store i16* %117, i16** %9, align 8
  store i16 %115, i16* %116, align 2
  %118 = load i16*, i16** %9, align 8
  %119 = getelementptr inbounds i16, i16* %118, i64 8
  store i16* %119, i16** %9, align 8
  br label %73

120:                                              ; preds = %73
  %121 = load i32, i32* %8, align 4
  %122 = and i32 %121, 15
  %123 = trunc i32 %122 to i16
  store i16 %123, i16* %11, align 2
  %124 = load i16*, i16** %9, align 8
  %125 = bitcast i16* %124 to i8*
  store i8* %125, i8** %12, align 8
  %126 = load i16*, i16** %10, align 8
  %127 = bitcast i16* %126 to i8*
  store i8* %127, i8** %13, align 8
  br label %128

128:                                              ; preds = %132, %120
  %129 = load i16, i16* %11, align 2
  %130 = add i16 %129, -1
  store i16 %130, i16* %11, align 2
  %131 = icmp ne i16 %129, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = load i8*, i8** %13, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %13, align 8
  %135 = load i8, i8* %133, align 1
  %136 = load i8*, i8** %12, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %12, align 8
  store i8 %135, i8* %136, align 1
  br label %128

138:                                              ; preds = %128
  br label %139

139:                                              ; preds = %138, %64
  br label %140

140:                                              ; preds = %139, %17
  %141 = call i32 (...) @iob()
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @iob(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
