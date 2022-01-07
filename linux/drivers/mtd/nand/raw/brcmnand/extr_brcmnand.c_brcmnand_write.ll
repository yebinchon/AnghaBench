; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32 }
%struct.nand_chip = type { i32 }
%struct.brcmnand_host = type { %struct.TYPE_2__, %struct.brcmnand_controller* }
%struct.TYPE_2__ = type { i32 }
%struct.brcmnand_controller = type { i32, i32, i32 }

@FC_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"write %llx <- %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"unaligned buffer: %p\0A\00", align 1
@CMD_PROGRAM_PAGE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FC_WORDS = common dso_local global i32 0, align 4
@NAND_STATUS_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"program failed at %llx\0A\00", align 1
@FC_BYTES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*, i64, i32*, i32*)* @brcmnand_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmnand_write(%struct.mtd_info* %0, %struct.nand_chip* %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.brcmnand_host*, align 8
  %12 = alloca %struct.brcmnand_controller*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %19 = call %struct.brcmnand_host* @nand_get_controller_data(%struct.nand_chip* %18)
  store %struct.brcmnand_host* %19, %struct.brcmnand_host** %11, align 8
  %20 = load %struct.brcmnand_host*, %struct.brcmnand_host** %11, align 8
  %21 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %20, i32 0, i32 1
  %22 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %21, align 8
  store %struct.brcmnand_controller* %22, %struct.brcmnand_controller** %12, align 8
  %23 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %24 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @FC_SHIFT, align 4
  %27 = lshr i32 %25, %26
  store i32 %27, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %28 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %12, align 8
  %29 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %31, i32* %32)
  %34 = load i32*, i32** %9, align 8
  %35 = ptrtoint i32* %34 to i64
  %36 = and i64 %35, 3
  %37 = call i64 @unlikely(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %5
  %40 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %12, align 8
  %41 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @dev_warn(i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %43)
  %45 = load i32*, i32** %9, align 8
  %46 = ptrtoint i32* %45 to i64
  %47 = and i64 %46, -4
  %48 = inttoptr i64 %47 to i32*
  store i32* %48, i32** %9, align 8
  br label %49

49:                                               ; preds = %39, %5
  %50 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %51 = call i32 @brcmnand_wp(%struct.mtd_info* %50, i32 0)
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %62, %49
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %12, align 8
  %55 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ult i32 %53, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %12, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @oob_reg_write(%struct.brcmnand_controller* %59, i32 %60, i32 -1)
  br label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %13, align 4
  %64 = add i32 %63, 4
  store i32 %64, i32* %13, align 4
  br label %52

65:                                               ; preds = %52
  %66 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %12, align 8
  %67 = call i64 @has_flash_dma(%struct.brcmnand_controller* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %65
  %70 = load i32*, i32** %10, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %90, label %72

72:                                               ; preds = %69
  %73 = load i32*, i32** %9, align 8
  %74 = call i64 @flash_dma_buf_ok(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = load %struct.brcmnand_host*, %struct.brcmnand_host** %11, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %81 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @CMD_PROGRAM_PAGE, align 4
  %84 = call i64 @brcmnand_dma_trans(%struct.brcmnand_host* %77, i64 %78, i32* %79, i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %17, align 4
  br label %89

89:                                               ; preds = %86, %76
  br label %189

90:                                               ; preds = %72, %69, %65
  store i32 0, i32* %13, align 4
  br label %91

91:                                               ; preds = %182, %90
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %188

95:                                               ; preds = %91
  %96 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @brcmnand_set_cmd_addr(%struct.mtd_info* %96, i64 %97)
  %99 = load i32*, i32** %9, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %126

101:                                              ; preds = %95
  %102 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %12, align 8
  %103 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @brcmnand_soc_data_bus_prepare(i32 %104, i32 0)
  store i32 0, i32* %14, align 4
  br label %106

106:                                              ; preds = %116, %101
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* @FC_WORDS, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %106
  %111 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %12, align 8
  %112 = load i32, i32* %14, align 4
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @brcmnand_write_fc(%struct.brcmnand_controller* %111, i32 %112, i32 %114)
  br label %116

116:                                              ; preds = %110
  %117 = load i32, i32* %14, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %14, align 4
  %119 = load i32*, i32** %9, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %9, align 8
  br label %106

121:                                              ; preds = %106
  %122 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %12, align 8
  %123 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @brcmnand_soc_data_bus_unprepare(i32 %124, i32 0)
  br label %143

126:                                              ; preds = %95
  %127 = load i32*, i32** %10, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %142

129:                                              ; preds = %126
  store i32 0, i32* %14, align 4
  br label %130

130:                                              ; preds = %138, %129
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* @FC_WORDS, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  %135 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %12, align 8
  %136 = load i32, i32* %14, align 4
  %137 = call i32 @brcmnand_write_fc(%struct.brcmnand_controller* %135, i32 %136, i32 -1)
  br label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %14, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %14, align 4
  br label %130

141:                                              ; preds = %130
  br label %142

142:                                              ; preds = %141, %126
  br label %143

143:                                              ; preds = %142, %121
  %144 = load i32*, i32** %10, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %163

146:                                              ; preds = %143
  %147 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %12, align 8
  %148 = load i32, i32* %13, align 4
  %149 = load i32*, i32** %10, align 8
  %150 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %151 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %15, align 4
  %154 = udiv i32 %152, %153
  %155 = load %struct.brcmnand_host*, %struct.brcmnand_host** %11, align 8
  %156 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @write_oob_to_regs(%struct.brcmnand_controller* %147, i32 %148, i32* %149, i32 %154, i32 %158)
  %160 = load i32*, i32** %10, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  store i32* %162, i32** %10, align 8
  br label %163

163:                                              ; preds = %146, %143
  %164 = load %struct.brcmnand_host*, %struct.brcmnand_host** %11, align 8
  %165 = load i32, i32* @CMD_PROGRAM_PAGE, align 4
  %166 = call i32 @brcmnand_send_cmd(%struct.brcmnand_host* %164, i32 %165)
  %167 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %168 = call i32 @brcmnand_waitfunc(%struct.nand_chip* %167)
  store i32 %168, i32* %16, align 4
  %169 = load i32, i32* %16, align 4
  %170 = load i32, i32* @NAND_STATUS_FAIL, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %163
  %174 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %12, align 8
  %175 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i64, i64* %8, align 8
  %178 = call i32 @dev_info(i32 %176, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %177)
  %179 = load i32, i32* @EIO, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %17, align 4
  br label %189

181:                                              ; preds = %163
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %13, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %13, align 4
  %185 = load i64, i64* @FC_BYTES, align 8
  %186 = load i64, i64* %8, align 8
  %187 = add nsw i64 %186, %185
  store i64 %187, i64* %8, align 8
  br label %91

188:                                              ; preds = %91
  br label %189

189:                                              ; preds = %188, %173, %89
  %190 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %191 = call i32 @brcmnand_wp(%struct.mtd_info* %190, i32 1)
  %192 = load i32, i32* %17, align 4
  ret i32 %192
}

declare dso_local %struct.brcmnand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i32*) #1

declare dso_local i32 @brcmnand_wp(%struct.mtd_info*, i32) #1

declare dso_local i32 @oob_reg_write(%struct.brcmnand_controller*, i32, i32) #1

declare dso_local i64 @has_flash_dma(%struct.brcmnand_controller*) #1

declare dso_local i64 @flash_dma_buf_ok(i32*) #1

declare dso_local i64 @brcmnand_dma_trans(%struct.brcmnand_host*, i64, i32*, i32, i32) #1

declare dso_local i32 @brcmnand_set_cmd_addr(%struct.mtd_info*, i64) #1

declare dso_local i32 @brcmnand_soc_data_bus_prepare(i32, i32) #1

declare dso_local i32 @brcmnand_write_fc(%struct.brcmnand_controller*, i32, i32) #1

declare dso_local i32 @brcmnand_soc_data_bus_unprepare(i32, i32) #1

declare dso_local i32 @write_oob_to_regs(%struct.brcmnand_controller*, i32, i32*, i32, i32) #1

declare dso_local i32 @brcmnand_send_cmd(%struct.brcmnand_host*, i32) #1

declare dso_local i32 @brcmnand_waitfunc(%struct.nand_chip*) #1

declare dso_local i32 @dev_info(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
