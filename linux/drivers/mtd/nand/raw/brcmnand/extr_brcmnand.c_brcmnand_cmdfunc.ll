; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_cmdfunc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_cmdfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32 }
%struct.brcmnand_host = type { i32, i32, %struct.TYPE_2__, i64, %struct.brcmnand_controller* }
%struct.TYPE_2__ = type { i64 }
%struct.brcmnand_controller = type { i32, i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"cmd 0x%x addr 0x%llx\0A\00", align 1
@CMD_FLASH_RESET = common dso_local global i32 0, align 4
@CMD_STATUS_READ = common dso_local global i32 0, align 4
@CMD_DEVICE_ID_READ = common dso_local global i32 0, align 4
@CMD_SPARE_AREA_READ = common dso_local global i32 0, align 4
@CMD_BLOCK_ERASE = common dso_local global i32 0, align 4
@CMD_PARAMETER_READ = common dso_local global i32 0, align 4
@LL_OP_CMD = common dso_local global i32 0, align 4
@LL_OP_ADDR = common dso_local global i32 0, align 4
@CMD_PARAMETER_CHANGE_COL = common dso_local global i32 0, align 4
@FC_BYTES = common dso_local global i32 0, align 4
@FC_WORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32, i32)* @brcmnand_cmdfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmnand_cmdfunc(%struct.nand_chip* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.brcmnand_host*, align 8
  %11 = alloca %struct.brcmnand_controller*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %17 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %16)
  store %struct.mtd_info* %17, %struct.mtd_info** %9, align 8
  %18 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %19 = call %struct.brcmnand_host* @nand_get_controller_data(%struct.nand_chip* %18)
  store %struct.brcmnand_host* %19, %struct.brcmnand_host** %10, align 8
  %20 = load %struct.brcmnand_host*, %struct.brcmnand_host** %10, align 8
  %21 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %20, i32 0, i32 4
  %22 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %21, align 8
  store %struct.brcmnand_controller* %22, %struct.brcmnand_controller** %11, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %23, %26
  store i32 %27, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 133
  br i1 %29, label %36, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 134
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 130
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %30, %4
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %12, align 4
  br label %43

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %41, %38
  br label %43

43:                                               ; preds = %42, %36
  %44 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %11, align 8
  %45 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = call i32 @dev_dbg(i32 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %47, i64 %49)
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.brcmnand_host*, %struct.brcmnand_host** %10, align 8
  %53 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.brcmnand_host*, %struct.brcmnand_host** %10, align 8
  %55 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.brcmnand_host*, %struct.brcmnand_host** %10, align 8
  %58 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %6, align 4
  switch i32 %59, label %102 [
    i32 131, label %60
    i32 128, label %62
    i32 133, label %64
    i32 132, label %66
    i32 136, label %68
    i32 134, label %72
    i32 129, label %74
    i32 135, label %74
    i32 130, label %83
  ]

60:                                               ; preds = %43
  %61 = load i32, i32* @CMD_FLASH_RESET, align 4
  store i32 %61, i32* %13, align 4
  br label %102

62:                                               ; preds = %43
  %63 = load i32, i32* @CMD_STATUS_READ, align 4
  store i32 %63, i32* %13, align 4
  br label %102

64:                                               ; preds = %43
  %65 = load i32, i32* @CMD_DEVICE_ID_READ, align 4
  store i32 %65, i32* %13, align 4
  br label %102

66:                                               ; preds = %43
  %67 = load i32, i32* @CMD_SPARE_AREA_READ, align 4
  store i32 %67, i32* %13, align 4
  br label %102

68:                                               ; preds = %43
  %69 = load i32, i32* @CMD_BLOCK_ERASE, align 4
  store i32 %69, i32* %13, align 4
  %70 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %71 = call i32 @brcmnand_wp(%struct.mtd_info* %70, i32 0)
  br label %102

72:                                               ; preds = %43
  %73 = load i32, i32* @CMD_PARAMETER_READ, align 4
  store i32 %73, i32* %13, align 4
  br label %102

74:                                               ; preds = %43, %43
  %75 = load %struct.brcmnand_host*, %struct.brcmnand_host** %10, align 8
  %76 = load i32, i32* @LL_OP_CMD, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @brcmnand_low_level_op(%struct.brcmnand_host* %75, i32 %76, i32 %77, i32 0)
  %79 = load %struct.brcmnand_host*, %struct.brcmnand_host** %10, align 8
  %80 = load i32, i32* @LL_OP_ADDR, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @brcmnand_low_level_op(%struct.brcmnand_host* %79, i32 %80, i32 %81, i32 0)
  br label %102

