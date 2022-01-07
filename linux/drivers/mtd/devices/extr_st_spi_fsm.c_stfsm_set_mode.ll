; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stfsm = type { i64 }

@SPI_STA_MODE_CHANGE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@SPI_MODESELECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stfsm*, i32)* @stfsm_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stfsm_set_mode(%struct.stfsm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stfsm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stfsm* %0, %struct.stfsm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 10, i32* %7, align 4
  br label %8

8:                                                ; preds = %23, %2
  %9 = load i32, i32* %7, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load %struct.stfsm*, %struct.stfsm** %4, align 8
  %14 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SPI_STA_MODE_CHANGE, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %25

23:                                               ; preds = %12
  %24 = call i32 @udelay(i32 1)
  br label %8

25:                                               ; preds = %22, %8
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %39

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.stfsm*, %struct.stfsm** %4, align 8
  %34 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SPI_MODESELECT, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %31, %28
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
