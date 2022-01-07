; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stfsm = type { i32, i64, i64, i32, %struct.stfsm_seq }
%struct.stfsm_seq = type { i32, i32, i32, i32 }

@FLASH_PAGESIZE_32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"writing %d bytes to 0x%08x\0A\00", align 1
@CFG_WRITE_TOGGLE_32BIT_ADDR = common dso_local global i32 0, align 4
@SPI_FAST_SEQ_CFG = common dso_local global i64 0, align 8
@CFG_S25FL_CHECK_ERROR_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stfsm*, i32*, i32, i32)* @stfsm_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stfsm_write(%struct.stfsm* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.stfsm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stfsm_seq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.stfsm* %0, %struct.stfsm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %23 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %22, i32 0, i32 4
  store %struct.stfsm_seq* %23, %struct.stfsm_seq** %9, align 8
  %24 = load i32, i32* @FLASH_PAGESIZE_32, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %17, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %18, align 8
  %28 = bitcast [4 x i32]* %15 to i32*
  store i32* %28, i32** %19, align 8
  %29 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %30 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %36 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @CFG_WRITE_TOGGLE_32BIT_ADDR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %4
  %42 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %43 = call i32 @stfsm_enter_32bit_addr(%struct.stfsm* %42, i32 1)
  br label %44

44:                                               ; preds = %41, %4
  %45 = load %struct.stfsm_seq*, %struct.stfsm_seq** %9, align 8
  %46 = getelementptr inbounds %struct.stfsm_seq, %struct.stfsm_seq* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 16
  %49 = and i32 %48, 3
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = shl i32 %51, 2
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = ptrtoint i32* %54 to i64
  %56 = and i64 %55, 3
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %44
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @memcpy(i32* %27, i32* %59, i32 %60)
  store i32* %27, i32** %20, align 8
  br label %64

62:                                               ; preds = %44
  %63 = load i32*, i32** %6, align 8
  store i32* %63, i32** %20, align 8
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* %11, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %67, %69
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %11, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %11, align 4
  %77 = and i32 %75, %76
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @TRANSFER_SIZE(i32 %78)
  %80 = load %struct.stfsm_seq*, %struct.stfsm_seq** %9, align 8
  %81 = getelementptr inbounds %struct.stfsm_seq, %struct.stfsm_seq* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %8, align 4
  %83 = ashr i32 %82, 16
  %84 = and i32 %83, 65535
  %85 = load %struct.stfsm_seq*, %struct.stfsm_seq** %9, align 8
  %86 = getelementptr inbounds %struct.stfsm_seq, %struct.stfsm_seq* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %8, align 4
  %88 = and i32 %87, 65535
  %89 = load %struct.stfsm_seq*, %struct.stfsm_seq** %9, align 8
  %90 = getelementptr inbounds %struct.stfsm_seq, %struct.stfsm_seq* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %92 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SPI_FAST_SEQ_CFG, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @writel(i32 262144, i64 %95)
  %97 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %98 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %64
  %102 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %103 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @SPI_FAST_SEQ_CFG, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @readl(i64 %106)
  br label %113

108:                                              ; preds = %64
  %109 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %110 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @udelay(i64 %111)
  br label %113

113:                                              ; preds = %108, %101
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %113
  %117 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %118 = load i32*, i32** %20, align 8
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @stfsm_write_fifo(%struct.stfsm* %117, i32* %118, i32 %119)
  %121 = load i32, i32* %13, align 4
  %122 = load i32*, i32** %20, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32* %124, i32** %20, align 8
  br label %125

125:                                              ; preds = %116, %113
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %154

128:                                              ; preds = %125
  %129 = load i32*, i32** %19, align 8
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  %132 = call i32 @memset(i32* %129, i32 255, i32 %131)
  store i32 0, i32* %16, align 4
  br label %133

133:                                              ; preds = %145, %128
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* %14, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %148

137:                                              ; preds = %133
  %138 = load i32*, i32** %20, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %20, align 8
  %140 = load i32, i32* %138, align 4
  %141 = load i32*, i32** %19, align 8
  %142 = load i32, i32* %16, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %140, i32* %144, align 4
  br label %145

145:                                              ; preds = %137
  %146 = load i32, i32* %16, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %16, align 4
  br label %133

148:                                              ; preds = %133
  %149 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 1
  %153 = call i32 @stfsm_write_fifo(%struct.stfsm* %149, i32* %150, i32 %152)
  br label %154

154:                                              ; preds = %148, %125
  %155 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %156 = load %struct.stfsm_seq*, %struct.stfsm_seq** %9, align 8
  %157 = call i32 @stfsm_load_seq(%struct.stfsm* %155, %struct.stfsm_seq* %156)
  %158 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %159 = call i32 @stfsm_wait_seq(%struct.stfsm* %158)
  %160 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %161 = call i32 @stfsm_wait_busy(%struct.stfsm* %160)
  store i32 %161, i32* %21, align 4
  %162 = load i32, i32* %21, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %154
  %165 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %166 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @CFG_S25FL_CHECK_ERROR_FLAGS, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %164
  %172 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %173 = call i32 @stfsm_s25fl_clear_status_reg(%struct.stfsm* %172)
  br label %174

174:                                              ; preds = %171, %164, %154
  %175 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %176 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @CFG_WRITE_TOGGLE_32BIT_ADDR, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %174
  %182 = load %struct.stfsm*, %struct.stfsm** %5, align 8
  %183 = call i32 @stfsm_enter_32bit_addr(%struct.stfsm* %182, i32 0)
  br label %184

184:                                              ; preds = %181, %174
  %185 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %185)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #2

declare dso_local i32 @stfsm_enter_32bit_addr(%struct.stfsm*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @TRANSFER_SIZE(i32) #2

declare dso_local i32 @writel(i32, i64) #2

declare dso_local i32 @readl(i64) #2

declare dso_local i32 @udelay(i64) #2

declare dso_local i32 @stfsm_write_fifo(%struct.stfsm*, i32*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @stfsm_load_seq(%struct.stfsm*, %struct.stfsm_seq*) #2

declare dso_local i32 @stfsm_wait_seq(%struct.stfsm*) #2

declare dso_local i32 @stfsm_wait_busy(%struct.stfsm*) #2

declare dso_local i32 @stfsm_s25fl_clear_status_reg(%struct.stfsm*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
