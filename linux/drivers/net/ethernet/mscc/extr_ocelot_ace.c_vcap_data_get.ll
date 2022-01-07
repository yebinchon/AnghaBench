; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_vcap_data_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_vcap_data_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENTRY_WIDTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64, i64)* @vcap_data_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vcap_data_get(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %40, %3
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %11
  %16 = load i64*, i64** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @ENTRY_WIDTH, align 8
  %19 = udiv i64 %17, %18
  %20 = getelementptr inbounds i64, i64* %16, i64 %19
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @ENTRY_WIDTH, align 8
  %24 = urem i64 %22, %23
  %25 = trunc i64 %24 to i32
  %26 = shl i32 1, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %15
  %33 = load i64, i64* %7, align 8
  %34 = trunc i64 %33 to i32
  %35 = shl i32 1, %34
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %10, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %10, align 8
  br label %39

39:                                               ; preds = %32, %15
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %5, align 8
  br label %11

45:                                               ; preds = %11
  %46 = load i64, i64* %10, align 8
  ret i64 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
