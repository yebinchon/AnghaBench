; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_iram_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_iram_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_iram_info = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.coda_iram_info*, i64)* @coda_iram_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @coda_iram_alloc(%struct.coda_iram_info* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.coda_iram_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.coda_iram_info* %0, %struct.coda_iram_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i64 @round_up(i64 %7, i32 1024)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.coda_iram_info*, %struct.coda_iram_info** %4, align 8
  %11 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ugt i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %30

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.coda_iram_info*, %struct.coda_iram_info** %4, align 8
  %18 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %19, %16
  store i64 %20, i64* %18, align 8
  %21 = load %struct.coda_iram_info*, %struct.coda_iram_info** %4, align 8
  %22 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.coda_iram_info*, %struct.coda_iram_info** %4, align 8
  %26 = getelementptr inbounds %struct.coda_iram_info, %struct.coda_iram_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, %24
  store i64 %28, i64* %26, align 8
  %29 = load i64, i64* %6, align 8
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %15, %14
  %31 = load i64, i64* %3, align 8
  ret i64 %31
}

declare dso_local i64 @round_up(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
