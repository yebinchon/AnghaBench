; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.spi_nor.0*, i32)* }
%struct.spi_nor.0 = type opaque

@SNOR_F_4B_OPCODES = common dso_local global i32 0, align 4
@SNOR_F_BROKEN_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spi_nor_restore(%struct.spi_nor* %0) #0 {
  %2 = alloca %struct.spi_nor*, align 8
  store %struct.spi_nor* %0, %struct.spi_nor** %2, align 8
  %3 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %4 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %29

7:                                                ; preds = %1
  %8 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %9 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SNOR_F_4B_OPCODES, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %7
  %15 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %16 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SNOR_F_BROKEN_RESET, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %23 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.spi_nor.0*, i32)*, i32 (%struct.spi_nor.0*, i32)** %24, align 8
  %26 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %27 = bitcast %struct.spi_nor* %26 to %struct.spi_nor.0*
  %28 = call i32 %25(%struct.spi_nor.0* %27, i32 0)
  br label %29

29:                                               ; preds = %21, %14, %7, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
