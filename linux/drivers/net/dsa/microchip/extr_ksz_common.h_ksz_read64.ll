; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz_common.h_ksz_read64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz_common.h_ksz_read64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksz_device*, i64, i32*)* @ksz_read64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz_read64(%struct.ksz_device* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.ksz_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [2 x i64], align 16
  %8 = alloca i32, align 4
  store %struct.ksz_device* %0, %struct.ksz_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %10 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %16 = call i32 @regmap_bulk_read(i32 %13, i64 %14, i64* %15, i32 2)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %21 = load i64, i64* %20, align 16
  %22 = call i64 @swab32(i64 %21)
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  store i64 %22, i64* %23, align 16
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @swab32(i64 %25)
  %27 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %29 = load i64, i64* %28, align 16
  %30 = trunc i64 %29 to i32
  %31 = call i32 @swab64(i32 %30)
  %32 = load i32*, i32** %6, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %19, %3
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local i32 @regmap_bulk_read(i32, i64, i64*, i32) #1

declare dso_local i64 @swab32(i64) #1

declare dso_local i32 @swab64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
