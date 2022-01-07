; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_stm_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_stm_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32, %struct.mtd_info }
%struct.mtd_info = type { i64 }

@SR_BP2 = common dso_local global i32 0, align 4
@SR_BP1 = common dso_local global i32 0, align 4
@SR_BP0 = common dso_local global i32 0, align 4
@SNOR_F_HAS_SR_TB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SR_TB = common dso_local global i32 0, align 4
@SR_SRWD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i64, i64)* @stm_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm_lock(%struct.spi_nor* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_nor*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mtd_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %20 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %19, i32 0, i32 1
  store %struct.mtd_info* %20, %struct.mtd_info** %8, align 8
  %21 = load i32, i32* @SR_BP2, align 4
  %22 = load i32, i32* @SR_BP1, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SR_BP0, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @ffs(i32 %26)
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %12, align 4
  store i32 1, i32* %16, align 4
  %29 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %30 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SNOR_F_HAS_SR_TB, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %17, align 4
  %34 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %35 = call i32 @read_sr(%struct.spi_nor* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %163

40:                                               ; preds = %3
  %41 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @stm_is_locked_sr(%struct.spi_nor* %41, i64 %42, i64 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %163

48:                                               ; preds = %40
  %49 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @stm_is_locked_sr(%struct.spi_nor* %49, i64 0, i64 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  store i32 0, i32* %17, align 4
  br label %55

55:                                               ; preds = %54, %48
  %56 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = add nsw i64 %57, %58
  %60 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %61 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = add nsw i64 %63, %64
  %66 = sub nsw i64 %62, %65
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @stm_is_locked_sr(%struct.spi_nor* %56, i64 %59, i64 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %55
  store i32 0, i32* %16, align 4
  br label %71

71:                                               ; preds = %70, %55
  %72 = load i32, i32* %17, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %16, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %163

80:                                               ; preds = %74, %71
  %81 = load i32, i32* %16, align 4
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %18, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %86 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = sub nsw i64 %87, %88
  store i64 %89, i64* %15, align 8
  br label %94

90:                                               ; preds = %80
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = add nsw i64 %91, %92
  store i64 %93, i64* %15, align 8
  br label %94

94:                                               ; preds = %90, %84
  %95 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %96 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @ilog2(i64 %97)
  %99 = load i64, i64* %15, align 8
  %100 = call i32 @ilog2(i64 %99)
  %101 = sub nsw i32 %98, %100
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %12, align 4
  %105 = shl i32 %103, %104
  %106 = sub nsw i32 %102, %105
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %11, align 4
  %109 = xor i32 %108, -1
  %110 = and i32 %107, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %94
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %163

115:                                              ; preds = %94
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %11, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  br label %163

123:                                              ; preds = %115
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %11, align 4
  %126 = xor i32 %125, -1
  %127 = and i32 %124, %126
  %128 = load i32, i32* @SR_TB, align 4
  %129 = xor i32 %128, -1
  %130 = and i32 %127, %129
  %131 = load i32, i32* %14, align 4
  %132 = or i32 %130, %131
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* @SR_SRWD, align 4
  %134 = load i32, i32* %10, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %18, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %123
  %139 = load i32, i32* @SR_TB, align 4
  %140 = load i32, i32* %10, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %10, align 4
  br label %142

142:                                              ; preds = %138, %123
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  store i32 0, i32* %4, align 4
  br label %163

147:                                              ; preds = %142
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %11, align 4
  %150 = and i32 %148, %149
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %11, align 4
  %153 = and i32 %151, %152
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %147
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %4, align 4
  br label %163

158:                                              ; preds = %147
  %159 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @write_sr_and_check(%struct.spi_nor* %159, i32 %160, i32 %161)
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %158, %155, %146, %120, %112, %77, %47, %38
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @read_sr(%struct.spi_nor*) #1

declare dso_local i64 @stm_is_locked_sr(%struct.spi_nor*, i64, i64, i32) #1

declare dso_local i32 @ilog2(i64) #1

declare dso_local i32 @write_sr_and_check(%struct.spi_nor*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
