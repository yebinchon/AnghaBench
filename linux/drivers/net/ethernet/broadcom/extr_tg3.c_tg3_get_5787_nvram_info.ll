; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_get_5787_nvram_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_get_5787_nvram_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i8* }

@NVRAM_CFG1 = common dso_local global i32 0, align 4
@NVRAM_CFG1_5752VENDOR_MASK = common dso_local global i32 0, align 4
@JEDEC_ATMEL = common dso_local global i8* null, align 8
@NVRAM_BUFFERED = common dso_local global i32 0, align 4
@ATMEL_AT24C512_CHIP_SIZE = common dso_local global i32 0, align 4
@NVRAM_CFG1_COMPAT_BYPASS = common dso_local global i32 0, align 4
@FLASH = common dso_local global i32 0, align 4
@JEDEC_ST = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_get_5787_nvram_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_get_5787_nvram_info(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %4 = load i32, i32* @NVRAM_CFG1, align 4
  %5 = call i32 @tr32(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @NVRAM_CFG1_5752VENDOR_MASK, align 4
  %8 = and i32 %6, %7
  switch i32 %8, label %50 [
    i32 130, label %9
    i32 131, label %9
    i32 128, label %9
    i32 129, label %9
    i32 138, label %26
    i32 134, label %26
    i32 133, label %26
    i32 132, label %26
    i32 137, label %38
    i32 136, label %38
    i32 135, label %38
  ]

9:                                                ; preds = %1, %1, %1, %1
  %10 = load i8*, i8** @JEDEC_ATMEL, align 8
  %11 = load %struct.tg3*, %struct.tg3** %2, align 8
  %12 = getelementptr inbounds %struct.tg3, %struct.tg3* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load %struct.tg3*, %struct.tg3** %2, align 8
  %14 = load i32, i32* @NVRAM_BUFFERED, align 4
  %15 = call i32 @tg3_flag_set(%struct.tg3* %13, i32 %14)
  %16 = load i32, i32* @ATMEL_AT24C512_CHIP_SIZE, align 4
  %17 = load %struct.tg3*, %struct.tg3** %2, align 8
  %18 = getelementptr inbounds %struct.tg3, %struct.tg3* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @NVRAM_CFG1_COMPAT_BYPASS, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @NVRAM_CFG1, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @tw32(i32 %23, i32 %24)
  br label %50

26:                                               ; preds = %1, %1, %1, %1
  %27 = load i8*, i8** @JEDEC_ATMEL, align 8
  %28 = load %struct.tg3*, %struct.tg3** %2, align 8
  %29 = getelementptr inbounds %struct.tg3, %struct.tg3* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.tg3*, %struct.tg3** %2, align 8
  %31 = load i32, i32* @NVRAM_BUFFERED, align 4
  %32 = call i32 @tg3_flag_set(%struct.tg3* %30, i32 %31)
  %33 = load %struct.tg3*, %struct.tg3** %2, align 8
  %34 = load i32, i32* @FLASH, align 4
  %35 = call i32 @tg3_flag_set(%struct.tg3* %33, i32 %34)
  %36 = load %struct.tg3*, %struct.tg3** %2, align 8
  %37 = getelementptr inbounds %struct.tg3, %struct.tg3* %36, i32 0, i32 0
  store i32 264, i32* %37, align 8
  br label %50

38:                                               ; preds = %1, %1, %1
  %39 = load i8*, i8** @JEDEC_ST, align 8
  %40 = load %struct.tg3*, %struct.tg3** %2, align 8
  %41 = getelementptr inbounds %struct.tg3, %struct.tg3* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.tg3*, %struct.tg3** %2, align 8
  %43 = load i32, i32* @NVRAM_BUFFERED, align 4
  %44 = call i32 @tg3_flag_set(%struct.tg3* %42, i32 %43)
  %45 = load %struct.tg3*, %struct.tg3** %2, align 8
  %46 = load i32, i32* @FLASH, align 4
  %47 = call i32 @tg3_flag_set(%struct.tg3* %45, i32 %46)
  %48 = load %struct.tg3*, %struct.tg3** %2, align 8
  %49 = getelementptr inbounds %struct.tg3, %struct.tg3* %48, i32 0, i32 0
  store i32 256, i32* %49, align 8
  br label %50

50:                                               ; preds = %1, %38, %26, %9
  ret void
}

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @tg3_flag_set(%struct.tg3*, i32) #1

declare dso_local i32 @tw32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
