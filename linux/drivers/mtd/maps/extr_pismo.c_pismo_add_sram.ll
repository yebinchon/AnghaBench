; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pismo.c_pismo_add_sram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pismo.c_pismo_add_sram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pismo_data = type { i32 }
%struct.pismo_mem = type { i32 }
%struct.platdata_mtd_ram = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"mtd-ram\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pismo_data*, i32, %struct.pismo_mem*)* @pismo_add_sram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pismo_add_sram(%struct.pismo_data* %0, i32 %1, %struct.pismo_mem* %2) #0 {
  %4 = alloca %struct.pismo_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pismo_mem*, align 8
  %7 = alloca %struct.platdata_mtd_ram, align 4
  store %struct.pismo_data* %0, %struct.pismo_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pismo_mem* %2, %struct.pismo_mem** %6, align 8
  %8 = getelementptr inbounds %struct.platdata_mtd_ram, %struct.platdata_mtd_ram* %7, i32 0, i32 0
  %9 = load %struct.pismo_mem*, %struct.pismo_mem** %6, align 8
  %10 = getelementptr inbounds %struct.pismo_mem, %struct.pismo_mem* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.pismo_data*, %struct.pismo_data** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.pismo_mem*, %struct.pismo_mem** %6, align 8
  %15 = call i32 @pismo_add_device(%struct.pismo_data* %12, i32 %13, %struct.pismo_mem* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.platdata_mtd_ram* %7, i32 4)
  ret i32 %15
}

declare dso_local i32 @pismo_add_device(%struct.pismo_data*, i32, %struct.pismo_mem*, i8*, %struct.platdata_mtd_ram*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
