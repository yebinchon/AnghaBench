; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_intel-spi.c_intel_spi_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_intel-spi.c_intel_spi_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32, %struct.intel_spi*, %struct.TYPE_2__ }
%struct.intel_spi = type { i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@SZ_64K = common dso_local global i64 0, align 8
@HSFSTS_CTL_FCYCLE_ERASE_64K = common dso_local global i32 0, align 4
@HSFSTS_CTL_FCYCLE_ERASE = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i64 0, align 8
@FADDR = common dso_local global i64 0, align 8
@OPTYPE_WRITE_WITH_ADDR = common dso_local global i32 0, align 4
@HSFSTS_CTL = common dso_local global i64 0, align 8
@HSFSTS_CTL_FDBC_MASK = common dso_local global i32 0, align 4
@HSFSTS_CTL_FCYCLE_MASK = common dso_local global i32 0, align 4
@HSFSTS_CTL_AEL = common dso_local global i32 0, align 4
@HSFSTS_CTL_FCERR = common dso_local global i32 0, align 4
@HSFSTS_CTL_FDONE = common dso_local global i32 0, align 4
@HSFSTS_CTL_FGO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i64)* @intel_spi_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_spi_erase(%struct.spi_nor* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_nor*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.intel_spi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %14 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %18 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %17, i32 0, i32 1
  %19 = load %struct.intel_spi*, %struct.intel_spi** %18, align 8
  store %struct.intel_spi* %19, %struct.intel_spi** %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @SZ_64K, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load %struct.intel_spi*, %struct.intel_spi** %8, align 8
  %25 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @HSFSTS_CTL_FCYCLE_ERASE_64K, align 4
  store i32 %29, i32* %11, align 4
  %30 = load i64, i64* @SZ_64K, align 8
  store i64 %30, i64* %6, align 8
  br label %34

31:                                               ; preds = %23, %2
  %32 = load i32, i32* @HSFSTS_CTL_FCYCLE_ERASE, align 4
  store i32 %32, i32* %11, align 4
  %33 = load i64, i64* @SZ_4K, align 8
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.intel_spi*, %struct.intel_spi** %8, align 8
  %36 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %62, %39
  %41 = load i64, i64* %7, align 8
  %42 = icmp ugt i64 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %40
  %44 = load i64, i64* %5, align 8
  %45 = trunc i64 %44 to i32
  %46 = load %struct.intel_spi*, %struct.intel_spi** %8, align 8
  %47 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @FADDR, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 %45, i64 %50)
  %52 = load %struct.intel_spi*, %struct.intel_spi** %8, align 8
  %53 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %54 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @OPTYPE_WRITE_WITH_ADDR, align 4
  %57 = call i32 @intel_spi_sw_cycle(%struct.intel_spi* %52, i32 %55, i32 0, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %43
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %3, align 4
  br label %154

62:                                               ; preds = %43
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %5, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = sub i64 %67, %66
  store i64 %68, i64* %7, align 8
  br label %40

69:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %154

70:                                               ; preds = %34
  %71 = load %struct.intel_spi*, %struct.intel_spi** %8, align 8
  %72 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %146, %70
  %74 = load i64, i64* %7, align 8
  %75 = icmp ugt i64 %74, 0
  br i1 %75, label %76, label %153

76:                                               ; preds = %73
  %77 = load i64, i64* %5, align 8
  %78 = trunc i64 %77 to i32
  %79 = load %struct.intel_spi*, %struct.intel_spi** %8, align 8
  %80 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @FADDR, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel(i32 %78, i64 %83)
  %85 = load %struct.intel_spi*, %struct.intel_spi** %8, align 8
  %86 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @HSFSTS_CTL, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @readl(i64 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* @HSFSTS_CTL_FDBC_MASK, align 4
  %92 = load i32, i32* @HSFSTS_CTL_FCYCLE_MASK, align 4
  %93 = or i32 %91, %92
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %9, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* @HSFSTS_CTL_AEL, align 4
  %98 = load i32, i32* @HSFSTS_CTL_FCERR, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @HSFSTS_CTL_FDONE, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* %9, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %9, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* @HSFSTS_CTL_FGO, align 4
  %108 = load i32, i32* %9, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.intel_spi*, %struct.intel_spi** %8, align 8
  %112 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @HSFSTS_CTL, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @writel(i32 %110, i64 %115)
  %117 = load %struct.intel_spi*, %struct.intel_spi** %8, align 8
  %118 = call i32 @intel_spi_wait_hw_busy(%struct.intel_spi* %117)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %76
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %3, align 4
  br label %154

123:                                              ; preds = %76
  %124 = load %struct.intel_spi*, %struct.intel_spi** %8, align 8
  %125 = getelementptr inbounds %struct.intel_spi, %struct.intel_spi* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @HSFSTS_CTL, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @readl(i64 %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @HSFSTS_CTL_FCERR, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %123
  %135 = load i32, i32* @EIO, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %3, align 4
  br label %154

137:                                              ; preds = %123
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @HSFSTS_CTL_AEL, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i32, i32* @EACCES, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %3, align 4
  br label %154

145:                                              ; preds = %137
  br label %146

146:                                              ; preds = %145
  %147 = load i64, i64* %6, align 8
  %148 = load i64, i64* %5, align 8
  %149 = add i64 %148, %147
  store i64 %149, i64* %5, align 8
  %150 = load i64, i64* %6, align 8
  %151 = load i64, i64* %7, align 8
  %152 = sub i64 %151, %150
  store i64 %152, i64* %7, align 8
  br label %73

153:                                              ; preds = %73
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %153, %142, %134, %121, %69, %60
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @intel_spi_sw_cycle(%struct.intel_spi*, i32, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @intel_spi_wait_hw_busy(%struct.intel_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
