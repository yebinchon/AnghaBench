; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_intel-spi.c_intel_spi_sw_cycle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_intel-spi.c_intel_spi_sw_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_spi = type { i32, i64 }

@INTEL_SPI_FIFO_SZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SSFSTS_CTL_DBC_SHIFT = common dso_local global i32 0, align 4
@SSFSTS_CTL_DS = common dso_local global i32 0, align 4
@SSFSTS_CTL_COP_SHIFT = common dso_local global i32 0, align 4
@SSFSTS_CTL_FCERR = common dso_local global i32 0, align 4
@SSFSTS_CTL_FDONE = common dso_local global i32 0, align 4
@SSFSTS_CTL_SCGO = common dso_local global i32 0, align 4
@PREOP_OPTYPE = common dso_local global i64 0, align 8
@SSFSTS_CTL_SPOP = common dso_local global i32 0, align 4
@SSFSTS_CTL_ACS = common dso_local global i32 0, align 4
@SSFSTS_CTL = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@SSFSTS_CTL_AEL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_spi*, i32, i32, i32)* @intel_spi_sw_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_spi_sw_cycle(%struct.intel_spi* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_spi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.intel_spi* %0, %struct.intel_spi** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.intel_spi*, %struct.intel_spi** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @intel_spi_opcode_index(%struct.intel_spi* %15, i32 %16, i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %5, align 4
  br label %134

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @INTEL_SPI_FIFO_SZ, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %134

30:                                               ; preds = %23
  %31 = load %struct.intel_spi*, %struct.intel_spi** %6, align 8
  %32 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %12, align 4
  %34 = load %struct.intel_spi*, %struct.intel_spi** %6, align 8
  %35 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* @SSFSTS_CTL_DBC_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* @SSFSTS_CTL_DS, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %38, %30
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @SSFSTS_CTL_COP_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %10, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* @SSFSTS_CTL_FCERR, align 4
  %52 = load i32, i32* @SSFSTS_CTL_FDONE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* @SSFSTS_CTL_SCGO, align 4
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %96

61:                                               ; preds = %45
  %62 = load i32, i32* %9, align 4
  switch i32 %62, label %92 [
    i32 129, label %63
    i32 128, label %63
  ]

63:                                               ; preds = %61, %61
  %64 = load %struct.intel_spi*, %struct.intel_spi** %6, align 8
  %65 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @PREOP_OPTYPE, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @readw(i64 %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = and i32 %70, 255
  %72 = load i32, i32* %12, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %88

75:                                               ; preds = %63
  %76 = load i32, i32* %14, align 4
  %77 = ashr i32 %76, 8
  %78 = load i32, i32* %12, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32, i32* @SSFSTS_CTL_SPOP, align 4
  %82 = load i32, i32* %10, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %10, align 4
  br label %87

84:                                               ; preds = %75
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %134

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %74
  %89 = load i32, i32* @SSFSTS_CTL_ACS, align 4
  %90 = load i32, i32* %10, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %10, align 4
  br label %95

92:                                               ; preds = %61
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %134

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95, %45
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.intel_spi*, %struct.intel_spi** %6, align 8
  %99 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @SSFSTS_CTL, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writel(i32 %97, i64 %102)
  %104 = load %struct.intel_spi*, %struct.intel_spi** %6, align 8
  %105 = call i32 @intel_spi_wait_sw_busy(%struct.intel_spi* %104)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %96
  %109 = load i32, i32* %13, align 4
  store i32 %109, i32* %5, align 4
  br label %134

110:                                              ; preds = %96
  %111 = load %struct.intel_spi*, %struct.intel_spi** %6, align 8
  %112 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @SSFSTS_CTL, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @readl(i64 %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @SSFSTS_CTL_FCERR, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %110
  %122 = load i32, i32* @EIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %5, align 4
  br label %134

124:                                              ; preds = %110
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @SSFSTS_CTL_AEL, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* @EACCES, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %5, align 4
  br label %134

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132
  store i32 0, i32* %5, align 4
  br label %134

134:                                              ; preds = %133, %129, %121, %108, %92, %84, %27, %21
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @intel_spi_opcode_index(%struct.intel_spi*, i32, i32) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @intel_spi_wait_sw_busy(%struct.intel_spi*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
