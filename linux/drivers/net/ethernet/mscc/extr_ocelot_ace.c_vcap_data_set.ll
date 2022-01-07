; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_vcap_data_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_ace.c_vcap_data_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENTRY_WIDTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, i64, i64)* @vcap_data_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcap_data_set(i64* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %12

12:                                               ; preds = %52, %4
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %12
  %17 = load i64*, i64** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @ENTRY_WIDTH, align 8
  %20 = udiv i64 %18, %19
  %21 = getelementptr inbounds i64, i64* %17, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @ENTRY_WIDTH, align 8
  %25 = urem i64 %23, %24
  %26 = trunc i64 %25 to i32
  %27 = shl i32 1, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = trunc i64 %30 to i32
  %32 = shl i32 1, %31
  %33 = sext i32 %32 to i64
  %34 = and i64 %29, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %16
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %10, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %10, align 8
  br label %45

40:                                               ; preds = %16
  %41 = load i64, i64* %11, align 8
  %42 = xor i64 %41, -1
  %43 = load i64, i64* %10, align 8
  %44 = and i64 %43, %42
  store i64 %44, i64* %10, align 8
  br label %45

45:                                               ; preds = %40, %36
  %46 = load i64, i64* %10, align 8
  %47 = load i64*, i64** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @ENTRY_WIDTH, align 8
  %50 = udiv i64 %48, %49
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  store i64 %46, i64* %51, align 8
  br label %52

52:                                               ; preds = %45
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %6, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %6, align 8
  br label %12

57:                                               ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
