; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_set_parse_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_set_parse_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filer_table = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@RQFCR_CMP_EXACT = common dso_local global i32 0, align 4
@RQFCR_PID_PARSE = common dso_local global i32 0, align 4
@RQFCR_AND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.filer_table*)* @gfar_set_parse_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfar_set_parse_bits(i32 %0, i32 %1, %struct.filer_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.filer_table*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.filer_table* %2, %struct.filer_table** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.filer_table*, %struct.filer_table** %6, align 8
  %9 = call i32 @gfar_set_mask(i32 %7, %struct.filer_table* %8)
  %10 = load i32, i32* @RQFCR_CMP_EXACT, align 4
  %11 = load i32, i32* @RQFCR_PID_PARSE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @RQFCR_AND, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.filer_table*, %struct.filer_table** %6, align 8
  %16 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load %struct.filer_table*, %struct.filer_table** %6, align 8
  %19 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %14, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.filer_table*, %struct.filer_table** %6, align 8
  %25 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load %struct.filer_table*, %struct.filer_table** %6, align 8
  %28 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %23, i32* %31, align 4
  %32 = load %struct.filer_table*, %struct.filer_table** %6, align 8
  %33 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %33, align 8
  ret void
}

declare dso_local i32 @gfar_set_mask(i32, %struct.filer_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