83:                                               ; preds = %43
  %84 = load i32, i32* @CMD_PARAMETER_CHANGE_COL, align 4
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* @FC_BYTES, align 4
  %86 = sub nsw i32 %85, 1
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %12, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %12, align 4
  %90 = load %struct.brcmnand_host*, %struct.brcmnand_host** %10, align 8
  %91 = call i64 @brcmnand_get_sector_size_1k(%struct.brcmnand_host* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %83
  %94 = load %struct.brcmnand_host*, %struct.brcmnand_host** %10, align 8
  %95 = call i64 @brcmnand_get_sector_size_1k(%struct.brcmnand_host* %94)
  %96 = load %struct.brcmnand_host*, %struct.brcmnand_host** %10, align 8
  %97 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store i64 %95, i64* %98, align 8
  %99 = load %struct.brcmnand_host*, %struct.brcmnand_host** %10, align 8
  %100 = call i32 @brcmnand_set_sector_size_1k(%struct.brcmnand_host* %99, i64 0)
  br label %101

101:                                              ; preds = %93, %83
  br label %102

102:                                              ; preds = %43, %101, %74, %72, %68, %66, %64, %62, %60
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  br label %171

106:                                              ; preds = %102
  %107 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @brcmnand_set_cmd_addr(%struct.mtd_info* %107, i32 %108)
  %110 = load %struct.brcmnand_host*, %struct.brcmnand_host** %10, align 8
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @brcmnand_send_cmd(%struct.brcmnand_host* %110, i32 %111)
  %113 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %114 = call i32 @brcmnand_waitfunc(%struct.nand_chip* %113)
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @CMD_PARAMETER_READ, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %122, label %118

118:                                              ; preds = %106
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* @CMD_PARAMETER_CHANGE_COL, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %165

122:                                              ; preds = %118, %106
  %123 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %11, align 8
  %124 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to i32*
  store i32* %126, i32** %14, align 8
  %127 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %11, align 8
  %128 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @brcmnand_soc_data_bus_prepare(i32 %129, i32 1)
  store i32 0, i32* %15, align 4
  br label %131

131:                                              ; preds = %144, %122
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* @FC_WORDS, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %131
  %136 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %11, align 8
  %137 = load i32, i32* %15, align 4
  %138 = call i32 @brcmnand_read_fc(%struct.brcmnand_controller* %136, i32 %137)
  %139 = call i32 @be32_to_cpu(i32 %138)
  %140 = load i32*, i32** %14, align 8
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %139, i32* %143, align 4
  br label %144

144:                                              ; preds = %135
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %15, align 4
  br label %131

147:                                              ; preds = %131
  %148 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %11, align 8
  %149 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @brcmnand_soc_data_bus_unprepare(i32 %150, i32 1)
  %152 = load %struct.brcmnand_host*, %struct.brcmnand_host** %10, align 8
  %153 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %147
  %158 = load %struct.brcmnand_host*, %struct.brcmnand_host** %10, align 8
  %159 = load %struct.brcmnand_host*, %struct.brcmnand_host** %10, align 8
  %160 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @brcmnand_set_sector_size_1k(%struct.brcmnand_host* %158, i64 %162)
  br label %164

164:                                              ; preds = %157, %147
  br label %165

165:                                              ; preds = %164, %118
  %166 = load i32, i32* %6, align 4
  %167 = icmp eq i32 %166, 136
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %170 = call i32 @brcmnand_wp(%struct.mtd_info* %169, i32 1)
  br label %171

171:                                              ; preds = %105, %168, %165
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.brcmnand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64) #1

declare dso_local i32 @brcmnand_wp(%struct.mtd_info*, i32) #1

declare dso_local i32 @brcmnand_low_level_op(%struct.brcmnand_host*, i32, i32, i32) #1

declare dso_local i64 @brcmnand_get_sector_size_1k(%struct.brcmnand_host*) #1

declare dso_local i32 @brcmnand_set_sector_size_1k(%struct.brcmnand_host*, i64) #1

declare dso_local i32 @brcmnand_set_cmd_addr(%struct.mtd_info*, i32) #1

declare dso_local i32 @brcmnand_send_cmd(%struct.brcmnand_host*, i32) #1

declare dso_local i32 @brcmnand_waitfunc(%struct.nand_chip*) #1

declare dso_local i32 @brcmnand_soc_data_bus_prepare(i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @brcmnand_read_fc(%struct.brcmnand_controller*, i32) #1

declare dso_local i32 @brcmnand_soc_data_bus_unprepare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
