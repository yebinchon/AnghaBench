; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c__tw32_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c__tw32_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 (%struct.tg3*, i64)*, i32 (%struct.tg3*, i64, i64)* }

@PCIX_TARGET_HWBUG = common dso_local global i32 0, align 4
@ICH_WORKAROUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, i64, i64, i64)* @_tw32_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_tw32_flush(%struct.tg3* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.tg3*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.tg3* %0, %struct.tg3** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.tg3*, %struct.tg3** %5, align 8
  %10 = load i32, i32* @PCIX_TARGET_HWBUG, align 4
  %11 = call i64 @tg3_flag(%struct.tg3* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = load %struct.tg3*, %struct.tg3** %5, align 8
  %15 = load i32, i32* @ICH_WORKAROUND, align 4
  %16 = call i64 @tg3_flag(%struct.tg3* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13, %4
  %19 = load %struct.tg3*, %struct.tg3** %5, align 8
  %20 = getelementptr inbounds %struct.tg3, %struct.tg3* %19, i32 0, i32 1
  %21 = load i32 (%struct.tg3*, i64, i64)*, i32 (%struct.tg3*, i64, i64)** %20, align 8
  %22 = load %struct.tg3*, %struct.tg3** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 %21(%struct.tg3* %22, i64 %23, i64 %24)
  br label %43

26:                                               ; preds = %13
  %27 = load %struct.tg3*, %struct.tg3** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @tg3_write32(%struct.tg3* %27, i64 %28, i64 %29)
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @udelay(i64 %34)
  br label %36

36:                                               ; preds = %33, %26
  %37 = load %struct.tg3*, %struct.tg3** %5, align 8
  %38 = getelementptr inbounds %struct.tg3, %struct.tg3* %37, i32 0, i32 0
  %39 = load i32 (%struct.tg3*, i64)*, i32 (%struct.tg3*, i64)** %38, align 8
  %40 = load %struct.tg3*, %struct.tg3** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 %39(%struct.tg3* %40, i64 %41)
  br label %43

43:                                               ; preds = %36, %18
  %44 = load i64, i64* %8, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @udelay(i64 %47)
  br label %49

49:                                               ; preds = %46, %43
  ret void
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_write32(%struct.tg3*, i64, i64) #1

declare dso_local i32 @udelay(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
