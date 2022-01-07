; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_mmc_sdio_switch_hs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_mmc_sdio_switch_hs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MMC_CAP_SD_HIGHSPEED = common dso_local global i32 0, align 4
@SDIO_CCCR_SPEED = common dso_local global i32 0, align 4
@SDIO_SPEED_EHS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, i32)* @mmc_sdio_switch_hs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_sdio_switch_hs(%struct.mmc_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %9 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MMC_CAP_SD_HIGHSPEED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

17:                                               ; preds = %2
  %18 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %19 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %54

24:                                               ; preds = %17
  %25 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %26 = load i32, i32* @SDIO_CCCR_SPEED, align 4
  %27 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %25, i32 0, i32 0, i32 %26, i32 0, i32* %7)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %54

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @SDIO_SPEED_EHS, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %44

39:                                               ; preds = %32
  %40 = load i32, i32* @SDIO_SPEED_EHS, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %39, %35
  %45 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %46 = load i32, i32* @SDIO_CCCR_SPEED, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %45, i32 1, i32 0, i32 %46, i32 %47, i32* null)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %54

53:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %51, %30, %23, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @mmc_io_rw_direct(%struct.mmc_card*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
