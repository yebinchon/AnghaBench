; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_isp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_isp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5c73m3 = type { i32, i64, i64 }

@AHB_MSB_ADDR_PTR = common dso_local global i32 0, align 4
@boot_from_rom = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5c73m3*)* @s5c73m3_isp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5c73m3_isp_init(%struct.s5c73m3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5c73m3*, align 8
  %4 = alloca i32, align 4
  store %struct.s5c73m3* %0, %struct.s5c73m3** %3, align 8
  %5 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %6 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %5, i32 0, i32 2
  store i64 0, i64* %6, align 8
  %7 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %8 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %10 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @AHB_MSB_ADDR_PTR, align 4
  %13 = call i32 @s5c73m3_i2c_write(i32 %11, i32 %12, i32 13072)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %27

18:                                               ; preds = %1
  %19 = load i64, i64* @boot_from_rom, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %23 = call i32 @s5c73m3_rom_boot(%struct.s5c73m3* %22, i32 1)
  store i32 %23, i32* %2, align 4
  br label %27

24:                                               ; preds = %18
  %25 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %26 = call i32 @s5c73m3_spi_boot(%struct.s5c73m3* %25, i32 1)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %21, %16
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @s5c73m3_i2c_write(i32, i32, i32) #1

declare dso_local i32 @s5c73m3_rom_boot(%struct.s5c73m3*, i32) #1

declare dso_local i32 @s5c73m3_spi_boot(%struct.s5c73m3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
