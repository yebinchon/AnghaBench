; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda18271c2dd.c_SearchMap4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda18271c2dd.c_SearchMap4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SRFBandMap = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SRFBandMap*, i64, i32*)* @SearchMap4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SearchMap4(%struct.SRFBandMap* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.SRFBandMap*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.SRFBandMap* %0, %struct.SRFBandMap** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %23, %3
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 7
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.SRFBandMap*, %struct.SRFBandMap** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.SRFBandMap, %struct.SRFBandMap* %14, i64 %16
  %18 = getelementptr inbounds %struct.SRFBandMap, %struct.SRFBandMap* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %13, %19
  br label %21

21:                                               ; preds = %12, %9
  %22 = phi i1 [ false, %9 ], [ %20, %12 ]
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %8, align 4
  br label %9

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 7
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  store i32 1, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %29
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
