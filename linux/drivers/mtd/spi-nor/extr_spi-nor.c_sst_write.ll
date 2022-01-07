; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_sst_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_sst_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.spi_nor = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [20 x i8] c"to 0x%08x, len %zd\0A\00", align 1
@SPI_NOR_OPS_WRITE = common dso_local global i32 0, align 4
@SPINOR_OP_BP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"While writing 1 byte written %i bytes\0A\00", align 1
@SPINOR_OP_AAI_WP = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"While writing 2 bytes written %i bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i64, i64*, i32*)* @sst_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_write(%struct.mtd_info* %0, i32 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.spi_nor*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %16 = call %struct.spi_nor* @mtd_to_spi_nor(%struct.mtd_info* %15)
  store %struct.spi_nor* %16, %struct.spi_nor** %12, align 8
  %17 = load %struct.spi_nor*, %struct.spi_nor** %12, align 8
  %18 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %21)
  %23 = load %struct.spi_nor*, %struct.spi_nor** %12, align 8
  %24 = load i32, i32* @SPI_NOR_OPS_WRITE, align 4
  %25 = call i32 @spi_nor_lock_and_prep(%struct.spi_nor* %23, i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %6, align 4
  br label %161

30:                                               ; preds = %5
  %31 = load %struct.spi_nor*, %struct.spi_nor** %12, align 8
  %32 = call i32 @write_enable(%struct.spi_nor* %31)
  %33 = load %struct.spi_nor*, %struct.spi_nor** %12, align 8
  %34 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = srem i32 %35, 2
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %13, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %30
  %41 = load i8*, i8** @SPINOR_OP_BP, align 8
  %42 = load %struct.spi_nor*, %struct.spi_nor** %12, align 8
  %43 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.spi_nor*, %struct.spi_nor** %12, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @spi_nor_write_data(%struct.spi_nor* %44, i32 %45, i32 1, i32* %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %152

51:                                               ; preds = %40
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 1
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @WARN(i32 %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load %struct.spi_nor*, %struct.spi_nor** %12, align 8
  %58 = call i32 @spi_nor_wait_till_ready(%struct.spi_nor* %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %152

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %30
  %64 = load i64, i64* %13, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %103, %63
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %9, align 8
  %72 = sub i64 %71, 1
  %73 = icmp ult i64 %70, %72
  br i1 %73, label %74, label %106

74:                                               ; preds = %69
  %75 = load i8*, i8** @SPINOR_OP_AAI_WP, align 8
  %76 = load %struct.spi_nor*, %struct.spi_nor** %12, align 8
  %77 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.spi_nor*, %struct.spi_nor** %12, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = load i64, i64* %13, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = call i32 @spi_nor_write_data(%struct.spi_nor* %78, i32 %79, i32 2, i32* %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  br label %152

87:                                               ; preds = %74
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 2
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @WARN(i32 %90, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load %struct.spi_nor*, %struct.spi_nor** %12, align 8
  %94 = call i32 @spi_nor_wait_till_ready(%struct.spi_nor* %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %152

98:                                               ; preds = %87
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 2
  store i32 %100, i32* %8, align 4
  %101 = load %struct.spi_nor*, %struct.spi_nor** %12, align 8
  %102 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  br label %103

103:                                              ; preds = %98
  %104 = load i64, i64* %13, align 8
  %105 = add i64 %104, 2
  store i64 %105, i64* %13, align 8
  br label %69

106:                                              ; preds = %69
  %107 = load %struct.spi_nor*, %struct.spi_nor** %12, align 8
  %108 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  %109 = load %struct.spi_nor*, %struct.spi_nor** %12, align 8
  %110 = call i32 @write_disable(%struct.spi_nor* %109)
  %111 = load %struct.spi_nor*, %struct.spi_nor** %12, align 8
  %112 = call i32 @spi_nor_wait_till_ready(%struct.spi_nor* %111)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  br label %152

116:                                              ; preds = %106
  %117 = load i64, i64* %13, align 8
  %118 = load i64, i64* %9, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %151

120:                                              ; preds = %116
  %121 = load %struct.spi_nor*, %struct.spi_nor** %12, align 8
  %122 = call i32 @write_enable(%struct.spi_nor* %121)
  %123 = load i8*, i8** @SPINOR_OP_BP, align 8
  %124 = load %struct.spi_nor*, %struct.spi_nor** %12, align 8
  %125 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %124, i32 0, i32 1
  store i8* %123, i8** %125, align 8
  %126 = load %struct.spi_nor*, %struct.spi_nor** %12, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load i32*, i32** %11, align 8
  %129 = load i64, i64* %13, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = call i32 @spi_nor_write_data(%struct.spi_nor* %126, i32 %127, i32 1, i32* %130)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %120
  br label %152

135:                                              ; preds = %120
  %136 = load i32, i32* %14, align 4
  %137 = icmp ne i32 %136, 1
  %138 = zext i1 %137 to i32
  %139 = load i32, i32* %14, align 4
  %140 = call i32 @WARN(i32 %138, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %139)
  %141 = load %struct.spi_nor*, %struct.spi_nor** %12, align 8
  %142 = call i32 @spi_nor_wait_till_ready(%struct.spi_nor* %141)
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %14, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  br label %152

146:                                              ; preds = %135
  %147 = load %struct.spi_nor*, %struct.spi_nor** %12, align 8
  %148 = call i32 @write_disable(%struct.spi_nor* %147)
  %149 = load i64, i64* %13, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %13, align 8
  br label %151

151:                                              ; preds = %146, %116
  br label %152

152:                                              ; preds = %151, %145, %134, %115, %97, %86, %61, %50
  %153 = load i64, i64* %13, align 8
  %154 = load i64*, i64** %10, align 8
  %155 = load i64, i64* %154, align 8
  %156 = add i64 %155, %153
  store i64 %156, i64* %154, align 8
  %157 = load %struct.spi_nor*, %struct.spi_nor** %12, align 8
  %158 = load i32, i32* @SPI_NOR_OPS_WRITE, align 4
  %159 = call i32 @spi_nor_unlock_and_unprep(%struct.spi_nor* %157, i32 %158)
  %160 = load i32, i32* %14, align 4
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %152, %28
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local %struct.spi_nor* @mtd_to_spi_nor(%struct.mtd_info*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64) #1

declare dso_local i32 @spi_nor_lock_and_prep(%struct.spi_nor*, i32) #1

declare dso_local i32 @write_enable(%struct.spi_nor*) #1

declare dso_local i32 @spi_nor_write_data(%struct.spi_nor*, i32, i32, i32*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @spi_nor_wait_till_ready(%struct.spi_nor*) #1

declare dso_local i32 @write_disable(%struct.spi_nor*) #1

declare dso_local i32 @spi_nor_unlock_and_unprep(%struct.spi_nor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
