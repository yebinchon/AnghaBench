; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_free_dma_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_free_dma_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmi_nand_data = type { i32*, i32*, i32, i32, %struct.bch_geometry, %struct.device* }
%struct.bch_geometry = type { i32 }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpmi_nand_data*)* @gpmi_free_dma_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpmi_free_dma_buffer(%struct.gpmi_nand_data* %0) #0 {
  %2 = alloca %struct.gpmi_nand_data*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.bch_geometry*, align 8
  store %struct.gpmi_nand_data* %0, %struct.gpmi_nand_data** %2, align 8
  %5 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %2, align 8
  %6 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %5, i32 0, i32 5
  %7 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %2, align 8
  %9 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %8, i32 0, i32 4
  store %struct.bch_geometry* %9, %struct.bch_geometry** %4, align 8
  %10 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %2, align 8
  %11 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %1
  %15 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %2, align 8
  %16 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @virt_addr_valid(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %23 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %2, align 8
  %26 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %2, align 8
  %29 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dma_free_coherent(%struct.device* %21, i32 %24, i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %20, %14, %1
  %33 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %2, align 8
  %34 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @kfree(i32* %35)
  %37 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %2, align 8
  %38 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @kfree(i32* %39)
  %41 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %2, align 8
  %42 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %2, align 8
  %44 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  ret void
}

declare dso_local i64 @virt_addr_valid(i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
