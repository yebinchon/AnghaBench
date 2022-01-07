; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_io.c_sdio_max_byte_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_io.c_sdio_max_byte_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*)* @sdio_max_byte_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_max_byte_size(%struct.sdio_func* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdio_func*, align 8
  %4 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %3, align 8
  %5 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %6 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %5, i32 0, i32 2
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %13 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = call i64 @mmc_blksz_for_byte_mode(%struct.TYPE_5__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %20 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @min(i32 %18, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %29

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %26 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @min(i32 %24, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %23, %17
  %30 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %31 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = call i64 @mmc_card_broken_byte_mode_512(%struct.TYPE_5__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @min(i32 %36, i32 511)
  store i32 %37, i32* %2, align 4
  br label %41

38:                                               ; preds = %29
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @min(i32 %39, i32 512)
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @mmc_blksz_for_byte_mode(%struct.TYPE_5__*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @mmc_card_broken_byte_mode_512(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
