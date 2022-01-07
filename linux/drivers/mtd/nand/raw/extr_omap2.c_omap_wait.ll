; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.omap_nand_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@NAND_CMD_STATUS = common dso_local global i32 0, align 4
@NAND_STATUS_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @omap_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_wait(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.omap_nand_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %6 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %7 = call i32 @nand_to_mtd(%struct.nand_chip* %6)
  %8 = call %struct.omap_nand_info* @mtd_to_omap(i32 %7)
  store %struct.omap_nand_info* %8, %struct.omap_nand_info** %3, align 8
  %9 = load i64, i64* @jiffies, align 8
  store i64 %9, i64* %4, align 8
  %10 = call i64 @msecs_to_jiffies(i32 400)
  %11 = load i64, i64* %4, align 8
  %12 = add i64 %11, %10
  store i64 %12, i64* %4, align 8
  %13 = load i32, i32* @NAND_CMD_STATUS, align 4
  %14 = and i32 %13, 255
  %15 = load %struct.omap_nand_info*, %struct.omap_nand_info** %3, align 8
  %16 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @writeb(i32 %14, i32 %18)
  br label %20

20:                                               ; preds = %36, %1
  %21 = load i64, i64* @jiffies, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @time_before(i64 %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load %struct.omap_nand_info*, %struct.omap_nand_info** %3, align 8
  %27 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @readb(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @NAND_STATUS_READY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %38

36:                                               ; preds = %25
  %37 = call i32 (...) @cond_resched()
  br label %20

38:                                               ; preds = %35, %20
  %39 = load %struct.omap_nand_info*, %struct.omap_nand_info** %3, align 8
  %40 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @readb(i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.omap_nand_info* @mtd_to_omap(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @readb(i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
