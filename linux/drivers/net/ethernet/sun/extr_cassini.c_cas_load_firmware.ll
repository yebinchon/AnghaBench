; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@REG_HP_INSTR_RAM_ADDR = common dso_local global i64 0, align 8
@HP_INSTR_RAM_HI_VAL = common dso_local global i32 0, align 4
@HP_INSTR_RAM_HI_MASK = common dso_local global i32 0, align 4
@REG_HP_INSTR_RAM_DATA_HI = common dso_local global i64 0, align 8
@HP_INSTR_RAM_MID_OUTARG = common dso_local global i32 0, align 4
@HP_INSTR_RAM_MID_OUTOP = common dso_local global i32 0, align 4
@HP_INSTR_RAM_MID_FNEXT = common dso_local global i32 0, align 4
@HP_INSTR_RAM_MID_FOFF = common dso_local global i32 0, align 4
@HP_INSTR_RAM_MID_SNEXT = common dso_local global i32 0, align 4
@HP_INSTR_RAM_MID_SOFF = common dso_local global i32 0, align 4
@HP_INSTR_RAM_MID_OP = common dso_local global i32 0, align 4
@REG_HP_INSTR_RAM_DATA_MID = common dso_local global i64 0, align 8
@HP_INSTR_RAM_LOW_OUTMASK = common dso_local global i32 0, align 4
@HP_INSTR_RAM_LOW_OUTSHIFT = common dso_local global i32 0, align 4
@HP_INSTR_RAM_LOW_OUTEN = common dso_local global i32 0, align 4
@HP_INSTR_RAM_LOW_OUTARG = common dso_local global i32 0, align 4
@REG_HP_INSTR_RAM_DATA_LOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*, %struct.TYPE_3__*)* @cas_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_load_firmware(%struct.cas* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.cas*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %18, %2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %5, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 12
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %11, %8
  %17 = phi i1 [ false, %8 ], [ %15, %11 ]
  br i1 %17, label %18, label %137

18:                                               ; preds = %16
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.cas*, %struct.cas** %3, align 8
  %21 = getelementptr inbounds %struct.cas, %struct.cas* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @REG_HP_INSTR_RAM_ADDR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = load i32, i32* @HP_INSTR_RAM_HI_VAL, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @CAS_BASE(i32 %26, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @HP_INSTR_RAM_HI_MASK, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @CAS_BASE(i32 %31, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.cas*, %struct.cas** %3, align 8
  %40 = getelementptr inbounds %struct.cas, %struct.cas* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @REG_HP_INSTR_RAM_DATA_HI, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  %45 = load i32, i32* @HP_INSTR_RAM_MID_OUTARG, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = ashr i32 %48, 10
  %50 = call i32 @CAS_BASE(i32 %45, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @HP_INSTR_RAM_MID_OUTOP, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @CAS_BASE(i32 %51, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* @HP_INSTR_RAM_MID_FNEXT, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @CAS_BASE(i32 %58, i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* @HP_INSTR_RAM_MID_FOFF, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @CAS_BASE(i32 %65, i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* @HP_INSTR_RAM_MID_SNEXT, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @CAS_BASE(i32 %72, i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* @HP_INSTR_RAM_MID_SOFF, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @CAS_BASE(i32 %79, i32 %82)
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* @HP_INSTR_RAM_MID_OP, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @CAS_BASE(i32 %86, i32 %89)
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.cas*, %struct.cas** %3, align 8
  %95 = getelementptr inbounds %struct.cas, %struct.cas* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @REG_HP_INSTR_RAM_DATA_MID, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @writel(i32 %93, i64 %98)
  %100 = load i32, i32* @HP_INSTR_RAM_LOW_OUTMASK, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 9
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @CAS_BASE(i32 %100, i32 %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* @HP_INSTR_RAM_LOW_OUTSHIFT, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 10
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @CAS_BASE(i32 %105, i32 %108)
  %110 = load i32, i32* %6, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* @HP_INSTR_RAM_LOW_OUTEN, align 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 11
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @CAS_BASE(i32 %112, i32 %115)
  %117 = load i32, i32* %6, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* @HP_INSTR_RAM_LOW_OUTARG, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @CAS_BASE(i32 %119, i32 %122)
  %124 = load i32, i32* %6, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.cas*, %struct.cas** %3, align 8
  %128 = getelementptr inbounds %struct.cas, %struct.cas* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @REG_HP_INSTR_RAM_DATA_LOW, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @writel(i32 %126, i64 %131)
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 1
  store %struct.TYPE_3__* %134, %struct.TYPE_3__** %4, align 8
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %8

137:                                              ; preds = %16
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @CAS_BASE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
