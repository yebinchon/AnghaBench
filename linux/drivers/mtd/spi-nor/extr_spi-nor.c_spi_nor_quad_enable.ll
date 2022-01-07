; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_quad_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_quad_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.spi_nor.0*)* }
%struct.spi_nor.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*)* @spi_nor_quad_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_nor_quad_enable(%struct.spi_nor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_nor*, align 8
  store %struct.spi_nor* %0, %struct.spi_nor** %3, align 8
  %4 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %5 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32 (%struct.spi_nor.0*)*, i32 (%struct.spi_nor.0*)** %6, align 8
  %8 = icmp ne i32 (%struct.spi_nor.0*)* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %12 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @spi_nor_get_protocol_width(i32 %13)
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %23, label %16

16:                                               ; preds = %10
  %17 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %18 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @spi_nor_get_protocol_width(i32 %19)
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %31

23:                                               ; preds = %16, %10
  %24 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %25 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.spi_nor.0*)*, i32 (%struct.spi_nor.0*)** %26, align 8
  %28 = load %struct.spi_nor*, %struct.spi_nor** %3, align 8
  %29 = bitcast %struct.spi_nor* %28 to %struct.spi_nor.0*
  %30 = call i32 %27(%struct.spi_nor.0* %29)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %23, %22, %9
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @spi_nor_get_protocol_width(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
