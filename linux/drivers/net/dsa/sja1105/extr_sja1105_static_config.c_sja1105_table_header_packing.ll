; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_static_config.c_sja1105_table_header_packing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_static_config.c_sja1105_table_header_packing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_table_header = type { i32, i32, i32 }

@SJA1105_SIZE_TABLE_HEADER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sja1105_table_header_packing(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sja1105_table_header*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* @SJA1105_SIZE_TABLE_HEADER, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.sja1105_table_header*
  store %struct.sja1105_table_header* %11, %struct.sja1105_table_header** %8, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.sja1105_table_header*, %struct.sja1105_table_header** %8, align 8
  %14 = getelementptr inbounds %struct.sja1105_table_header, %struct.sja1105_table_header* %13, i32 0, i32 2
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @sja1105_packing(i8* %12, i32* %14, i32 31, i32 24, i64 %15, i32 %16)
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.sja1105_table_header*, %struct.sja1105_table_header** %8, align 8
  %20 = getelementptr inbounds %struct.sja1105_table_header, %struct.sja1105_table_header* %19, i32 0, i32 1
  %21 = load i64, i64* %7, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @sja1105_packing(i8* %18, i32* %20, i32 55, i32 32, i64 %21, i32 %22)
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.sja1105_table_header*, %struct.sja1105_table_header** %8, align 8
  %26 = getelementptr inbounds %struct.sja1105_table_header, %struct.sja1105_table_header* %25, i32 0, i32 0
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @sja1105_packing(i8* %24, i32* %26, i32 95, i32 64, i64 %27, i32 %28)
  %30 = load i64, i64* %7, align 8
  ret i64 %30
}

declare dso_local i32 @sja1105_packing(i8*, i32*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
