; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ad525x_dpot.c_dpot_read_spi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ad525x_dpot.c_dpot_read_spi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpot_data = type { i32, i32*, i64 }

@DPOT_ADDR_EEPROM = common dso_local global i64 0, align 8
@DPOT_ADDR_CMD = common dso_local global i64 0, align 8
@F_RDACS_WONLY = common dso_local global i32 0, align 4
@DPOT_RDAC_MASK = common dso_local global i64 0, align 8
@AD5291_ID = common dso_local global i32 0, align 4
@AD5292_ID = common dso_local global i32 0, align 4
@AD5293_ID = common dso_local global i32 0, align 4
@DPOT_AD5291_READ_RDAC = common dso_local global i32 0, align 4
@AD5270_ID = common dso_local global i32 0, align 4
@AD5271_ID = common dso_local global i32 0, align 4
@DPOT_AD5270_1_2_4_READ_RDAC = common dso_local global i32 0, align 4
@DPOT_SPI_READ_RDAC = common dso_local global i32 0, align 4
@DPOT_SPI_READ_EEPROM = common dso_local global i32 0, align 4
@F_SPI_16BIT = common dso_local global i32 0, align 4
@F_SPI_24BIT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpot_data*, i64)* @dpot_read_spi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpot_read_spi(%struct.dpot_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpot_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dpot_data* %0, %struct.dpot_data** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @DPOT_ADDR_EEPROM, align 8
  %10 = load i64, i64* @DPOT_ADDR_CMD, align 8
  %11 = or i64 %9, %10
  %12 = and i64 %8, %11
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %105, label %14

14:                                               ; preds = %2
  %15 = load %struct.dpot_data*, %struct.dpot_data** %4, align 8
  %16 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @F_RDACS_WONLY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load %struct.dpot_data*, %struct.dpot_data** %4, align 8
  %23 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @DPOT_RDAC_MASK, align 8
  %27 = and i64 %25, %26
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %3, align 4
  br label %139

30:                                               ; preds = %14
  %31 = load %struct.dpot_data*, %struct.dpot_data** %4, align 8
  %32 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @AD5291_ID, align 4
  %35 = call i64 @DPOT_UID(i32 %34)
  %36 = icmp eq i64 %33, %35
  br i1 %36, label %51, label %37

37:                                               ; preds = %30
  %38 = load %struct.dpot_data*, %struct.dpot_data** %4, align 8
  %39 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @AD5292_ID, align 4
  %42 = call i64 @DPOT_UID(i32 %41)
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = load %struct.dpot_data*, %struct.dpot_data** %4, align 8
  %46 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @AD5293_ID, align 4
  %49 = call i64 @DPOT_UID(i32 %48)
  %50 = icmp eq i64 %47, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %44, %37, %30
  %52 = load %struct.dpot_data*, %struct.dpot_data** %4, align 8
  %53 = load i32, i32* @DPOT_AD5291_READ_RDAC, align 4
  %54 = shl i32 %53, 2
  %55 = call i32 @dpot_read_r8d8(%struct.dpot_data* %52, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load %struct.dpot_data*, %struct.dpot_data** %4, align 8
  %57 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @AD5291_ID, align 4
  %60 = call i64 @DPOT_UID(i32 %59)
  %61 = icmp eq i64 %58, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load i32, i32* %7, align 4
  %64 = ashr i32 %63, 2
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %62, %51
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %139

67:                                               ; preds = %44
  %68 = load %struct.dpot_data*, %struct.dpot_data** %4, align 8
  %69 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @AD5270_ID, align 4
  %72 = call i64 @DPOT_UID(i32 %71)
  %73 = icmp eq i64 %70, %72
  br i1 %73, label %81, label %74

74:                                               ; preds = %67
  %75 = load %struct.dpot_data*, %struct.dpot_data** %4, align 8
  %76 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @AD5271_ID, align 4
  %79 = call i64 @DPOT_UID(i32 %78)
  %80 = icmp eq i64 %77, %79
  br i1 %80, label %81, label %102

81:                                               ; preds = %74, %67
  %82 = load %struct.dpot_data*, %struct.dpot_data** %4, align 8
  %83 = load i32, i32* @DPOT_AD5270_1_2_4_READ_RDAC, align 4
  %84 = shl i32 %83, 2
  %85 = call i32 @dpot_read_r8d8(%struct.dpot_data* %82, i32 %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %3, align 4
  br label %139

90:                                               ; preds = %81
  %91 = load %struct.dpot_data*, %struct.dpot_data** %4, align 8
  %92 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @AD5271_ID, align 4
  %95 = call i64 @DPOT_UID(i32 %94)
  %96 = icmp eq i64 %93, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* %7, align 4
  %99 = ashr i32 %98, 2
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %97, %90
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %3, align 4
  br label %139

102:                                              ; preds = %74
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* @DPOT_SPI_READ_RDAC, align 4
  store i32 %104, i32* %6, align 4
  br label %113

105:                                              ; preds = %2
  %106 = load i64, i64* %5, align 8
  %107 = load i64, i64* @DPOT_ADDR_EEPROM, align 8
  %108 = and i64 %106, %107
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i32, i32* @DPOT_SPI_READ_EEPROM, align 4
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %110, %105
  br label %113

113:                                              ; preds = %112, %103
  %114 = load %struct.dpot_data*, %struct.dpot_data** %4, align 8
  %115 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @F_SPI_16BIT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  %121 = load %struct.dpot_data*, %struct.dpot_data** %4, align 8
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @dpot_read_r8d8(%struct.dpot_data* %121, i32 %122)
  store i32 %123, i32* %3, align 4
  br label %139

124:                                              ; preds = %113
  %125 = load %struct.dpot_data*, %struct.dpot_data** %4, align 8
  %126 = getelementptr inbounds %struct.dpot_data, %struct.dpot_data* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @F_SPI_24BIT, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load %struct.dpot_data*, %struct.dpot_data** %4, align 8
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @dpot_read_r8d16(%struct.dpot_data* %132, i32 %133)
  store i32 %134, i32* %3, align 4
  br label %139

135:                                              ; preds = %124
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* @EFAULT, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %136, %131, %120, %100, %88, %65, %21
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i64 @DPOT_UID(i32) #1

declare dso_local i32 @dpot_read_r8d8(%struct.dpot_data*, i32) #1

declare dso_local i32 @dpot_read_r8d16(%struct.dpot_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
