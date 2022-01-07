; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_get_57780_nvram_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_get_57780_nvram_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i8*, i8* }

@NVRAM_CFG1 = common dso_local global i32 0, align 4
@NVRAM_CFG1_5752VENDOR_MASK = common dso_local global i32 0, align 4
@JEDEC_ATMEL = common dso_local global i8* null, align 8
@NVRAM_BUFFERED = common dso_local global i32 0, align 4
@ATMEL_AT24C512_CHIP_SIZE = common dso_local global i32 0, align 4
@NVRAM_CFG1_COMPAT_BYPASS = common dso_local global i32 0, align 4
@FLASH = common dso_local global i32 0, align 4
@TG3_NVRAM_SIZE_128KB = common dso_local global i8* null, align 8
@TG3_NVRAM_SIZE_256KB = common dso_local global i8* null, align 8
@TG3_NVRAM_SIZE_512KB = common dso_local global i8* null, align 8
@JEDEC_ST = common dso_local global i8* null, align 8
@NO_NVRAM = common dso_local global i32 0, align 4
@NO_NVRAM_ADDR_TRANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_get_57780_nvram_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_get_57780_nvram_info(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %4 = load i32, i32* @NVRAM_CFG1, align 4
  %5 = call i32 @tr32(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @NVRAM_CFG1_5752VENDOR_MASK, align 4
  %8 = and i32 %6, %7
  switch i32 %8, label %78 [
    i32 129, label %9
    i32 128, label %9
    i32 139, label %26
    i32 134, label %26
    i32 135, label %26
    i32 132, label %26
    i32 133, label %26
    i32 130, label %26
    i32 131, label %26
    i32 138, label %52
    i32 137, label %52
    i32 136, label %52
  ]

9:                                                ; preds = %1, %1
  %10 = load i8*, i8** @JEDEC_ATMEL, align 8
  %11 = load %struct.tg3*, %struct.tg3** %2, align 8
  %12 = getelementptr inbounds %struct.tg3, %struct.tg3* %11, i32 0, i32 2
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
  br label %99

26:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %27 = load i8*, i8** @JEDEC_ATMEL, align 8
  %28 = load %struct.tg3*, %struct.tg3** %2, align 8
  %29 = getelementptr inbounds %struct.tg3, %struct.tg3* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load %struct.tg3*, %struct.tg3** %2, align 8
  %31 = load i32, i32* @NVRAM_BUFFERED, align 4
  %32 = call i32 @tg3_flag_set(%struct.tg3* %30, i32 %31)
  %33 = load %struct.tg3*, %struct.tg3** %2, align 8
  %34 = load i32, i32* @FLASH, align 4
  %35 = call i32 @tg3_flag_set(%struct.tg3* %33, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @NVRAM_CFG1_5752VENDOR_MASK, align 4
  %38 = and i32 %36, %37
  switch i32 %38, label %51 [
    i32 139, label %39
    i32 134, label %39
    i32 135, label %39
    i32 132, label %43
    i32 133, label %43
    i32 130, label %47
    i32 131, label %47
  ]

39:                                               ; preds = %26, %26, %26
  %40 = load i8*, i8** @TG3_NVRAM_SIZE_128KB, align 8
  %41 = load %struct.tg3*, %struct.tg3** %2, align 8
  %42 = getelementptr inbounds %struct.tg3, %struct.tg3* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  br label %51

43:                                               ; preds = %26, %26
  %44 = load i8*, i8** @TG3_NVRAM_SIZE_256KB, align 8
  %45 = load %struct.tg3*, %struct.tg3** %2, align 8
  %46 = getelementptr inbounds %struct.tg3, %struct.tg3* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  br label %51

47:                                               ; preds = %26, %26
  %48 = load i8*, i8** @TG3_NVRAM_SIZE_512KB, align 8
  %49 = load %struct.tg3*, %struct.tg3** %2, align 8
  %50 = getelementptr inbounds %struct.tg3, %struct.tg3* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %26, %47, %43, %39
  br label %82

52:                                               ; preds = %1, %1, %1
  %53 = load i8*, i8** @JEDEC_ST, align 8
  %54 = load %struct.tg3*, %struct.tg3** %2, align 8
  %55 = getelementptr inbounds %struct.tg3, %struct.tg3* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load %struct.tg3*, %struct.tg3** %2, align 8
  %57 = load i32, i32* @NVRAM_BUFFERED, align 4
  %58 = call i32 @tg3_flag_set(%struct.tg3* %56, i32 %57)
  %59 = load %struct.tg3*, %struct.tg3** %2, align 8
  %60 = load i32, i32* @FLASH, align 4
  %61 = call i32 @tg3_flag_set(%struct.tg3* %59, i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @NVRAM_CFG1_5752VENDOR_MASK, align 4
  %64 = and i32 %62, %63
  switch i32 %64, label %77 [
    i32 138, label %65
    i32 137, label %69
    i32 136, label %73
  ]

65:                                               ; preds = %52
  %66 = load i8*, i8** @TG3_NVRAM_SIZE_128KB, align 8
  %67 = load %struct.tg3*, %struct.tg3** %2, align 8
  %68 = getelementptr inbounds %struct.tg3, %struct.tg3* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  br label %77

69:                                               ; preds = %52
  %70 = load i8*, i8** @TG3_NVRAM_SIZE_256KB, align 8
  %71 = load %struct.tg3*, %struct.tg3** %2, align 8
  %72 = getelementptr inbounds %struct.tg3, %struct.tg3* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  br label %77

73:                                               ; preds = %52
  %74 = load i8*, i8** @TG3_NVRAM_SIZE_512KB, align 8
  %75 = load %struct.tg3*, %struct.tg3** %2, align 8
  %76 = getelementptr inbounds %struct.tg3, %struct.tg3* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %52, %73, %69, %65
  br label %82

78:                                               ; preds = %1
  %79 = load %struct.tg3*, %struct.tg3** %2, align 8
  %80 = load i32, i32* @NO_NVRAM, align 4
  %81 = call i32 @tg3_flag_set(%struct.tg3* %79, i32 %80)
  br label %99

82:                                               ; preds = %77, %51
  %83 = load %struct.tg3*, %struct.tg3** %2, align 8
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @tg3_nvram_get_pagesize(%struct.tg3* %83, i32 %84)
  %86 = load %struct.tg3*, %struct.tg3** %2, align 8
  %87 = getelementptr inbounds %struct.tg3, %struct.tg3* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 264
  br i1 %89, label %90, label %99

90:                                               ; preds = %82
  %91 = load %struct.tg3*, %struct.tg3** %2, align 8
  %92 = getelementptr inbounds %struct.tg3, %struct.tg3* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 528
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load %struct.tg3*, %struct.tg3** %2, align 8
  %97 = load i32, i32* @NO_NVRAM_ADDR_TRANS, align 4
  %98 = call i32 @tg3_flag_set(%struct.tg3* %96, i32 %97)
  br label %99

99:                                               ; preds = %9, %78, %95, %90, %82
  ret void
}

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @tg3_flag_set(%struct.tg3*, i32) #1

declare dso_local i32 @tw32(i32, i32) #1

declare dso_local i32 @tg3_nvram_get_pagesize(%struct.tg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
