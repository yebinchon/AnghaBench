; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_r_sta_mac_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_r_sta_mac_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32 }
%struct.alu_struct = type { i32, i32, i32, i32, i8** }

@TABLE_STATIC_MAC = common dso_local global i32 0, align 4
@STATIC_MAC_TABLE_VALID = common dso_local global i32 0, align 4
@STATIC_MAC_TABLE_OVERRIDE = common dso_local global i32 0, align 4
@STATIC_MAC_TABLE_FWD_PORTS = common dso_local global i32 0, align 4
@STATIC_MAC_FWD_PORTS_S = common dso_local global i32 0, align 4
@STATIC_MAC_TABLE_USE_FID = common dso_local global i32 0, align 4
@STATIC_MAC_TABLE_FID = common dso_local global i32 0, align 4
@STATIC_MAC_FID_S = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksz_device*, i32, %struct.alu_struct*)* @ksz8795_r_sta_mac_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz8795_r_sta_mac_table(%struct.ksz_device* %0, i32 %1, %struct.alu_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ksz_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.alu_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ksz_device* %0, %struct.ksz_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.alu_struct* %2, %struct.alu_struct** %7, align 8
  %11 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %12 = load i32, i32* @TABLE_STATIC_MAC, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @ksz8795_r_table(%struct.ksz_device* %11, i32 %12, i32 %13, i32* %10)
  %15 = load i32, i32* %10, align 4
  %16 = ashr i32 %15, 32
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @STATIC_MAC_TABLE_VALID, align 4
  %20 = load i32, i32* @STATIC_MAC_TABLE_OVERRIDE, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %103

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = load %struct.alu_struct*, %struct.alu_struct** %7, align 8
  %29 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %28, i32 0, i32 4
  %30 = load i8**, i8*** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 5
  store i8* %27, i8** %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = ashr i32 %32, 8
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.alu_struct*, %struct.alu_struct** %7, align 8
  %37 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %36, i32 0, i32 4
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 4
  store i8* %35, i8** %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = ashr i32 %40, 16
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = load %struct.alu_struct*, %struct.alu_struct** %7, align 8
  %45 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %44, i32 0, i32 4
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 3
  store i8* %43, i8** %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = ashr i32 %48, 24
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.alu_struct*, %struct.alu_struct** %7, align 8
  %53 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %52, i32 0, i32 4
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 2
  store i8* %51, i8** %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.alu_struct*, %struct.alu_struct** %7, align 8
  %60 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %59, i32 0, i32 4
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  store i8* %58, i8** %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = ashr i32 %63, 8
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.alu_struct*, %struct.alu_struct** %7, align 8
  %68 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %67, i32 0, i32 4
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  store i8* %66, i8** %70, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @STATIC_MAC_TABLE_FWD_PORTS, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @STATIC_MAC_FWD_PORTS_S, align 4
  %75 = ashr i32 %73, %74
  %76 = load %struct.alu_struct*, %struct.alu_struct** %7, align 8
  %77 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @STATIC_MAC_TABLE_OVERRIDE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 1, i32 0
  %84 = load %struct.alu_struct*, %struct.alu_struct** %7, align 8
  %85 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %8, align 4
  %87 = ashr i32 %86, 1
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @STATIC_MAC_TABLE_USE_FID, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 1, i32 0
  %94 = load %struct.alu_struct*, %struct.alu_struct** %7, align 8
  %95 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @STATIC_MAC_TABLE_FID, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* @STATIC_MAC_FID_S, align 4
  %100 = ashr i32 %98, %99
  %101 = load %struct.alu_struct*, %struct.alu_struct** %7, align 8
  %102 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  store i32 0, i32* %4, align 4
  br label %106

103:                                              ; preds = %3
  %104 = load i32, i32* @ENXIO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %103, %24
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @ksz8795_r_table(%struct.ksz_device*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
