; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_cs.c_get_model.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_cs.c_get_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CF8305_MANFID = common dso_local global i64 0, align 8
@CF8305_CARDID = common dso_local global i64 0, align 8
@MODEL_8305 = common dso_local global i32 0, align 4
@CF8381_MANFID = common dso_local global i64 0, align 8
@CF8381_CARDID = common dso_local global i64 0, align 8
@MODEL_8381 = common dso_local global i32 0, align 4
@CF8385_MANFID = common dso_local global i64 0, align 8
@CF8385_CARDID = common dso_local global i64 0, align 8
@MODEL_8385 = common dso_local global i32 0, align 4
@MODEL_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @get_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_model(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @CF8305_MANFID, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @CF8305_CARDID, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @MODEL_8305, align 4
  store i32 %14, i32* %3, align 4
  br label %39

15:                                               ; preds = %9, %2
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @CF8381_MANFID, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @CF8381_CARDID, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @MODEL_8381, align 4
  store i32 %24, i32* %3, align 4
  br label %39

25:                                               ; preds = %19, %15
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @CF8385_MANFID, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @CF8385_CARDID, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @MODEL_8385, align 4
  store i32 %34, i32* %3, align 4
  br label %39

35:                                               ; preds = %29, %25
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* @MODEL_UNKNOWN, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %33, %23, %13
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
