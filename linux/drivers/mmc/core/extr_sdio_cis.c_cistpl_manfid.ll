; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_cis.c_cistpl_manfid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_cis.c_cistpl_manfid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sdio_func = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, %struct.sdio_func*, i8*, i32)* @cistpl_manfid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cistpl_manfid(%struct.mmc_card* %0, %struct.sdio_func* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.mmc_card*, align 8
  %6 = alloca %struct.sdio_func*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %5, align 8
  store %struct.sdio_func* %1, %struct.sdio_func** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8*, i8** %7, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl i32 %18, 8
  %20 = or i32 %14, %19
  store i32 %20, i32* %9, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 2
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 3
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl i32 %28, 8
  %30 = or i32 %24, %29
  store i32 %30, i32* %10, align 4
  %31 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %32 = icmp ne %struct.sdio_func* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %36 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.sdio_func*, %struct.sdio_func** %6, align 8
  %39 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %49

40:                                               ; preds = %4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.mmc_card*, %struct.mmc_card** %5, align 8
  %43 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.mmc_card*, %struct.mmc_card** %5, align 8
  %47 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  br label %49

49:                                               ; preds = %40, %33
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
