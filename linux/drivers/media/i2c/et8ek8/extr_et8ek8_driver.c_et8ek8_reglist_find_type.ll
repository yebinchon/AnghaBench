; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_reglist_find_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_reglist_find_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et8ek8_reglist = type { i64 }
%struct.et8ek8_meta_reglist = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.et8ek8_reglist* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.et8ek8_reglist* (%struct.et8ek8_meta_reglist*, i64)* @et8ek8_reglist_find_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.et8ek8_reglist* @et8ek8_reglist_find_type(%struct.et8ek8_meta_reglist* %0, i64 %1) #0 {
  %3 = alloca %struct.et8ek8_reglist*, align 8
  %4 = alloca %struct.et8ek8_meta_reglist*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.et8ek8_reglist**, align 8
  store %struct.et8ek8_meta_reglist* %0, %struct.et8ek8_meta_reglist** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.et8ek8_meta_reglist*, %struct.et8ek8_meta_reglist** %4, align 8
  %8 = getelementptr inbounds %struct.et8ek8_meta_reglist, %struct.et8ek8_meta_reglist* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.et8ek8_reglist** %11, %struct.et8ek8_reglist*** %6, align 8
  br label %12

12:                                               ; preds = %26, %2
  %13 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %6, align 8
  %14 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %13, align 8
  %15 = icmp ne %struct.et8ek8_reglist* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %6, align 8
  %18 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %17, align 8
  %19 = getelementptr inbounds %struct.et8ek8_reglist, %struct.et8ek8_reglist* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %6, align 8
  %25 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %24, align 8
  store %struct.et8ek8_reglist* %25, %struct.et8ek8_reglist** %3, align 8
  br label %30

26:                                               ; preds = %16
  %27 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %6, align 8
  %28 = getelementptr inbounds %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %27, i32 1
  store %struct.et8ek8_reglist** %28, %struct.et8ek8_reglist*** %6, align 8
  br label %12

29:                                               ; preds = %12
  store %struct.et8ek8_reglist* null, %struct.et8ek8_reglist** %3, align 8
  br label %30

30:                                               ; preds = %29, %23
  %31 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %3, align 8
  ret %struct.et8ek8_reglist* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
