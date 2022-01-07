; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_static_config.c_sja1105_table_header_pack_with_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_static_config.c_sja1105_table_header_pack_with_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_table_header = type { i32 }

@SJA1105_SIZE_TABLE_HEADER = common dso_local global i32 0, align 4
@PACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sja1105_table_header_pack_with_crc(i8* %0, %struct.sja1105_table_header* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sja1105_table_header*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.sja1105_table_header* %1, %struct.sja1105_table_header** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* @SJA1105_SIZE_TABLE_HEADER, align 4
  %7 = call i32 @memset(i8* %5, i32 0, i32 %6)
  %8 = load i8*, i8** %3, align 8
  %9 = load %struct.sja1105_table_header*, %struct.sja1105_table_header** %4, align 8
  %10 = load i32, i32* @PACK, align 4
  %11 = call i32 @sja1105_table_header_packing(i8* %8, %struct.sja1105_table_header* %9, i32 %10)
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @SJA1105_SIZE_TABLE_HEADER, align 4
  %14 = sub nsw i32 %13, 4
  %15 = call i32 @sja1105_crc32(i8* %12, i32 %14)
  %16 = load %struct.sja1105_table_header*, %struct.sja1105_table_header** %4, align 8
  %17 = getelementptr inbounds %struct.sja1105_table_header, %struct.sja1105_table_header* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @SJA1105_SIZE_TABLE_HEADER, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr i8, i8* %18, i64 %20
  %22 = getelementptr i8, i8* %21, i64 -4
  %23 = load %struct.sja1105_table_header*, %struct.sja1105_table_header** %4, align 8
  %24 = getelementptr inbounds %struct.sja1105_table_header, %struct.sja1105_table_header* %23, i32 0, i32 0
  %25 = call i32 @sja1105_pack(i8* %22, i32* %24, i32 31, i32 0, i32 4)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sja1105_table_header_packing(i8*, %struct.sja1105_table_header*, i32) #1

declare dso_local i32 @sja1105_crc32(i8*, i32) #1

declare dso_local i32 @sja1105_pack(i8*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
