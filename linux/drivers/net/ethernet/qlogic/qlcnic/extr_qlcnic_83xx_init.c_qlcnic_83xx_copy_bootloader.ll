; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_copy_bootloader.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_copy_bootloader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }

@EIO = common dso_local global i32 0, align 4
@QLC_83XX_BOOTLOADER_FLASH_ADDR = common dso_local global i32 0, align 4
@QLCNIC_BOOTLOADER_ADDR = common dso_local global i32 0, align 4
@QLCNIC_BOOTLOADER_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_83xx_copy_bootloader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_copy_bootloader(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %9 = load i32, i32* @EIO, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @QLC_83XX_BOOTLOADER_FLASH_ADDR, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @QLCNIC_BOOTLOADER_ADDR, align 4
  %16 = call i8* @QLCRDX(i32 %14, i32 %15)
  store i8* %16, i8** %7, align 8
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @QLCNIC_BOOTLOADER_SIZE, align 4
  %21 = call i8* @QLCRDX(i32 %19, i32 %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 15
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 16
  %29 = and i32 %28, -16
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %26, %1
  %31 = load i32, i32* %6, align 4
  %32 = call i32* @vzalloc(i32 %31)
  store i32* %32, i32** %4, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %70

38:                                               ; preds = %30
  %39 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = udiv i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i32 @qlcnic_83xx_lockless_flash_read32(%struct.qlcnic_adapter* %39, i32 %40, i32* %41, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @vfree(i32* %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %2, align 4
  br label %70

53:                                               ; preds = %38
  %54 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sdiv i32 %57, 16
  %59 = call i32 @qlcnic_ms_mem_write128(%struct.qlcnic_adapter* %54, i8* %55, i32* %56, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @vfree(i32* %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %2, align 4
  br label %70

66:                                               ; preds = %53
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @vfree(i32* %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %66, %62, %49, %35
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i8* @QLCRDX(i32, i32) #1

declare dso_local i32* @vzalloc(i32) #1

declare dso_local i32 @qlcnic_83xx_lockless_flash_read32(%struct.qlcnic_adapter*, i32, i32*, i32) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @qlcnic_ms_mem_write128(%struct.qlcnic_adapter*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
