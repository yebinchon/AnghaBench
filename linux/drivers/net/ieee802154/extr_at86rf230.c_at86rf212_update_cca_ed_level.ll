; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf212_update_cca_ed_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf212_update_cca_ed_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at86rf230_local = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8**, i8* }

@SR_CCA_ED_THRES = common dso_local global i32 0, align 4
@at86rf212_ed_levels_98 = common dso_local global i8** null, align 8
@at86rf212_ed_levels_100 = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at86rf230_local*, i32)* @at86rf212_update_cca_ed_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at86rf212_update_cca_ed_level(%struct.at86rf230_local* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.at86rf230_local*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.at86rf230_local* %0, %struct.at86rf230_local** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %9 = load i32, i32* @SR_CCA_ED_THRES, align 4
  %10 = call i32 @at86rf230_read_subreg(%struct.at86rf230_local* %8, i32 %9, i32* %6)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %78

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %75 [
    i32 -98, label %17
    i32 -100, label %46
  ]

17:                                               ; preds = %15
  %18 = load i8**, i8*** @at86rf212_ed_levels_98, align 8
  %19 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %20 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i8** %18, i8*** %25, align 8
  %26 = load i8**, i8*** @at86rf212_ed_levels_98, align 8
  %27 = call i8* @ARRAY_SIZE(i8** %26)
  %28 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %29 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i8* %27, i8** %34, align 8
  %35 = load i8**, i8*** @at86rf212_ed_levels_98, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %41 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i8* %39, i8** %45, align 8
  br label %77

46:                                               ; preds = %15
  %47 = load i8**, i8*** @at86rf212_ed_levels_100, align 8
  %48 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %49 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i8** %47, i8*** %54, align 8
  %55 = load i8**, i8*** @at86rf212_ed_levels_100, align 8
  %56 = call i8* @ARRAY_SIZE(i8** %55)
  %57 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %58 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i8* %56, i8** %63, align 8
  %64 = load i8**, i8*** @at86rf212_ed_levels_100, align 8
  %65 = load i32, i32* %6, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %70 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i8* %68, i8** %74, align 8
  br label %77

75:                                               ; preds = %15
  %76 = call i32 @WARN_ON(i32 1)
  br label %77

77:                                               ; preds = %75, %46, %17
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %13
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @at86rf230_read_subreg(%struct.at86rf230_local*, i32, i32*) #1

declare dso_local i8* @ARRAY_SIZE(i8**) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
