; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_le_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_le_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { %struct.TYPE_2__*, %struct.net_device** }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@PREF_UNIT_GET_IDX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s: descriptor error q=%#x get=%u put=%u\0A\00", align 1
@PREF_UNIT_PUT_IDX = common dso_local global i32 0, align 4
@Q_CSR = common dso_local global i32 0, align 4
@BMU_CLR_IRQ_CHK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_hw*, i32, i64)* @sky2_le_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_le_error(%struct.sky2_hw* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.sky2_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  store %struct.sky2_hw* %0, %struct.sky2_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %10 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %9, i32 0, i32 1
  %11 = load %struct.net_device**, %struct.net_device*** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.net_device*, %struct.net_device** %11, i64 %13
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %7, align 8
  %16 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* @PREF_UNIT_GET_IDX, align 4
  %19 = call i32 @Y2_QADDR(i64 %17, i32 %18)
  %20 = call i64 @sky2_read16(%struct.sky2_hw* %16, i32 %19)
  store i64 %20, i64* %8, align 8
  %21 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %22 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %6, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i64, i64* %8, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* @PREF_UNIT_PUT_IDX, align 4
  %35 = call i32 @Y2_QADDR(i64 %33, i32 %34)
  %36 = call i64 @sky2_read16(%struct.sky2_hw* %32, i32 %35)
  %37 = trunc i64 %36 to i32
  %38 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %29, i32 %31, i32 %37)
  %39 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i32, i32* @Q_CSR, align 4
  %42 = call i32 @Q_ADDR(i64 %40, i32 %41)
  %43 = load i32, i32* @BMU_CLR_IRQ_CHK, align 4
  %44 = call i32 @sky2_write32(%struct.sky2_hw* %39, i32 %42, i32 %43)
  ret void
}

declare dso_local i64 @sky2_read16(%struct.sky2_hw*, i32) #1

declare dso_local i32 @Y2_QADDR(i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @Q_ADDR(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
