; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_get_5761_nvram_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_get_5761_nvram_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i8*, i32 }

@NVRAM_CFG1 = common dso_local global i32 0, align 4
@PROTECTED_NVRAM = common dso_local global i32 0, align 4
@NVRAM_CFG1_5752VENDOR_MASK = common dso_local global i32 0, align 4
@JEDEC_ATMEL = common dso_local global i32 0, align 4
@NVRAM_BUFFERED = common dso_local global i32 0, align 4
@FLASH = common dso_local global i32 0, align 4
@NO_NVRAM_ADDR_TRANS = common dso_local global i32 0, align 4
@JEDEC_ST = common dso_local global i32 0, align 4
@NVRAM_ADDR_LOCKOUT = common dso_local global i32 0, align 4
@TG3_NVRAM_SIZE_2MB = common dso_local global i8* null, align 8
@TG3_NVRAM_SIZE_1MB = common dso_local global i8* null, align 8
@TG3_NVRAM_SIZE_512KB = common dso_local global i8* null, align 8
@TG3_NVRAM_SIZE_256KB = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_get_5761_nvram_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_get_5761_nvram_info(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @NVRAM_CFG1, align 4
  %6 = call i8* @tr32(i32 %5)
  %7 = ptrtoint i8* %6 to i32
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, 134217728
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.tg3*, %struct.tg3** %2, align 8
  %13 = load i32, i32* @PROTECTED_NVRAM, align 4
  %14 = call i32 @tg3_flag_set(%struct.tg3* %12, i32 %13)
  store i32 1, i32* %4, align 4
  br label %15

15:                                               ; preds = %11, %1
  %16 = load i32, i32* @NVRAM_CFG1_5752VENDOR_MASK, align 4
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  switch i32 %19, label %47 [
    i32 143, label %20
    i32 142, label %20
    i32 141, label %20
    i32 140, label %20
    i32 139, label %20
    i32 138, label %20
    i32 137, label %20
    i32 136, label %20
    i32 134, label %35
    i32 133, label %35
    i32 132, label %35
    i32 135, label %35
    i32 130, label %35
    i32 129, label %35
    i32 128, label %35
    i32 131, label %35
  ]

20:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15
  %21 = load i32, i32* @JEDEC_ATMEL, align 4
  %22 = load %struct.tg3*, %struct.tg3** %2, align 8
  %23 = getelementptr inbounds %struct.tg3, %struct.tg3* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.tg3*, %struct.tg3** %2, align 8
  %25 = load i32, i32* @NVRAM_BUFFERED, align 4
  %26 = call i32 @tg3_flag_set(%struct.tg3* %24, i32 %25)
  %27 = load %struct.tg3*, %struct.tg3** %2, align 8
  %28 = load i32, i32* @FLASH, align 4
  %29 = call i32 @tg3_flag_set(%struct.tg3* %27, i32 %28)
  %30 = load %struct.tg3*, %struct.tg3** %2, align 8
  %31 = load i32, i32* @NO_NVRAM_ADDR_TRANS, align 4
  %32 = call i32 @tg3_flag_set(%struct.tg3* %30, i32 %31)
  %33 = load %struct.tg3*, %struct.tg3** %2, align 8
  %34 = getelementptr inbounds %struct.tg3, %struct.tg3* %33, i32 0, i32 0
  store i32 256, i32* %34, align 8
  br label %47

35:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15
  %36 = load i32, i32* @JEDEC_ST, align 4
  %37 = load %struct.tg3*, %struct.tg3** %2, align 8
  %38 = getelementptr inbounds %struct.tg3, %struct.tg3* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.tg3*, %struct.tg3** %2, align 8
  %40 = load i32, i32* @NVRAM_BUFFERED, align 4
  %41 = call i32 @tg3_flag_set(%struct.tg3* %39, i32 %40)
  %42 = load %struct.tg3*, %struct.tg3** %2, align 8
  %43 = load i32, i32* @FLASH, align 4
  %44 = call i32 @tg3_flag_set(%struct.tg3* %42, i32 %43)
  %45 = load %struct.tg3*, %struct.tg3** %2, align 8
  %46 = getelementptr inbounds %struct.tg3, %struct.tg3* %45, i32 0, i32 0
  store i32 256, i32* %46, align 8
  br label %47

47:                                               ; preds = %15, %35, %20
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* @NVRAM_ADDR_LOCKOUT, align 4
  %52 = call i8* @tr32(i32 %51)
  %53 = load %struct.tg3*, %struct.tg3** %2, align 8
  %54 = getelementptr inbounds %struct.tg3, %struct.tg3* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %74

55:                                               ; preds = %47
  %56 = load i32, i32* %3, align 4
  switch i32 %56, label %73 [
    i32 140, label %57
    i32 136, label %57
    i32 135, label %57
    i32 131, label %57
    i32 141, label %61
    i32 137, label %61
    i32 132, label %61
    i32 128, label %61
    i32 142, label %65
    i32 138, label %65
    i32 133, label %65
    i32 129, label %65
    i32 143, label %69
    i32 139, label %69
    i32 134, label %69
    i32 130, label %69
  ]

57:                                               ; preds = %55, %55, %55, %55
  %58 = load i8*, i8** @TG3_NVRAM_SIZE_2MB, align 8
  %59 = load %struct.tg3*, %struct.tg3** %2, align 8
  %60 = getelementptr inbounds %struct.tg3, %struct.tg3* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  br label %73

61:                                               ; preds = %55, %55, %55, %55
  %62 = load i8*, i8** @TG3_NVRAM_SIZE_1MB, align 8
  %63 = load %struct.tg3*, %struct.tg3** %2, align 8
  %64 = getelementptr inbounds %struct.tg3, %struct.tg3* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  br label %73

65:                                               ; preds = %55, %55, %55, %55
  %66 = load i8*, i8** @TG3_NVRAM_SIZE_512KB, align 8
  %67 = load %struct.tg3*, %struct.tg3** %2, align 8
  %68 = getelementptr inbounds %struct.tg3, %struct.tg3* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  br label %73

69:                                               ; preds = %55, %55, %55, %55
  %70 = load i8*, i8** @TG3_NVRAM_SIZE_256KB, align 8
  %71 = load %struct.tg3*, %struct.tg3** %2, align 8
  %72 = getelementptr inbounds %struct.tg3, %struct.tg3* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %55, %69, %65, %61, %57
  br label %74

74:                                               ; preds = %73, %50
  ret void
}

declare dso_local i8* @tr32(i32) #1

declare dso_local i32 @tg3_flag_set(%struct.tg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
