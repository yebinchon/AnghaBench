; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_samsung.c_s3c_onenand_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_samsung.c_s3c_onenand_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, i32, i32)*, i32*, i32* }
%struct.mtd_info = type { i32, i32, %struct.onenand_chip* }
%struct.onenand_chip = type { i32, i32, i32, i32 }

@onenand = common dso_local global %struct.TYPE_4__* null, align 8
@TSRF = common dso_local global i32 0, align 4
@TRANS_SPARE_OFFSET = common dso_local global i32 0, align 4
@ONENAND_UNLOCK_ALL = common dso_local global i32 0, align 4
@ONENAND_ERASE_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i32, i64)* @s3c_onenand_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_onenand_command(%struct.mtd_info* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.onenand_chip*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %23 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %24 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %23, i32 0, i32 2
  %25 = load %struct.onenand_chip*, %struct.onenand_chip** %24, align 8
  store %struct.onenand_chip* %25, %struct.onenand_chip** %10, align 8
  store i32 0, i32* %15, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %28 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %26, %29
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %33 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %31, %34
  store i32 %35, i32* %14, align 4
  %36 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %37 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %14, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %14, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @onenand, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %15, align 4
  %47 = call i32 %43(i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %16, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @onenand, align 8
  %49 = load i32, i32* %16, align 4
  %50 = call i32 @CMD_MAP_01(%struct.TYPE_4__* %48, i32 %49)
  store i32 %50, i32* %17, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @onenand, align 8
  %52 = load i32, i32* %16, align 4
  %53 = call i32 @CMD_MAP_10(%struct.TYPE_4__* %51, i32 %52)
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %7, align 4
  switch i32 %54, label %58 [
    i32 130, label %55
    i32 129, label %55
    i32 134, label %55
  ]

55:                                               ; preds = %4, %4, %4
  %56 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %57 = call i32 @ONENAND_SET_NEXT_BUFFERRAM(%struct.onenand_chip* %56)
  br label %58

58:                                               ; preds = %4, %55
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %61 = call i32 @ONENAND_CURRENT_BUFFERRAM(%struct.onenand_chip* %60)
  store i32 %61, i32* %22, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @onenand, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %11, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @onenand, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %12, align 8
  %68 = load i32, i32* %22, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %59
  %71 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %72 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %73, 2
  %75 = load i32*, i32** %11, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %11, align 8
  %78 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %79 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = ashr i32 %80, 2
  %82 = load i32*, i32** %12, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %12, align 8
  br label %85

85:                                               ; preds = %70, %59
  %86 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %87 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 2
  store i32 %89, i32* %20, align 4
  %90 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %91 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = ashr i32 %92, 2
  store i32 %93, i32* %21, align 4
  %94 = load i32, i32* %7, align 4
  switch i32 %94, label %198 [
    i32 130, label %95
    i32 129, label %110
    i32 132, label %144
    i32 131, label %159
    i32 128, label %190
    i32 133, label %194
  ]

95:                                               ; preds = %85
  store i32 0, i32* %19, align 4
  br label %96

96:                                               ; preds = %106, %95
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* %20, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load i32, i32* %17, align 4
  %102 = call i8* @s3c_read_cmd(i32 %101)
  %103 = ptrtoint i8* %102 to i32
  %104 = load i32*, i32** %11, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %11, align 8
  store i32 %103, i32* %104, align 4
  br label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %19, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %19, align 4
  br label %96

109:                                              ; preds = %96
  store i32 0, i32* %5, align 4
  br label %200

110:                                              ; preds = %85
  %111 = load i32, i32* @TSRF, align 4
  %112 = load i32, i32* @TRANS_SPARE_OFFSET, align 4
  %113 = call i32 @s3c_write_reg(i32 %111, i32 %112)
  store i32 0, i32* %19, align 4
  br label %114

114:                                              ; preds = %124, %110
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* %20, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %114
  %119 = load i32, i32* %17, align 4
  %120 = call i8* @s3c_read_cmd(i32 %119)
  %121 = ptrtoint i8* %120 to i32
  %122 = load i32*, i32** %11, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %11, align 8
  store i32 %121, i32* %122, align 4
  br label %124

124:                                              ; preds = %118
  %125 = load i32, i32* %19, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %19, align 4
  br label %114

127:                                              ; preds = %114
  store i32 0, i32* %19, align 4
  br label %128

128:                                              ; preds = %138, %127
  %129 = load i32, i32* %19, align 4
  %130 = load i32, i32* %21, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %128
  %133 = load i32, i32* %17, align 4
  %134 = call i8* @s3c_read_cmd(i32 %133)
  %135 = ptrtoint i8* %134 to i32
  %136 = load i32*, i32** %12, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %12, align 8
  store i32 %135, i32* %136, align 4
  br label %138

138:                                              ; preds = %132
  %139 = load i32, i32* %19, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %19, align 4
  br label %128

141:                                              ; preds = %128
  %142 = load i32, i32* @TRANS_SPARE_OFFSET, align 4
  %143 = call i32 @s3c_write_reg(i32 0, i32 %142)
  store i32 0, i32* %5, align 4
  br label %200

144:                                              ; preds = %85
  store i32 0, i32* %19, align 4
  br label %145

145:                                              ; preds = %155, %144
  %146 = load i32, i32* %19, align 4
  %147 = load i32, i32* %20, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %145
  %150 = load i32*, i32** %11, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %11, align 8
  %152 = load i32, i32* %150, align 4
  %153 = load i32, i32* %17, align 4
  %154 = call i32 @s3c_write_cmd(i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %149
  %156 = load i32, i32* %19, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %19, align 4
  br label %145

158:                                              ; preds = %145
  store i32 0, i32* %5, align 4
  br label %200

159:                                              ; preds = %85
  %160 = load i32, i32* @TSRF, align 4
  %161 = load i32, i32* @TRANS_SPARE_OFFSET, align 4
  %162 = call i32 @s3c_write_reg(i32 %160, i32 %161)
  store i32 0, i32* %19, align 4
  br label %163

163:                                              ; preds = %170, %159
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* %20, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %163
  %168 = load i32, i32* %17, align 4
  %169 = call i32 @s3c_write_cmd(i32 -1, i32 %168)
  br label %170

170:                                              ; preds = %167
  %171 = load i32, i32* %19, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %19, align 4
  br label %163

173:                                              ; preds = %163
  store i32 0, i32* %19, align 4
  br label %174

174:                                              ; preds = %184, %173
  %175 = load i32, i32* %19, align 4
  %176 = load i32, i32* %21, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %187

178:                                              ; preds = %174
  %179 = load i32*, i32** %12, align 8
  %180 = getelementptr inbounds i32, i32* %179, i32 1
  store i32* %180, i32** %12, align 8
  %181 = load i32, i32* %179, align 4
  %182 = load i32, i32* %17, align 4
  %183 = call i32 @s3c_write_cmd(i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %178
  %185 = load i32, i32* %19, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %19, align 4
  br label %174

187:                                              ; preds = %174
  %188 = load i32, i32* @TRANS_SPARE_OFFSET, align 4
  %189 = call i32 @s3c_write_reg(i32 0, i32 %188)
  store i32 0, i32* %5, align 4
  br label %200

190:                                              ; preds = %85
  %191 = load i32, i32* @ONENAND_UNLOCK_ALL, align 4
  %192 = load i32, i32* %18, align 4
  %193 = call i32 @s3c_write_cmd(i32 %191, i32 %192)
  store i32 0, i32* %5, align 4
  br label %200

194:                                              ; preds = %85
  %195 = load i32, i32* @ONENAND_ERASE_START, align 4
  %196 = load i32, i32* %18, align 4
  %197 = call i32 @s3c_write_cmd(i32 %195, i32 %196)
  store i32 0, i32* %5, align 4
  br label %200

198:                                              ; preds = %85
  br label %199

199:                                              ; preds = %198
  store i32 0, i32* %5, align 4
  br label %200

200:                                              ; preds = %199, %194, %190, %187, %158, %141, %109
  %201 = load i32, i32* %5, align 4
  ret i32 %201
}

declare dso_local i32 @CMD_MAP_01(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @CMD_MAP_10(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ONENAND_SET_NEXT_BUFFERRAM(%struct.onenand_chip*) #1

declare dso_local i32 @ONENAND_CURRENT_BUFFERRAM(%struct.onenand_chip*) #1

declare dso_local i8* @s3c_read_cmd(i32) #1

declare dso_local i32 @s3c_write_reg(i32, i32) #1

declare dso_local i32 @s3c_write_cmd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
