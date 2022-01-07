; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_pci.c_common_default_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_pci.c_common_default_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }

@HASH_TABLE_SIZE = common dso_local global i32 0, align 4
@JUMBO_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.plat_stmmacenet_data*)* @common_default_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_default_data(%struct.plat_stmmacenet_data* %0) #0 {
  %2 = alloca %struct.plat_stmmacenet_data*, align 8
  store %struct.plat_stmmacenet_data* %0, %struct.plat_stmmacenet_data** %2, align 8
  %3 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %2, align 8
  %4 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %3, i32 0, i32 0
  store i32 2, i32* %4, align 8
  %5 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %2, align 8
  %6 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %5, i32 0, i32 1
  store i32 1, i32* %6, align 4
  %7 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %2, align 8
  %8 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %7, i32 0, i32 2
  store i32 1, i32* %8, align 8
  %9 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %2, align 8
  %10 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %9, i32 0, i32 10
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %2, align 8
  %14 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %13, i32 0, i32 10
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @HASH_TABLE_SIZE, align 4
  %18 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %2, align 8
  %19 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %18, i32 0, i32 9
  store i32 %17, i32* %19, align 4
  %20 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %2, align 8
  %21 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %20, i32 0, i32 3
  store i32 1, i32* %21, align 4
  %22 = load i32, i32* @JUMBO_LEN, align 4
  %23 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %2, align 8
  %24 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %23, i32 0, i32 8
  store i32 %22, i32* %24, align 8
  %25 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %2, align 8
  %26 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %25, i32 0, i32 4
  store i32 1, i32* %26, align 8
  %27 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %2, align 8
  %28 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %27, i32 0, i32 5
  store i32 1, i32* %28, align 4
  %29 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %2, align 8
  %30 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %29, i32 0, i32 7
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %2, align 8
  %35 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %34, i32 0, i32 6
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %2, align 8
  %40 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %39, i32 0, i32 6
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
