; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nand_chip = type { i32 }
%struct.brcmnand_host = type { %struct.brcmnand_controller* }
%struct.brcmnand_controller = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"read %llx -> %p\0A\00", align 1
@FC_BYTES = common dso_local global i32 0, align 4
@CMD_PAGE_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"uncorrectable error at 0x%llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"corrected error at 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*, i64, i32, i32*, i32*)* @brcmnand_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmnand_read(%struct.mtd_info* %0, %struct.nand_chip* %1, i64 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtd_info*, align 8
  %9 = alloca %struct.nand_chip*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.brcmnand_host*, align 8
  %15 = alloca %struct.brcmnand_controller*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %8, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %21 = call %struct.brcmnand_host* @nand_get_controller_data(%struct.nand_chip* %20)
  store %struct.brcmnand_host* %21, %struct.brcmnand_host** %14, align 8
  %22 = load %struct.brcmnand_host*, %struct.brcmnand_host** %14, align 8
  %23 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %22, i32 0, i32 0
  %24 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %23, align 8
  store %struct.brcmnand_controller* %24, %struct.brcmnand_controller** %15, align 8
  store i64 0, i64* %16, align 8
  store i32 1, i32* %18, align 4
  %25 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %15, align 8
  %26 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %10, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %28, i32* %29)
  br label %31

31:                                               ; preds = %100, %6
  %32 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %15, align 8
  %33 = call i32 @brcmnand_clear_ecc_addr(%struct.brcmnand_controller* %32)
  %34 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %15, align 8
  %35 = call i64 @has_flash_dma(%struct.brcmnand_controller* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %31
  %38 = load i32*, i32** %13, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %66, label %40

40:                                               ; preds = %37
  %41 = load i32*, i32** %12, align 8
  %42 = call i64 @flash_dma_buf_ok(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %40
  %45 = load %struct.brcmnand_host*, %struct.brcmnand_host** %14, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @FC_BYTES, align 4
  %50 = mul i32 %48, %49
  %51 = load i32, i32* @CMD_PAGE_READ, align 4
  %52 = call i32 @brcmnand_dma_trans(%struct.brcmnand_host* %45, i64 %46, i32* %47, i32 %50, i32 %51)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %44
  %56 = load i32, i32* %17, align 4
  %57 = call i64 @mtd_is_bitflip_or_eccerr(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i64, i64* %10, align 8
  store i64 %60, i64* %16, align 8
  br label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %153

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %44
  br label %83

66:                                               ; preds = %40, %37, %31
  %67 = load i32*, i32** %13, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i32*, i32** %13, align 8
  %71 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %72 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @memset(i32* %70, i32 153, i32 %73)
  br label %75

75:                                               ; preds = %69, %66
  %76 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %77 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32*, i32** %12, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = call i32 @brcmnand_read_by_pio(%struct.mtd_info* %76, %struct.nand_chip* %77, i64 %78, i32 %79, i32* %80, i32* %81, i64* %16)
  store i32 %82, i32* %17, align 4
  br label %83

83:                                               ; preds = %75, %65
  %84 = load i32, i32* %17, align 4
  %85 = call i64 @mtd_is_eccerr(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %129

87:                                               ; preds = %83
  %88 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %15, align 8
  %89 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 1792
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %15, align 8
  %94 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 1793
  br i1 %96, label %97, label %102

97:                                               ; preds = %92, %87
  %98 = load i32, i32* %18, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 0, i32* %18, align 4
  br label %31

101:                                              ; preds = %97
  br label %102

102:                                              ; preds = %101, %92
  %103 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %15, align 8
  %104 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %105, 1794
  br i1 %106, label %107, label %118

107:                                              ; preds = %102
  %108 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %109 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %110 = load i32*, i32** %12, align 8
  %111 = load i64, i64* %10, align 8
  %112 = call i32 @brcmstb_nand_verify_erased_page(%struct.mtd_info* %108, %struct.nand_chip* %109, i32* %110, i64 %111)
  store i32 %112, i32* %17, align 4
  %113 = load i32, i32* %17, align 4
  %114 = icmp sge i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = load i32, i32* %17, align 4
  store i32 %116, i32* %7, align 4
  br label %153

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %117, %102
  %119 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %15, align 8
  %120 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i64, i64* %16, align 8
  %123 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %121, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %122)
  %124 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %125 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  store i32 0, i32* %7, align 4
  br label %153

129:                                              ; preds = %83
  %130 = load i32, i32* %17, align 4
  %131 = call i64 @mtd_is_bitflip(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %152

133:                                              ; preds = %129
  %134 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %15, align 8
  %135 = call i32 @brcmnand_count_corrected(%struct.brcmnand_controller* %134)
  store i32 %135, i32* %19, align 4
  %136 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %15, align 8
  %137 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i64, i64* %16, align 8
  %140 = call i32 (i32, i8*, i64, ...) @dev_dbg(i32 %138, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %139)
  %141 = load i32, i32* %19, align 4
  %142 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %143 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = add i32 %145, %141
  store i32 %146, i32* %144, align 4
  %147 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %148 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %19, align 4
  %151 = call i32 @max(i32 %149, i32 %150)
  store i32 %151, i32* %7, align 4
  br label %153

152:                                              ; preds = %129
  store i32 0, i32* %7, align 4
  br label %153

153:                                              ; preds = %152, %133, %118, %115, %61
  %154 = load i32, i32* %7, align 4
  ret i32 %154
}

declare dso_local %struct.brcmnand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, ...) #1

declare dso_local i32 @brcmnand_clear_ecc_addr(%struct.brcmnand_controller*) #1

declare dso_local i64 @has_flash_dma(%struct.brcmnand_controller*) #1

declare dso_local i64 @flash_dma_buf_ok(i32*) #1

declare dso_local i32 @brcmnand_dma_trans(%struct.brcmnand_host*, i64, i32*, i32, i32) #1

declare dso_local i64 @mtd_is_bitflip_or_eccerr(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @brcmnand_read_by_pio(%struct.mtd_info*, %struct.nand_chip*, i64, i32, i32*, i32*, i64*) #1

declare dso_local i64 @mtd_is_eccerr(i32) #1

declare dso_local i32 @brcmstb_nand_verify_erased_page(%struct.mtd_info*, %struct.nand_chip*, i32*, i64) #1

declare dso_local i64 @mtd_is_bitflip(i32) #1

declare dso_local i32 @brcmnand_count_corrected(%struct.brcmnand_controller*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
