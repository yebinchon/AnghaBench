; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_get_5752_nvram_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_get_5752_nvram_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i8* }

@NVRAM_CFG1 = common dso_local global i32 0, align 4
@PROTECTED_NVRAM = common dso_local global i32 0, align 4
@NVRAM_CFG1_5752VENDOR_MASK = common dso_local global i32 0, align 4
@JEDEC_ATMEL = common dso_local global i8* null, align 8
@NVRAM_BUFFERED = common dso_local global i32 0, align 4
@FLASH = common dso_local global i32 0, align 4
@JEDEC_ST = common dso_local global i8* null, align 8
@ATMEL_AT24C512_CHIP_SIZE = common dso_local global i32 0, align 4
@NVRAM_CFG1_COMPAT_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_get_5752_nvram_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_get_5752_nvram_info(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %4 = load i32, i32* @NVRAM_CFG1, align 4
  %5 = call i32 @tr32(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, 134217728
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.tg3*, %struct.tg3** %2, align 8
  %11 = load i32, i32* @PROTECTED_NVRAM, align 4
  %12 = call i32 @tg3_flag_set(%struct.tg3* %10, i32 %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @NVRAM_CFG1_5752VENDOR_MASK, align 4
  %16 = and i32 %14, %15
  switch i32 %16, label %44 [
    i32 132, label %17
    i32 133, label %17
    i32 131, label %24
    i32 130, label %34
    i32 129, label %34
    i32 128, label %34
  ]

17:                                               ; preds = %13, %13
  %18 = load i8*, i8** @JEDEC_ATMEL, align 8
  %19 = load %struct.tg3*, %struct.tg3** %2, align 8
  %20 = getelementptr inbounds %struct.tg3, %struct.tg3* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.tg3*, %struct.tg3** %2, align 8
  %22 = load i32, i32* @NVRAM_BUFFERED, align 4
  %23 = call i32 @tg3_flag_set(%struct.tg3* %21, i32 %22)
  br label %44

24:                                               ; preds = %13
  %25 = load i8*, i8** @JEDEC_ATMEL, align 8
  %26 = load %struct.tg3*, %struct.tg3** %2, align 8
  %27 = getelementptr inbounds %struct.tg3, %struct.tg3* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.tg3*, %struct.tg3** %2, align 8
  %29 = load i32, i32* @NVRAM_BUFFERED, align 4
  %30 = call i32 @tg3_flag_set(%struct.tg3* %28, i32 %29)
  %31 = load %struct.tg3*, %struct.tg3** %2, align 8
  %32 = load i32, i32* @FLASH, align 4
  %33 = call i32 @tg3_flag_set(%struct.tg3* %31, i32 %32)
  br label %44

34:                                               ; preds = %13, %13, %13
  %35 = load i8*, i8** @JEDEC_ST, align 8
  %36 = load %struct.tg3*, %struct.tg3** %2, align 8
  %37 = getelementptr inbounds %struct.tg3, %struct.tg3* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.tg3*, %struct.tg3** %2, align 8
  %39 = load i32, i32* @NVRAM_BUFFERED, align 4
  %40 = call i32 @tg3_flag_set(%struct.tg3* %38, i32 %39)
  %41 = load %struct.tg3*, %struct.tg3** %2, align 8
  %42 = load i32, i32* @FLASH, align 4
  %43 = call i32 @tg3_flag_set(%struct.tg3* %41, i32 %42)
  br label %44

44:                                               ; preds = %13, %34, %24, %17
  %45 = load %struct.tg3*, %struct.tg3** %2, align 8
  %46 = load i32, i32* @FLASH, align 4
  %47 = call i64 @tg3_flag(%struct.tg3* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.tg3*, %struct.tg3** %2, align 8
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @tg3_nvram_get_pagesize(%struct.tg3* %50, i32 %51)
  br label %64

53:                                               ; preds = %44
  %54 = load i32, i32* @ATMEL_AT24C512_CHIP_SIZE, align 4
  %55 = load %struct.tg3*, %struct.tg3** %2, align 8
  %56 = getelementptr inbounds %struct.tg3, %struct.tg3* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @NVRAM_CFG1_COMPAT_BYPASS, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %3, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* @NVRAM_CFG1, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @tw32(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %53, %49
  ret void
}

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @tg3_flag_set(%struct.tg3*, i32) #1

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_nvram_get_pagesize(%struct.tg3*, i32) #1

declare dso_local i32 @tw32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
