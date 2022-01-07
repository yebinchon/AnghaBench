; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_stm_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_stm_unlock.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i64, i64)* @stm_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm_unlock(%struct.spi_nor* %0, i64 %1, i64 %2) #0 {
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
  br label %165

40:                                               ; preds = %3
  %41 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @stm_is_unlocked_sr(%struct.spi_nor* %41, i64 %42, i64 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %165

48:                                               ; preds = %40
  %49 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @stm_is_unlocked_sr(%struct.spi_nor* %49, i64 0, i64 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  store i32 0, i32* %16, align 4
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
  %68 = call i64 @stm_is_unlocked_sr(%struct.spi_nor* %56, i64 %59, i64 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %55
  store i32 0, i32* %17, align 4
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
  br label %165

80:                                               ; preds = %74, %71
  %81 = load i32, i32* %16, align 4
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %18, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %86 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* %7, align 8
  %90 = add nsw i64 %88, %89
  %91 = sub nsw i64 %87, %90
  store i64 %91, i64* %15, align 8
  br label %94

92:                                               ; preds = %80
  %93 = load i64, i64* %6, align 8
  store i64 %93, i64* %15, align 8
  br label %94

94:                                               ; preds = %92, %84
  %95 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %96 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @ilog2(i64 %97)
  %99 = load i64, i64* %15, align 8
  %100 = call i32 @order_base_2(i64 %99)
  %101 = sub nsw i32 %98, %100
  store i32 %101, i32* %13, align 4
  %102 = load i64, i64* %15, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  store i32 0, i32* %14, align 4
  br label %120

105:                                              ; preds = %94
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %12, align 4
  %109 = shl i32 %107, %108
  %110 = sub nsw i32 %106, %109
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %11, align 4
  %113 = xor i32 %112, -1
  %114 = and i32 %111, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %105
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %165

119:                                              ; preds = %105
  br label %120

120:                                              ; preds = %119, %104
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %11, align 4
  %123 = xor i32 %122, -1
  %124 = and i32 %121, %123
  %125 = load i32, i32* @SR_TB, align 4
  %126 = xor i32 %125, -1
  %127 = and i32 %124, %126
  %128 = load i32, i32* %14, align 4
  %129 = or i32 %127, %128
  store i32 %129, i32* %10, align 4
  %130 = load i64, i64* %15, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %120
  %133 = load i32, i32* @SR_SRWD, align 4
  %134 = xor i32 %133, -1
  %135 = load i32, i32* %10, align 4
  %136 = and i32 %135, %134
  store i32 %136, i32* %10, align 4
  br label %137

137:                                              ; preds = %132, %120
  %138 = load i32, i32* %18, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* @SR_TB, align 4
  %142 = load i32, i32* %10, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %10, align 4
  br label %144

144:                                              ; preds = %140, %137
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store i32 0, i32* %4, align 4
  br label %165

149:                                              ; preds = %144
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %11, align 4
  %152 = and i32 %150, %151
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* %11, align 4
  %155 = and i32 %153, %154
  %156 = icmp sgt i32 %152, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %149
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %4, align 4
  br label %165

160:                                              ; preds = %149
  %161 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @write_sr_and_check(%struct.spi_nor* %161, i32 %162, i32 %163)
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %160, %157, %148, %116, %77, %47, %38
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @read_sr(%struct.spi_nor*) #1

declare dso_local i64 @stm_is_unlocked_sr(%struct.spi_nor*, i64, i64, i32) #1

declare dso_local i32 @ilog2(i64) #1

declare dso_local i32 @order_base_2(i64) #1

declare dso_local i32 @write_sr_and_check(%struct.spi_nor*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
