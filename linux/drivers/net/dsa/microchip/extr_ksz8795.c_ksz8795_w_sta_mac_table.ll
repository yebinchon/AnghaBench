; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_w_sta_mac_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_w_sta_mac_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32 }
%struct.alu_struct = type { i32*, i64, i64, i64, i64, i64 }

@STATIC_MAC_FWD_PORTS_S = common dso_local global i32 0, align 4
@STATIC_MAC_TABLE_OVERRIDE = common dso_local global i32 0, align 4
@STATIC_MAC_TABLE_USE_FID = common dso_local global i32 0, align 4
@STATIC_MAC_FID_S = common dso_local global i32 0, align 4
@STATIC_MAC_TABLE_VALID = common dso_local global i32 0, align 4
@TABLE_STATIC_MAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_device*, i32, %struct.alu_struct*)* @ksz8795_w_sta_mac_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz8795_w_sta_mac_table(%struct.ksz_device* %0, i32 %1, %struct.alu_struct* %2) #0 {
  %4 = alloca %struct.ksz_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.alu_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ksz_device* %0, %struct.ksz_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.alu_struct* %2, %struct.alu_struct** %6, align 8
  %10 = load %struct.alu_struct*, %struct.alu_struct** %6, align 8
  %11 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 24
  %16 = load %struct.alu_struct*, %struct.alu_struct** %6, align 8
  %17 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 16
  %22 = or i32 %15, %21
  %23 = load %struct.alu_struct*, %struct.alu_struct** %6, align 8
  %24 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 8
  %29 = or i32 %22, %28
  %30 = load %struct.alu_struct*, %struct.alu_struct** %6, align 8
  %31 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 5
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %29, %34
  store i32 %35, i32* %8, align 4
  %36 = load %struct.alu_struct*, %struct.alu_struct** %6, align 8
  %37 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 8
  %42 = load %struct.alu_struct*, %struct.alu_struct** %6, align 8
  %43 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %41, %46
  store i32 %47, i32* %7, align 4
  %48 = load %struct.alu_struct*, %struct.alu_struct** %6, align 8
  %49 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* @STATIC_MAC_FWD_PORTS_S, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load %struct.alu_struct*, %struct.alu_struct** %6, align 8
  %57 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %3
  %61 = load i32, i32* @STATIC_MAC_TABLE_OVERRIDE, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %60, %3
  %65 = load %struct.alu_struct*, %struct.alu_struct** %6, align 8
  %66 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load i32, i32* @STATIC_MAC_TABLE_USE_FID, align 4
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load %struct.alu_struct*, %struct.alu_struct** %6, align 8
  %74 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* @STATIC_MAC_FID_S, align 4
  %78 = shl i32 %76, %77
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %69, %64
  %82 = load %struct.alu_struct*, %struct.alu_struct** %6, align 8
  %83 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32, i32* @STATIC_MAC_TABLE_VALID, align 4
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  br label %95

90:                                               ; preds = %81
  %91 = load i32, i32* @STATIC_MAC_TABLE_OVERRIDE, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %7, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %90, %86
  %96 = load i32, i32* %7, align 4
  %97 = shl i32 %96, 32
  %98 = load i32, i32* %8, align 4
  %99 = or i32 %97, %98
  store i32 %99, i32* %9, align 4
  %100 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %101 = load i32, i32* @TABLE_STATIC_MAC, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @ksz8795_w_table(%struct.ksz_device* %100, i32 %101, i32 %102, i32 %103)
  ret void
}

declare dso_local i32 @ksz8795_w_table(%struct.ksz_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
