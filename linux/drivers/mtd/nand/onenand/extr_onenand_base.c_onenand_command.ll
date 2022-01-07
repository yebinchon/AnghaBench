; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_base.c_onenand_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_base.c_onenand_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.onenand_chip* }
%struct.onenand_chip = type { i32, i32, i32, i32, i64, i32 (i32, i64)* }

@ONENAND_REG_START_ADDRESS2 = common dso_local global i64 0, align 8
@ONENAND_REG_START_ADDRESS1 = common dso_local global i64 0, align 8
@ONENAND_CMD_PROG = common dso_local global i32 0, align 4
@ONENAND_CMD_2X_PROG = common dso_local global i32 0, align 4
@ONENAND_REG_START_ADDRESS8 = common dso_local global i64 0, align 8
@ONENAND_REG_START_BUFFER = common dso_local global i64 0, align 8
@ONENAND_INT_CLEAR = common dso_local global i32 0, align 4
@ONENAND_REG_INTERRUPT = common dso_local global i64 0, align 8
@ONENAND_REG_COMMAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i32, i64)* @onenand_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onenand_command(%struct.mtd_info* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.onenand_chip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %17 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 0
  %19 = load %struct.onenand_chip*, %struct.onenand_chip** %18, align 8
  store %struct.onenand_chip* %19, %struct.onenand_chip** %10, align 8
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %38 [
    i32 129, label %21
    i32 135, label %21
    i32 134, label %21
    i32 128, label %21
    i32 141, label %22
    i32 137, label %28
    i32 133, label %28
    i32 136, label %28
    i32 138, label %28
    i32 132, label %28
    i32 140, label %32
  ]

21:                                               ; preds = %4, %4, %4, %4
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  br label %86

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %25 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %23, %26
  store i32 %27, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  br label %86

28:                                               ; preds = %4, %4, %4, %4, %4
  %29 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @onenand_block(%struct.onenand_chip* %29, i32 %30)
  store i32 %31, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  br label %86

32:                                               ; preds = %4
  store i32 131, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %35 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %33, %36
  store i32 %37, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %86

38:                                               ; preds = %4
  %39 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @onenand_block(%struct.onenand_chip* %39, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %43 = call i32 @FLEXONENAND(%struct.onenand_chip* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @onenand_addr(%struct.onenand_chip* %47, i32 %48)
  %50 = sub nsw i32 %46, %49
  %51 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %52 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %50, %53
  store i32 %54, i32* %13, align 4
  br label %61

55:                                               ; preds = %38
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %58 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %56, %59
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %55, %45
  %62 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %63 = call i64 @ONENAND_IS_2PLANE(%struct.onenand_chip* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = load i32, i32* %12, align 4
  %67 = and i32 %66, -2
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %70 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %74, %65
  %78 = load i32, i32* %13, align 4
  %79 = ashr i32 %78, 1
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %77, %61
  %81 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %82 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %13, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %80, %32, %28, %22, %21
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, 138
  br i1 %88, label %89, label %117

89:                                               ; preds = %86
  %90 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @onenand_bufferram_address(%struct.onenand_chip* %90, i32 %91)
  store i32 %92, i32* %11, align 4
  %93 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %94 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %93, i32 0, i32 5
  %95 = load i32 (i32, i64)*, i32 (i32, i64)** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %98 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @ONENAND_REG_START_ADDRESS2, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 %95(i32 %96, i64 %101)
  %103 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %104 = call i64 @ONENAND_IS_2PLANE(%struct.onenand_chip* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %89
  %107 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %108 = call i64 @ONENAND_IS_4KB_PAGE(%struct.onenand_chip* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106, %89
  %111 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %112 = call i32 @ONENAND_SET_BUFFERRAM0(%struct.onenand_chip* %111)
  br label %116

113:                                              ; preds = %106
  %114 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %115 = call i32 @ONENAND_SET_NEXT_BUFFERRAM(%struct.onenand_chip* %114)
  br label %116

116:                                              ; preds = %113, %110
  store i32 0, i32* %5, align 4
  br label %225

117:                                              ; preds = %86
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, -1
  br i1 %119, label %120, label %147

120:                                              ; preds = %117
  %121 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @onenand_block_address(%struct.onenand_chip* %121, i32 %122)
  store i32 %123, i32* %11, align 4
  %124 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %125 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %124, i32 0, i32 5
  %126 = load i32 (i32, i64)*, i32 (i32, i64)** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %129 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @ONENAND_REG_START_ADDRESS1, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 %126(i32 %127, i64 %132)
  %134 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @onenand_bufferram_address(%struct.onenand_chip* %134, i32 %135)
  store i32 %136, i32* %11, align 4
  %137 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %138 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %137, i32 0, i32 5
  %139 = load i32 (i32, i64)*, i32 (i32, i64)** %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %142 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @ONENAND_REG_START_ADDRESS2, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 %139(i32 %140, i64 %145)
  br label %147

147:                                              ; preds = %120, %117
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, -1
  br i1 %149, label %150, label %204

150:                                              ; preds = %147
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %151 = load i32, i32* %7, align 4
  switch i32 %151, label %163 [
    i32 139, label %152
    i32 131, label %152
    i32 130, label %152
  ]

152:                                              ; preds = %150, %150, %150
  %153 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %154 = call i64 @ONENAND_IS_4KB_PAGE(%struct.onenand_chip* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %158 = call i32 @ONENAND_SET_BUFFERRAM0(%struct.onenand_chip* %157)
  store i32 %158, i32* %16, align 4
  br label %162

159:                                              ; preds = %152
  %160 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %161 = call i32 @ONENAND_SET_NEXT_BUFFERRAM(%struct.onenand_chip* %160)
  store i32 %161, i32* %16, align 4
  br label %162

162:                                              ; preds = %159, %156
  br label %176

163:                                              ; preds = %150
  %164 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %165 = call i64 @ONENAND_IS_2PLANE(%struct.onenand_chip* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %163
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* @ONENAND_CMD_PROG, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = load i32, i32* @ONENAND_CMD_2X_PROG, align 4
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %171, %167, %163
  %174 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %175 = call i32 @ONENAND_CURRENT_BUFFERRAM(%struct.onenand_chip* %174)
  store i32 %175, i32* %16, align 4
  br label %176

176:                                              ; preds = %173, %162
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* %14, align 4
  %179 = call i32 @onenand_page_address(i32 %177, i32 %178)
  store i32 %179, i32* %11, align 4
  %180 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %181 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %180, i32 0, i32 5
  %182 = load i32 (i32, i64)*, i32 (i32, i64)** %181, align 8
  %183 = load i32, i32* %11, align 4
  %184 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %185 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %184, i32 0, i32 4
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @ONENAND_REG_START_ADDRESS8, align 8
  %188 = add nsw i64 %186, %187
  %189 = call i32 %182(i32 %183, i64 %188)
  %190 = load i32, i32* %16, align 4
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* %15, align 4
  %193 = call i32 @onenand_buffer_address(i32 %190, i32 %191, i32 %192)
  store i32 %193, i32* %11, align 4
  %194 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %195 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %194, i32 0, i32 5
  %196 = load i32 (i32, i64)*, i32 (i32, i64)** %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %199 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %198, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @ONENAND_REG_START_BUFFER, align 8
  %202 = add nsw i64 %200, %201
  %203 = call i32 %196(i32 %197, i64 %202)
  br label %204

204:                                              ; preds = %176, %147
  %205 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %206 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %205, i32 0, i32 5
  %207 = load i32 (i32, i64)*, i32 (i32, i64)** %206, align 8
  %208 = load i32, i32* @ONENAND_INT_CLEAR, align 4
  %209 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %210 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %209, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @ONENAND_REG_INTERRUPT, align 8
  %213 = add nsw i64 %211, %212
  %214 = call i32 %207(i32 %208, i64 %213)
  %215 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %216 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %215, i32 0, i32 5
  %217 = load i32 (i32, i64)*, i32 (i32, i64)** %216, align 8
  %218 = load i32, i32* %7, align 4
  %219 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %220 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @ONENAND_REG_COMMAND, align 8
  %223 = add nsw i64 %221, %222
  %224 = call i32 %217(i32 %218, i64 %223)
  store i32 0, i32* %5, align 4
  br label %225

225:                                              ; preds = %204, %116
  %226 = load i32, i32* %5, align 4
  ret i32 %226
}

declare dso_local i32 @onenand_block(%struct.onenand_chip*, i32) #1

declare dso_local i32 @FLEXONENAND(%struct.onenand_chip*) #1

declare dso_local i32 @onenand_addr(%struct.onenand_chip*, i32) #1

declare dso_local i64 @ONENAND_IS_2PLANE(%struct.onenand_chip*) #1

declare dso_local i32 @onenand_bufferram_address(%struct.onenand_chip*, i32) #1

declare dso_local i64 @ONENAND_IS_4KB_PAGE(%struct.onenand_chip*) #1

declare dso_local i32 @ONENAND_SET_BUFFERRAM0(%struct.onenand_chip*) #1

declare dso_local i32 @ONENAND_SET_NEXT_BUFFERRAM(%struct.onenand_chip*) #1

declare dso_local i32 @onenand_block_address(%struct.onenand_chip*, i32) #1

declare dso_local i32 @ONENAND_CURRENT_BUFFERRAM(%struct.onenand_chip*) #1

declare dso_local i32 @onenand_page_address(i32, i32) #1

declare dso_local i32 @onenand_buffer_address(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
