; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32, %struct.mtd_info }
%struct.mtd_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.flash_info = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"spi-nor:%*phN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_nor*, %struct.flash_info*)* @spi_nor_debugfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_nor_debugfs_init(%struct.spi_nor* %0, %struct.flash_info* %1) #0 {
  %3 = alloca %struct.spi_nor*, align 8
  %4 = alloca %struct.flash_info*, align 8
  %5 = alloca %struct.mtd_info*, align 8
  store %struct.spi_nor* %0, %struct.spi_nor** %3, align 8
  store %struct.flash_info* %1, %struct.flash_info** %4, align 8
  %6 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %7 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %6, i32 0, i32 1
  store %struct.mtd_info* %7, %struct.mtd_info** %5, align 8
  %8 = load %struct.flash_info*, %struct.flash_info** %4, align 8
  %9 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %12 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32 %10, i32* %13, align 4
  %14 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %15 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load %struct.flash_info*, %struct.flash_info** %4, align 8
  %19 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.flash_info*, %struct.flash_info** %4, align 8
  %22 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @devm_kasprintf(i32 %16, i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %26 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  ret void
}

declare dso_local i32 @devm_kasprintf(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
