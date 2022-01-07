; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_init_flash_opcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_init_flash_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atl1_hw = type { i64, i64 }

@flash_table = common dso_local global %struct.TYPE_3__* null, align 8
@REG_SPI_FLASH_OP_PROGRAM = common dso_local global i64 0, align 8
@REG_SPI_FLASH_OP_SC_ERASE = common dso_local global i64 0, align 8
@REG_SPI_FLASH_OP_CHIP_ERASE = common dso_local global i64 0, align 8
@REG_SPI_FLASH_OP_RDID = common dso_local global i64 0, align 8
@REG_SPI_FLASH_OP_WREN = common dso_local global i64 0, align 8
@REG_SPI_FLASH_OP_RDSR = common dso_local global i64 0, align 8
@REG_SPI_FLASH_OP_WRSR = common dso_local global i64 0, align 8
@REG_SPI_FLASH_OP_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1_hw*)* @atl1_init_flash_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1_init_flash_opcode(%struct.atl1_hw* %0) #0 {
  %2 = alloca %struct.atl1_hw*, align 8
  store %struct.atl1_hw* %0, %struct.atl1_hw** %2, align 8
  %3 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %4 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_table, align 8
  %7 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %6)
  %8 = icmp uge i64 %5, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %11 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_table, align 8
  %14 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %15 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %21 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @REG_SPI_FLASH_OP_PROGRAM, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @iowrite8(i32 %19, i64 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_table, align 8
  %27 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %28 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %34 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @REG_SPI_FLASH_OP_SC_ERASE, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @iowrite8(i32 %32, i64 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_table, align 8
  %40 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %41 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %47 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @REG_SPI_FLASH_OP_CHIP_ERASE, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @iowrite8(i32 %45, i64 %50)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_table, align 8
  %53 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %54 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %60 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @REG_SPI_FLASH_OP_RDID, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @iowrite8(i32 %58, i64 %63)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_table, align 8
  %66 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %67 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %73 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @REG_SPI_FLASH_OP_WREN, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @iowrite8(i32 %71, i64 %76)
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_table, align 8
  %79 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %80 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %86 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @REG_SPI_FLASH_OP_RDSR, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @iowrite8(i32 %84, i64 %89)
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_table, align 8
  %92 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %93 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %99 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @REG_SPI_FLASH_OP_WRSR, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @iowrite8(i32 %97, i64 %102)
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_table, align 8
  %105 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %106 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %112 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @REG_SPI_FLASH_OP_READ, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @iowrite8(i32 %110, i64 %115)
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @iowrite8(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
