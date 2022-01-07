; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_cis.c_cistpl_funce_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_cis.c_cistpl_funce_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8, i32 }
%struct.sdio_func = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@speed_val = common dso_local global i32* null, align 8
@speed_unit = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, %struct.sdio_func*, i8*, i32)* @cistpl_funce_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cistpl_funce_common(%struct.mmc_card* %0, %struct.sdio_func* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_card*, align 8
  %7 = alloca %struct.sdio_func*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %6, align 8
  store %struct.sdio_func* %1, %struct.sdio_func** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %11 = icmp ne %struct.sdio_func* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %53

15:                                               ; preds = %4
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl i32 %23, 8
  %25 = or i32 %19, %24
  %26 = trunc i32 %25 to i8
  %27 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %28 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i8 %26, i8* %29, align 4
  %30 = load i32*, i32** @speed_val, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 3
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = ashr i32 %34, 3
  %36 = and i32 %35, 15
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %30, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** @speed_unit, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 3
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 7
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %40, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %39, %48
  %50 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %51 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %15, %12
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
