; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_convert_alu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_convert_alu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alu_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@ALU_V_STATIC_VALID = common dso_local global i32 0, align 4
@ALU_V_SRC_FILTER = common dso_local global i32 0, align 4
@ALU_V_DST_FILTER = common dso_local global i32 0, align 4
@ALU_V_PRIO_AGE_CNT_S = common dso_local global i32 0, align 4
@ALU_V_PRIO_AGE_CNT_M = common dso_local global i32 0, align 4
@ALU_V_MSTP_M = common dso_local global i32 0, align 4
@ALU_V_OVERRIDE = common dso_local global i32 0, align 4
@ALU_V_USE_FID = common dso_local global i32 0, align 4
@ALU_V_PORT_MAP = common dso_local global i32 0, align 4
@ALU_V_FID_S = common dso_local global i32 0, align 4
@ALU_V_FID_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alu_struct*, i32*)* @ksz9477_convert_alu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz9477_convert_alu(%struct.alu_struct* %0, i32* %1) #0 {
  %3 = alloca %struct.alu_struct*, align 8
  %4 = alloca i32*, align 8
  store %struct.alu_struct* %0, %struct.alu_struct** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ALU_V_STATIC_VALID, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = load %struct.alu_struct*, %struct.alu_struct** %3, align 8
  %15 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ALU_V_SRC_FILTER, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load %struct.alu_struct*, %struct.alu_struct** %3, align 8
  %26 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ALU_V_DST_FILTER, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load %struct.alu_struct*, %struct.alu_struct** %3, align 8
  %37 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ALU_V_PRIO_AGE_CNT_S, align 4
  %42 = ashr i32 %40, %41
  %43 = load i32, i32* @ALU_V_PRIO_AGE_CNT_M, align 4
  %44 = and i32 %42, %43
  %45 = load %struct.alu_struct*, %struct.alu_struct** %3, align 8
  %46 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ALU_V_MSTP_M, align 4
  %51 = and i32 %49, %50
  %52 = load %struct.alu_struct*, %struct.alu_struct** %3, align 8
  %53 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ALU_V_OVERRIDE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load %struct.alu_struct*, %struct.alu_struct** %3, align 8
  %64 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ALU_V_USE_FID, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = load %struct.alu_struct*, %struct.alu_struct** %3, align 8
  %75 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ALU_V_PORT_MAP, align 4
  %80 = and i32 %78, %79
  %81 = load %struct.alu_struct*, %struct.alu_struct** %3, align 8
  %82 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 4
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ALU_V_FID_S, align 4
  %87 = ashr i32 %85, %86
  %88 = load i32, i32* @ALU_V_FID_M, align 4
  %89 = and i32 %87, %88
  %90 = load %struct.alu_struct*, %struct.alu_struct** %3, align 8
  %91 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %90, i32 0, i32 8
  store i32 %89, i32* %91, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 8
  %96 = and i32 %95, 255
  %97 = load %struct.alu_struct*, %struct.alu_struct** %3, align 8
  %98 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %97, i32 0, i32 9
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 %96, i32* %100, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 255
  %105 = load %struct.alu_struct*, %struct.alu_struct** %3, align 8
  %106 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %105, i32 0, i32 9
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  store i32 %104, i32* %108, align 4
  %109 = load i32*, i32** %4, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 3
  %111 = load i32, i32* %110, align 4
  %112 = ashr i32 %111, 24
  %113 = and i32 %112, 255
  %114 = load %struct.alu_struct*, %struct.alu_struct** %3, align 8
  %115 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %114, i32 0, i32 9
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  store i32 %113, i32* %117, align 4
  %118 = load i32*, i32** %4, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 3
  %120 = load i32, i32* %119, align 4
  %121 = ashr i32 %120, 16
  %122 = and i32 %121, 255
  %123 = load %struct.alu_struct*, %struct.alu_struct** %3, align 8
  %124 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %123, i32 0, i32 9
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 3
  store i32 %122, i32* %126, align 4
  %127 = load i32*, i32** %4, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 3
  %129 = load i32, i32* %128, align 4
  %130 = ashr i32 %129, 8
  %131 = and i32 %130, 255
  %132 = load %struct.alu_struct*, %struct.alu_struct** %3, align 8
  %133 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %132, i32 0, i32 9
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 4
  store i32 %131, i32* %135, align 4
  %136 = load i32*, i32** %4, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 3
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 255
  %140 = load %struct.alu_struct*, %struct.alu_struct** %3, align 8
  %141 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %140, i32 0, i32 9
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 5
  store i32 %139, i32* %143, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
