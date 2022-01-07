; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_init_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_init_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SPI_NOR_DUAL_READ = common dso_local global i32 0, align 4
@SPI_NOR_QUAD_READ = common dso_local global i32 0, align 4
@SPI_NOR_SKIP_SFDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_nor*)* @spi_nor_init_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_nor_init_params(%struct.spi_nor* %0) #0 {
  %2 = alloca %struct.spi_nor*, align 8
  store %struct.spi_nor* %0, %struct.spi_nor** %2, align 8
  %3 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %4 = call i32 @spi_nor_info_init_params(%struct.spi_nor* %3)
  %5 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %6 = call i32 @spi_nor_manufacturer_init_params(%struct.spi_nor* %5)
  %7 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %8 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SPI_NOR_DUAL_READ, align 4
  %13 = load i32, i32* @SPI_NOR_QUAD_READ, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %19 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SPI_NOR_SKIP_SFDP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %28 = call i32 @spi_nor_sfdp_init_params(%struct.spi_nor* %27)
  br label %29

29:                                               ; preds = %26, %17, %1
  %30 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %31 = call i32 @spi_nor_post_sfdp_fixups(%struct.spi_nor* %30)
  %32 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %33 = call i32 @spi_nor_late_init_params(%struct.spi_nor* %32)
  ret void
}

declare dso_local i32 @spi_nor_info_init_params(%struct.spi_nor*) #1

declare dso_local i32 @spi_nor_manufacturer_init_params(%struct.spi_nor*) #1

declare dso_local i32 @spi_nor_sfdp_init_params(%struct.spi_nor*) #1

declare dso_local i32 @spi_nor_post_sfdp_fixups(%struct.spi_nor*) #1

declare dso_local i32 @spi_nor_late_init_params(%struct.spi_nor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
