; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_set_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_set_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filer_table = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@RQFCR_AND = common dso_local global i32 0, align 4
@RQFCR_PID_MASK = common dso_local global i32 0, align 4
@RQFCR_CMP_EXACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.filer_table*)* @gfar_set_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfar_set_mask(i32 %0, %struct.filer_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.filer_table*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.filer_table* %1, %struct.filer_table** %4, align 8
  %5 = load i32, i32* @RQFCR_AND, align 4
  %6 = load i32, i32* @RQFCR_PID_MASK, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @RQFCR_CMP_EXACT, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.filer_table*, %struct.filer_table** %4, align 8
  %11 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load %struct.filer_table*, %struct.filer_table** %4, align 8
  %14 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %9, i32* %17, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.filer_table*, %struct.filer_table** %4, align 8
  %20 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load %struct.filer_table*, %struct.filer_table** %4, align 8
  %23 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %18, i32* %26, align 4
  %27 = load %struct.filer_table*, %struct.filer_table** %4, align 8
  %28 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %28, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
