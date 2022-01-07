; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_init_flash_opcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_init_flash_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atl2_hw = type { i64 }

@flash_table = common dso_local global %struct.TYPE_3__* null, align 8
@REG_SPI_FLASH_OP_PROGRAM = common dso_local global i32 0, align 4
@REG_SPI_FLASH_OP_SC_ERASE = common dso_local global i32 0, align 4
@REG_SPI_FLASH_OP_CHIP_ERASE = common dso_local global i32 0, align 4
@REG_SPI_FLASH_OP_RDID = common dso_local global i32 0, align 4
@REG_SPI_FLASH_OP_WREN = common dso_local global i32 0, align 4
@REG_SPI_FLASH_OP_RDSR = common dso_local global i32 0, align 4
@REG_SPI_FLASH_OP_WRSR = common dso_local global i32 0, align 4
@REG_SPI_FLASH_OP_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl2_hw*)* @atl2_init_flash_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl2_init_flash_opcode(%struct.atl2_hw* %0) #0 {
  %2 = alloca %struct.atl2_hw*, align 8
  store %struct.atl2_hw* %0, %struct.atl2_hw** %2, align 8
  %3 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %4 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_table, align 8
  %7 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %6)
  %8 = icmp uge i64 %5, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %11 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %14 = load i32, i32* @REG_SPI_FLASH_OP_PROGRAM, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_table, align 8
  %16 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %17 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ATL2_WRITE_REGB(%struct.atl2_hw* %13, i32 %14, i32 %21)
  %23 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %24 = load i32, i32* @REG_SPI_FLASH_OP_SC_ERASE, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_table, align 8
  %26 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %27 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ATL2_WRITE_REGB(%struct.atl2_hw* %23, i32 %24, i32 %31)
  %33 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %34 = load i32, i32* @REG_SPI_FLASH_OP_CHIP_ERASE, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_table, align 8
  %36 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %37 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ATL2_WRITE_REGB(%struct.atl2_hw* %33, i32 %34, i32 %41)
  %43 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %44 = load i32, i32* @REG_SPI_FLASH_OP_RDID, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_table, align 8
  %46 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %47 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ATL2_WRITE_REGB(%struct.atl2_hw* %43, i32 %44, i32 %51)
  %53 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %54 = load i32, i32* @REG_SPI_FLASH_OP_WREN, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_table, align 8
  %56 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %57 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ATL2_WRITE_REGB(%struct.atl2_hw* %53, i32 %54, i32 %61)
  %63 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %64 = load i32, i32* @REG_SPI_FLASH_OP_RDSR, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_table, align 8
  %66 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %67 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ATL2_WRITE_REGB(%struct.atl2_hw* %63, i32 %64, i32 %71)
  %73 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %74 = load i32, i32* @REG_SPI_FLASH_OP_WRSR, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_table, align 8
  %76 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %77 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ATL2_WRITE_REGB(%struct.atl2_hw* %73, i32 %74, i32 %81)
  %83 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %84 = load i32, i32* @REG_SPI_FLASH_OP_READ, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_table, align 8
  %86 = load %struct.atl2_hw*, %struct.atl2_hw** %2, align 8
  %87 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ATL2_WRITE_REGB(%struct.atl2_hw* %83, i32 %84, i32 %91)
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @ATL2_WRITE_REGB(%struct.atl2_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
