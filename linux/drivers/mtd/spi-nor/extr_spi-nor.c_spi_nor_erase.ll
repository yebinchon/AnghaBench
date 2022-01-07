; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32 }
%struct.erase_info = type { i32, i32 }
%struct.spi_nor = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"at 0x%llx, len %lld\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SPI_NOR_OPS_ERASE = common dso_local global i32 0, align 4
@SNOR_F_NO_OP_CHIP_ERASE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CHIP_ERASE_2MB_READY_WAIT_JIFFIES = common dso_local global i64 0, align 8
@SZ_2M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.erase_info*)* @spi_nor_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_nor_erase(%struct.mtd_info* %0, %struct.erase_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.erase_info*, align 8
  %6 = alloca %struct.spi_nor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.erase_info* %1, %struct.erase_info** %5, align 8
  %12 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %13 = call %struct.spi_nor* @mtd_to_spi_nor(%struct.mtd_info* %12)
  store %struct.spi_nor* %13, %struct.spi_nor** %6, align 8
  %14 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %15 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %18 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %22 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %24)
  %26 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %27 = call i64 @spi_nor_has_uniform_erase(%struct.spi_nor* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %2
  %30 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %31 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %34 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @div_u64_rem(i32 %32, i32 %35, i64* %9)
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %150

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %2
  %44 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %45 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %7, align 4
  %47 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %48 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  %50 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %51 = load i32, i32* @SPI_NOR_OPS_ERASE, align 4
  %52 = call i32 @spi_nor_lock_and_prep(%struct.spi_nor* %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %3, align 4
  br label %150

57:                                               ; preds = %43
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %60 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %97

63:                                               ; preds = %57
  %64 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %65 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SNOR_F_NO_OP_CHIP_ERASE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %97, label %70

70:                                               ; preds = %63
  %71 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %72 = call i32 @write_enable(%struct.spi_nor* %71)
  %73 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %74 = call i64 @erase_chip(%struct.spi_nor* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %10, align 4
  br label %145

79:                                               ; preds = %70
  %80 = load i64, i64* @CHIP_ERASE_2MB_READY_WAIT_JIFFIES, align 8
  %81 = load i64, i64* @CHIP_ERASE_2MB_READY_WAIT_JIFFIES, align 8
  %82 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %83 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @SZ_2M, align 4
  %86 = sdiv i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = mul i64 %81, %87
  %89 = call i64 @max(i64 %80, i64 %88)
  store i64 %89, i64* %11, align 8
  %90 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %91 = load i64, i64* %11, align 8
  %92 = call i32 @spi_nor_wait_till_ready_with_timeout(%struct.spi_nor* %90, i64 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %79
  br label %145

96:                                               ; preds = %79
  br label %142

97:                                               ; preds = %63, %57
  %98 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %99 = call i64 @spi_nor_has_uniform_erase(%struct.spi_nor* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %132

101:                                              ; preds = %97
  br label %102

102:                                              ; preds = %130, %101
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %131

105:                                              ; preds = %102
  %106 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %107 = call i32 @write_enable(%struct.spi_nor* %106)
  %108 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @spi_nor_erase_sector(%struct.spi_nor* %108, i32 %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %145

114:                                              ; preds = %105
  %115 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %116 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %7, align 4
  %120 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %121 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %8, align 4
  %124 = sub nsw i32 %123, %122
  store i32 %124, i32* %8, align 4
  %125 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %126 = call i32 @spi_nor_wait_till_ready(%struct.spi_nor* %125)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %114
  br label %145

130:                                              ; preds = %114
  br label %102

131:                                              ; preds = %102
  br label %141

132:                                              ; preds = %97
  %133 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @spi_nor_erase_multi_sectors(%struct.spi_nor* %133, i32 %134, i32 %135)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  br label %145

140:                                              ; preds = %132
  br label %141

141:                                              ; preds = %140, %131
  br label %142

142:                                              ; preds = %141, %96
  %143 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %144 = call i32 @write_disable(%struct.spi_nor* %143)
  br label %145

145:                                              ; preds = %142, %139, %129, %113, %95, %76
  %146 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %147 = load i32, i32* @SPI_NOR_OPS_ERASE, align 4
  %148 = call i32 @spi_nor_unlock_and_unprep(%struct.spi_nor* %146, i32 %147)
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %145, %55, %39
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local %struct.spi_nor* @mtd_to_spi_nor(%struct.mtd_info*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64) #1

declare dso_local i64 @spi_nor_has_uniform_erase(%struct.spi_nor*) #1

declare dso_local i32 @div_u64_rem(i32, i32, i64*) #1

declare dso_local i32 @spi_nor_lock_and_prep(%struct.spi_nor*, i32) #1

declare dso_local i32 @write_enable(%struct.spi_nor*) #1

declare dso_local i64 @erase_chip(%struct.spi_nor*) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @spi_nor_wait_till_ready_with_timeout(%struct.spi_nor*, i64) #1

declare dso_local i32 @spi_nor_erase_sector(%struct.spi_nor*, i32) #1

declare dso_local i32 @spi_nor_wait_till_ready(%struct.spi_nor*) #1

declare dso_local i32 @spi_nor_erase_multi_sectors(%struct.spi_nor*, i32, i32) #1

declare dso_local i32 @write_disable(%struct.spi_nor*) #1

declare dso_local i32 @spi_nor_unlock_and_unprep(%struct.spi_nor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
