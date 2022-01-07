; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_sdio_select_driver_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio.c_sdio_select_driver_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SD_DRIVER_TYPE_B = common dso_local global i32 0, align 4
@SDIO_CCCR_DRIVE_STRENGTH = common dso_local global i32 0, align 4
@SDIO_DRIVE_DTSx_MASK = common dso_local global i8 0, align 1
@SDIO_DRIVE_DTSx_SHIFT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_card*)* @sdio_select_driver_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdio_select_driver_type(%struct.mmc_card* %0) #0 {
  %2 = alloca %struct.mmc_card*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %2, align 8
  %8 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %9 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %11 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SD_DRIVER_TYPE_B, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %3, align 4
  %16 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %17 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %18 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @mmc_select_drive_strength(%struct.mmc_card* %16, i32 %20, i32 %21, i32* %5)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %61

25:                                               ; preds = %1
  %26 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %27 = load i32, i32* @SDIO_CCCR_DRIVE_STRENGTH, align 4
  %28 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %26, i32 0, i32 0, i32 %27, i8 zeroext 0, i8* %6)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %70

32:                                               ; preds = %25
  %33 = load i8, i8* @SDIO_DRIVE_DTSx_MASK, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* @SDIO_DRIVE_DTSx_SHIFT, align 1
  %36 = zext i8 %35 to i32
  %37 = shl i32 %34, %36
  %38 = xor i32 %37, -1
  %39 = load i8, i8* %6, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, %38
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %6, align 1
  %43 = load i32, i32* %4, align 4
  %44 = call zeroext i8 @host_drive_to_sdio_drive(i32 %43)
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* %6, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %47, %45
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %6, align 1
  %50 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %51 = load i32, i32* @SDIO_CCCR_DRIVE_STRENGTH, align 4
  %52 = load i8, i8* %6, align 1
  %53 = call i32 @mmc_io_rw_direct(%struct.mmc_card* %50, i32 1, i32 0, i32 %51, i8 zeroext %52, i8* null)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %32
  br label %70

57:                                               ; preds = %32
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %60 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %1
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %66 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @mmc_set_driver_type(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %31, %56, %64, %61
  ret void
}

declare dso_local i32 @mmc_select_drive_strength(%struct.mmc_card*, i32, i32, i32*) #1

declare dso_local i32 @mmc_io_rw_direct(%struct.mmc_card*, i32, i32, i32, i8 zeroext, i8*) #1

declare dso_local zeroext i8 @host_drive_to_sdio_drive(i32) #1

declare dso_local i32 @mmc_set_driver_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
