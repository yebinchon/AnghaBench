; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_nvram_phys_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_nvram_phys_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i64, i32 }

@NVRAM = common dso_local global i32 0, align 4
@NVRAM_BUFFERED = common dso_local global i32 0, align 4
@FLASH = common dso_local global i32 0, align 4
@NO_NVRAM_ADDR_TRANS = common dso_local global i32 0, align 4
@JEDEC_ATMEL = common dso_local global i64 0, align 8
@ATMEL_AT45DB0X1B_PAGE_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i32)* @tg3_nvram_phys_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_nvram_phys_addr(%struct.tg3* %0, i32 %1) #0 {
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.tg3*, %struct.tg3** %3, align 8
  %6 = load i32, i32* @NVRAM, align 4
  %7 = call i64 @tg3_flag(%struct.tg3* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %2
  %10 = load %struct.tg3*, %struct.tg3** %3, align 8
  %11 = load i32, i32* @NVRAM_BUFFERED, align 4
  %12 = call i64 @tg3_flag(%struct.tg3* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %9
  %15 = load %struct.tg3*, %struct.tg3** %3, align 8
  %16 = load i32, i32* @FLASH, align 4
  %17 = call i64 @tg3_flag(%struct.tg3* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  %20 = load %struct.tg3*, %struct.tg3** %3, align 8
  %21 = load i32, i32* @NO_NVRAM_ADDR_TRANS, align 4
  %22 = call i64 @tg3_flag(%struct.tg3* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %19
  %25 = load %struct.tg3*, %struct.tg3** %3, align 8
  %26 = getelementptr inbounds %struct.tg3, %struct.tg3* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @JEDEC_ATMEL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.tg3*, %struct.tg3** %3, align 8
  %33 = getelementptr inbounds %struct.tg3, %struct.tg3* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 %31, %34
  %36 = load i32, i32* @ATMEL_AT45DB0X1B_PAGE_POS, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.tg3*, %struct.tg3** %3, align 8
  %40 = getelementptr inbounds %struct.tg3, %struct.tg3* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = srem i32 %38, %41
  %43 = add nsw i32 %37, %42
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %30, %24, %19, %14, %9, %2
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
