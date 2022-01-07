; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda18271c2dd.c_SearchMap3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda18271c2dd.c_SearchMap3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SMap2 = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.SMap2*, i64, i32*, i32*)* @SearchMap3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SearchMap3(%struct.SMap2* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.SMap2*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.SMap2* %0, %struct.SMap2** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %30, %4
  %12 = load %struct.SMap2*, %struct.SMap2** %6, align 8
  %13 = load i32, i32* %10, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.SMap2, %struct.SMap2* %12, i64 %14
  %16 = getelementptr inbounds %struct.SMap2, %struct.SMap2* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %11
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.SMap2*, %struct.SMap2** %6, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.SMap2, %struct.SMap2* %21, i64 %23
  %25 = getelementptr inbounds %struct.SMap2, %struct.SMap2* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %20, %26
  br label %28

28:                                               ; preds = %19, %11
  %29 = phi i1 [ false, %11 ], [ %27, %19 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  br label %11

33:                                               ; preds = %28
  %34 = load %struct.SMap2*, %struct.SMap2** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.SMap2, %struct.SMap2* %34, i64 %36
  %38 = getelementptr inbounds %struct.SMap2, %struct.SMap2* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %57

42:                                               ; preds = %33
  %43 = load %struct.SMap2*, %struct.SMap2** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.SMap2, %struct.SMap2* %43, i64 %45
  %47 = getelementptr inbounds %struct.SMap2, %struct.SMap2* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %8, align 8
  store i32 %48, i32* %49, align 4
  %50 = load %struct.SMap2*, %struct.SMap2** %6, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.SMap2, %struct.SMap2* %50, i64 %52
  %54 = getelementptr inbounds %struct.SMap2, %struct.SMap2* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  store i32 1, i32* %5, align 4
  br label %57

57:                                               ; preds = %42, %41
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
