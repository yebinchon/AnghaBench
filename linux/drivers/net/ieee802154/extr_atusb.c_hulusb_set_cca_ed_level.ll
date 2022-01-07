; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_atusb.c_hulusb_set_cca_ed_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_atusb.c_hulusb_set_cca_ed_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atusb = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8**, i8* }

@SR_CCA_ED_THRES = common dso_local global i32 0, align 4
@at86rf212_ed_levels_98 = common dso_local global i8** null, align 8
@at86rf212_ed_levels_100 = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atusb*, i32)* @hulusb_set_cca_ed_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hulusb_set_cca_ed_level(%struct.atusb* %0, i32 %1) #0 {
  %3 = alloca %struct.atusb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.atusb* %0, %struct.atusb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.atusb*, %struct.atusb** %3, align 8
  %7 = load i32, i32* @SR_CCA_ED_THRES, align 4
  %8 = call i32 @atusb_read_subreg(%struct.atusb* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %68 [
    i32 -98, label %10
    i32 -100, label %39
  ]

10:                                               ; preds = %2
  %11 = load i8**, i8*** @at86rf212_ed_levels_98, align 8
  %12 = load %struct.atusb*, %struct.atusb** %3, align 8
  %13 = getelementptr inbounds %struct.atusb, %struct.atusb* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i8** %11, i8*** %18, align 8
  %19 = load i8**, i8*** @at86rf212_ed_levels_98, align 8
  %20 = call i8* @ARRAY_SIZE(i8** %19)
  %21 = load %struct.atusb*, %struct.atusb** %3, align 8
  %22 = getelementptr inbounds %struct.atusb, %struct.atusb* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i8* %20, i8** %27, align 8
  %28 = load i8**, i8*** @at86rf212_ed_levels_98, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.atusb*, %struct.atusb** %3, align 8
  %34 = getelementptr inbounds %struct.atusb, %struct.atusb* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i8* %32, i8** %38, align 8
  br label %70

39:                                               ; preds = %2
  %40 = load i8**, i8*** @at86rf212_ed_levels_100, align 8
  %41 = load %struct.atusb*, %struct.atusb** %3, align 8
  %42 = getelementptr inbounds %struct.atusb, %struct.atusb* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i8** %40, i8*** %47, align 8
  %48 = load i8**, i8*** @at86rf212_ed_levels_100, align 8
  %49 = call i8* @ARRAY_SIZE(i8** %48)
  %50 = load %struct.atusb*, %struct.atusb** %3, align 8
  %51 = getelementptr inbounds %struct.atusb, %struct.atusb* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i8* %49, i8** %56, align 8
  %57 = load i8**, i8*** @at86rf212_ed_levels_100, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.atusb*, %struct.atusb** %3, align 8
  %63 = getelementptr inbounds %struct.atusb, %struct.atusb* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i8* %61, i8** %67, align 8
  br label %70

68:                                               ; preds = %2
  %69 = call i32 @WARN_ON(i32 1)
  br label %70

70:                                               ; preds = %68, %39, %10
  ret i32 0
}

declare dso_local i32 @atusb_read_subreg(%struct.atusb*, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8**) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
