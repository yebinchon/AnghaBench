; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_serdes_parallel_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_serdes_parallel_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@MII_TG3_MISC_SHDW = common dso_local global i32 0, align 4
@MII_TG3_DSP_ADDRESS = common dso_local global i32 0, align 4
@MII_TG3_DSP_EXP1_INT_STAT = common dso_local global i32 0, align 4
@MII_TG3_DSP_RW_PORT = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@TG3_PHYFLG_PARALLEL_DETECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_serdes_parallel_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_serdes_parallel_detect(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %8 = load %struct.tg3*, %struct.tg3** %2, align 8
  %9 = getelementptr inbounds %struct.tg3, %struct.tg3* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.tg3*, %struct.tg3** %2, align 8
  %14 = getelementptr inbounds %struct.tg3, %struct.tg3* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  br label %130

17:                                               ; preds = %1
  %18 = load %struct.tg3*, %struct.tg3** %2, align 8
  %19 = getelementptr inbounds %struct.tg3, %struct.tg3* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %82, label %22

22:                                               ; preds = %17
  %23 = load %struct.tg3*, %struct.tg3** %2, align 8
  %24 = getelementptr inbounds %struct.tg3, %struct.tg3* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AUTONEG_ENABLE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %82

29:                                               ; preds = %22
  %30 = load %struct.tg3*, %struct.tg3** %2, align 8
  %31 = load i32, i32* @MII_BMCR, align 4
  %32 = call i32 @tg3_readphy(%struct.tg3* %30, i32 %31, i32* %3)
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @BMCR_ANENABLE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %81

37:                                               ; preds = %29
  %38 = load %struct.tg3*, %struct.tg3** %2, align 8
  %39 = load i32, i32* @MII_TG3_MISC_SHDW, align 4
  %40 = call i32 @tg3_writephy(%struct.tg3* %38, i32 %39, i32 31744)
  %41 = load %struct.tg3*, %struct.tg3** %2, align 8
  %42 = load i32, i32* @MII_TG3_MISC_SHDW, align 4
  %43 = call i32 @tg3_readphy(%struct.tg3* %41, i32 %42, i32* %4)
  %44 = load %struct.tg3*, %struct.tg3** %2, align 8
  %45 = load i32, i32* @MII_TG3_DSP_ADDRESS, align 4
  %46 = load i32, i32* @MII_TG3_DSP_EXP1_INT_STAT, align 4
  %47 = call i32 @tg3_writephy(%struct.tg3* %44, i32 %45, i32 %46)
  %48 = load %struct.tg3*, %struct.tg3** %2, align 8
  %49 = load i32, i32* @MII_TG3_DSP_RW_PORT, align 4
  %50 = call i32 @tg3_readphy(%struct.tg3* %48, i32 %49, i32* %5)
  %51 = load %struct.tg3*, %struct.tg3** %2, align 8
  %52 = load i32, i32* @MII_TG3_DSP_RW_PORT, align 4
  %53 = call i32 @tg3_readphy(%struct.tg3* %51, i32 %52, i32* %5)
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, 16
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %37
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, 32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %80, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @BMCR_ANENABLE, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %3, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* @BMCR_SPEED1000, align 4
  %67 = load i32, i32* @BMCR_FULLDPLX, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %3, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %3, align 4
  %71 = load %struct.tg3*, %struct.tg3** %2, align 8
  %72 = load i32, i32* @MII_BMCR, align 4
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @tg3_writephy(%struct.tg3* %71, i32 %72, i32 %73)
  %75 = load i32, i32* @TG3_PHYFLG_PARALLEL_DETECT, align 4
  %76 = load %struct.tg3*, %struct.tg3** %2, align 8
  %77 = getelementptr inbounds %struct.tg3, %struct.tg3* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %61, %57, %37
  br label %81

81:                                               ; preds = %80, %29
  br label %130

82:                                               ; preds = %22, %17
  %83 = load %struct.tg3*, %struct.tg3** %2, align 8
  %84 = getelementptr inbounds %struct.tg3, %struct.tg3* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %129

87:                                               ; preds = %82
  %88 = load %struct.tg3*, %struct.tg3** %2, align 8
  %89 = getelementptr inbounds %struct.tg3, %struct.tg3* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @AUTONEG_ENABLE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %129

94:                                               ; preds = %87
  %95 = load %struct.tg3*, %struct.tg3** %2, align 8
  %96 = getelementptr inbounds %struct.tg3, %struct.tg3* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @TG3_PHYFLG_PARALLEL_DETECT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %129

101:                                              ; preds = %94
  %102 = load %struct.tg3*, %struct.tg3** %2, align 8
  %103 = load i32, i32* @MII_TG3_DSP_ADDRESS, align 4
  %104 = load i32, i32* @MII_TG3_DSP_EXP1_INT_STAT, align 4
  %105 = call i32 @tg3_writephy(%struct.tg3* %102, i32 %103, i32 %104)
  %106 = load %struct.tg3*, %struct.tg3** %2, align 8
  %107 = load i32, i32* @MII_TG3_DSP_RW_PORT, align 4
  %108 = call i32 @tg3_readphy(%struct.tg3* %106, i32 %107, i32* %6)
  %109 = load i32, i32* %6, align 4
  %110 = and i32 %109, 32
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %101
  %113 = load %struct.tg3*, %struct.tg3** %2, align 8
  %114 = load i32, i32* @MII_BMCR, align 4
  %115 = call i32 @tg3_readphy(%struct.tg3* %113, i32 %114, i32* %7)
  %116 = load %struct.tg3*, %struct.tg3** %2, align 8
  %117 = load i32, i32* @MII_BMCR, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @BMCR_ANENABLE, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @tg3_writephy(%struct.tg3* %116, i32 %117, i32 %120)
  %122 = load i32, i32* @TG3_PHYFLG_PARALLEL_DETECT, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.tg3*, %struct.tg3** %2, align 8
  %125 = getelementptr inbounds %struct.tg3, %struct.tg3* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %112, %101
  br label %129

129:                                              ; preds = %128, %94, %87, %82
  br label %130

130:                                              ; preds = %12, %129, %81
  ret void
}

declare dso_local i32 @tg3_readphy(%struct.tg3*, i32, i32*) #1

declare dso_local i32 @tg3_writephy(%struct.tg3*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
