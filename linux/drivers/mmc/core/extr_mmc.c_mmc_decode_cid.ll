; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_decode_cid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc.c_mmc_decode_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i8*, i8*, i8*, i8**, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [38 x i8] c"%s: card has unknown MMCA version %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*)* @mmc_decode_cid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_decode_cid(%struct.mmc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmc_card*, align 8
  %4 = alloca i32*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %3, align 8
  %5 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %6 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %5, i32 0, i32 3
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %4, align 8
  %8 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %9 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %169 [
    i32 0, label %12
    i32 1, label %12
    i32 2, label %94
    i32 3, label %94
    i32 4, label %94
  ]

12:                                               ; preds = %1, %1
  %13 = load i32*, i32** %4, align 8
  %14 = call i8* @UNSTUFF_BITS(i32* %13, i32 104, i32 24)
  %15 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %16 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 6
  store i8* %14, i8** %17, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i8* @UNSTUFF_BITS(i32* %18, i32 96, i32 8)
  %20 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %21 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  %23 = load i8**, i8*** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  store i8* %19, i8** %24, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i8* @UNSTUFF_BITS(i32* %25, i32 88, i32 8)
  %27 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %28 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 4
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  store i8* %26, i8** %31, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i8* @UNSTUFF_BITS(i32* %32, i32 80, i32 8)
  %34 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %35 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 2
  store i8* %33, i8** %38, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i8* @UNSTUFF_BITS(i32* %39, i32 72, i32 8)
  %41 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %42 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 3
  store i8* %40, i8** %45, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i8* @UNSTUFF_BITS(i32* %46, i32 64, i32 8)
  %48 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %49 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 4
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 4
  store i8* %47, i8** %52, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i8* @UNSTUFF_BITS(i32* %53, i32 56, i32 8)
  %55 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %56 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 4
  %58 = load i8**, i8*** %57, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 5
  store i8* %54, i8** %59, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i8* @UNSTUFF_BITS(i32* %60, i32 48, i32 8)
  %62 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %63 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 4
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 6
  store i8* %61, i8** %66, align 8
  %67 = load i32*, i32** %4, align 8
  %68 = call i8* @UNSTUFF_BITS(i32* %67, i32 44, i32 4)
  %69 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %70 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 8
  store i8* %68, i8** %71, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = call i8* @UNSTUFF_BITS(i32* %72, i32 40, i32 4)
  %74 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %75 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 7
  store i8* %73, i8** %76, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = call i8* @UNSTUFF_BITS(i32* %77, i32 16, i32 24)
  %79 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %80 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  store i8* %78, i8** %81, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = call i8* @UNSTUFF_BITS(i32* %82, i32 12, i32 4)
  %84 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %85 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i8* %83, i8** %86, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = call i8* @UNSTUFF_BITS(i32* %87, i32 8, i32 4)
  %89 = getelementptr i8, i8* %88, i64 1997
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %92 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  br label %181

94:                                               ; preds = %1, %1, %1
  %95 = load i32*, i32** %4, align 8
  %96 = call i8* @UNSTUFF_BITS(i32* %95, i32 120, i32 8)
  %97 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %98 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 6
  store i8* %96, i8** %99, align 8
  %100 = load i32*, i32** %4, align 8
  %101 = call i8* @UNSTUFF_BITS(i32* %100, i32 104, i32 16)
  %102 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %103 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 5
  store i8* %101, i8** %104, align 8
  %105 = load i32*, i32** %4, align 8
  %106 = call i8* @UNSTUFF_BITS(i32* %105, i32 96, i32 8)
  %107 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %108 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 4
  %110 = load i8**, i8*** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 0
  store i8* %106, i8** %111, align 8
  %112 = load i32*, i32** %4, align 8
  %113 = call i8* @UNSTUFF_BITS(i32* %112, i32 88, i32 8)
  %114 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %115 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 4
  %117 = load i8**, i8*** %116, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 1
  store i8* %113, i8** %118, align 8
  %119 = load i32*, i32** %4, align 8
  %120 = call i8* @UNSTUFF_BITS(i32* %119, i32 80, i32 8)
  %121 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %122 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 4
  %124 = load i8**, i8*** %123, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 2
  store i8* %120, i8** %125, align 8
  %126 = load i32*, i32** %4, align 8
  %127 = call i8* @UNSTUFF_BITS(i32* %126, i32 72, i32 8)
  %128 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %129 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 4
  %131 = load i8**, i8*** %130, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 3
  store i8* %127, i8** %132, align 8
  %133 = load i32*, i32** %4, align 8
  %134 = call i8* @UNSTUFF_BITS(i32* %133, i32 64, i32 8)
  %135 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %136 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 4
  %138 = load i8**, i8*** %137, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 4
  store i8* %134, i8** %139, align 8
  %140 = load i32*, i32** %4, align 8
  %141 = call i8* @UNSTUFF_BITS(i32* %140, i32 56, i32 8)
  %142 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %143 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 4
  %145 = load i8**, i8*** %144, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 5
  store i8* %141, i8** %146, align 8
  %147 = load i32*, i32** %4, align 8
  %148 = call i8* @UNSTUFF_BITS(i32* %147, i32 48, i32 8)
  %149 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %150 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 3
  store i8* %148, i8** %151, align 8
  %152 = load i32*, i32** %4, align 8
  %153 = call i8* @UNSTUFF_BITS(i32* %152, i32 16, i32 32)
  %154 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %155 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 2
  store i8* %153, i8** %156, align 8
  %157 = load i32*, i32** %4, align 8
  %158 = call i8* @UNSTUFF_BITS(i32* %157, i32 12, i32 4)
  %159 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %160 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  store i8* %158, i8** %161, align 8
  %162 = load i32*, i32** %4, align 8
  %163 = call i8* @UNSTUFF_BITS(i32* %162, i32 8, i32 4)
  %164 = getelementptr i8, i8* %163, i64 1997
  %165 = ptrtoint i8* %164 to i32
  %166 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %167 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  store i32 %165, i32* %168, align 8
  br label %181

169:                                              ; preds = %1
  %170 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %171 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @mmc_hostname(i32 %172)
  %174 = load %struct.mmc_card*, %struct.mmc_card** %3, align 8
  %175 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %173, i32 %177)
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %2, align 4
  br label %182

181:                                              ; preds = %94, %12
  store i32 0, i32* %2, align 4
  br label %182

182:                                              ; preds = %181, %169
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local i8* @UNSTUFF_BITS(i32*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
