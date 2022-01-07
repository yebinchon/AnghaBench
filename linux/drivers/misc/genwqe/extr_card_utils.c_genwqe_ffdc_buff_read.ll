; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_utils.c_genwqe_ffdc_buff_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_utils.c_genwqe_ffdc_buff_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { i32 }
%struct.genwqe_reg = type { i32 }

@IO_EXTENDED_ERROR_POINTER = common dso_local global i32 0, align 4
@IO_EXTENDED_DIAG_SELECTOR = common dso_local global i32 0, align 4
@IO_EXTENDED_DIAG_READ_MBX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genwqe_ffdc_buff_read(%struct.genwqe_dev* %0, i32 %1, %struct.genwqe_reg* %2, i32 %3) #0 {
  %5 = alloca %struct.genwqe_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.genwqe_reg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
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
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.genwqe_dev* %0, %struct.genwqe_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.genwqe_reg* %2, %struct.genwqe_reg** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %16, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @GENWQE_UID_OFFS(i32 %27)
  %29 = load i32, i32* @IO_EXTENDED_ERROR_POINTER, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %17, align 4
  %31 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %32 = load i32, i32* %17, align 4
  %33 = call i32 @__genwqe_readq(%struct.genwqe_dev* %31, i32 %32)
  store i32 %33, i32* %22, align 4
  %34 = load i32, i32* %22, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %124

36:                                               ; preds = %4
  %37 = load i32, i32* %22, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ne i64 %38, -1
  br i1 %39, label %40, label %124

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @GENWQE_UID_OFFS(i32 %41)
  %43 = load i32, i32* %22, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %18, align 4
  br label %45

45:                                               ; preds = %40, %120
  %46 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %47 = load i32, i32* %18, align 4
  %48 = call i32 @__genwqe_readq(%struct.genwqe_dev* %46, i32 %47)
  store i32 %48, i32* %23, align 4
  %49 = load i32, i32* %23, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %23, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp eq i64 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %45
  br label %123

56:                                               ; preds = %51
  %57 = load i32, i32* %23, align 4
  %58 = sext i32 %57 to i64
  %59 = and i64 %58, 16777215
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* %23, align 4
  %62 = sext i32 %61 to i64
  %63 = and i64 %62, 549739036672
  %64 = lshr i64 %63, 24
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %20, align 4
  %66 = load i32, i32* %23, align 4
  %67 = sext i32 %66 to i64
  %68 = and i64 %67, 549755813888
  %69 = lshr i64 %68, 36
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %21, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @GENWQE_UID_OFFS(i32 %71)
  %73 = load i32, i32* %19, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %19, align 4
  %75 = load i32, i32* %21, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %97

77:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %93, %77
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %20, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %78
  %83 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %84 = load i32, i32* %19, align 4
  %85 = call i32 @__genwqe_readq(%struct.genwqe_dev* %83, i32 %84)
  store i32 %85, i32* %24, align 4
  %86 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %87 = load %struct.genwqe_reg*, %struct.genwqe_reg** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %19, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %24, align 4
  %92 = call i32 @set_reg_idx(%struct.genwqe_dev* %86, %struct.genwqe_reg* %87, i32* %16, i32 %88, i32 %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %82
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %78

96:                                               ; preds = %78
  br label %120

97:                                               ; preds = %56
  %98 = load i32, i32* %20, align 4
  %99 = ashr i32 %98, 3
  store i32 %99, i32* %20, align 4
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %114, %97
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %20, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %100
  %105 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %106 = load i32, i32* %19, align 4
  %107 = call i32 @__genwqe_readq(%struct.genwqe_dev* %105, i32 %106)
  store i32 %107, i32* %24, align 4
  %108 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %109 = load %struct.genwqe_reg*, %struct.genwqe_reg** %7, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %19, align 4
  %112 = load i32, i32* %24, align 4
  %113 = call i32 @set_reg_idx(%struct.genwqe_dev* %108, %struct.genwqe_reg* %109, i32* %16, i32 %110, i32 %111, i32 0, i32 %112)
  br label %114

114:                                              ; preds = %104
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %19, align 4
  %118 = add nsw i32 %117, 8
  store i32 %118, i32* %19, align 4
  br label %100

119:                                              ; preds = %100
  br label %120

120:                                              ; preds = %119, %96
  %121 = load i32, i32* %18, align 4
  %122 = add nsw i32 %121, 8
  store i32 %122, i32* %18, align 4
  br label %45

123:                                              ; preds = %55
  br label %124

124:                                              ; preds = %123, %36, %4
  store i32 0, i32* %15, align 4
  br label %125

125:                                              ; preds = %207, %124
  %126 = load i32, i32* %15, align 4
  %127 = icmp slt i32 %126, 8
  br i1 %127, label %128, label %210

128:                                              ; preds = %125
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @GENWQE_UID_OFFS(i32 %129)
  %131 = load i32, i32* %15, align 4
  %132 = call i32 @IO_EXTENDED_DIAG_MAP(i32 %131)
  %133 = or i32 %130, %132
  store i32 %133, i32* %25, align 4
  %134 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %135 = load i32, i32* %25, align 4
  %136 = call i32 @__genwqe_readq(%struct.genwqe_dev* %134, i32 %135)
  store i32 %136, i32* %24, align 4
  %137 = load i32, i32* %24, align 4
  %138 = sext i32 %137 to i64
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %128
  %141 = load i32, i32* %24, align 4
  %142 = sext i32 %141 to i64
  %143 = icmp eq i64 %142, -1
  br i1 %143, label %144, label %145

144:                                              ; preds = %140, %128
  br label %207

145:                                              ; preds = %140
  %146 = load i32, i32* %24, align 4
  %147 = ashr i32 %146, 24
  %148 = and i32 %147, 255
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %24, align 4
  %150 = ashr i32 %149, 16
  %151 = and i32 %150, 255
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %24, align 4
  %153 = and i32 %152, 65535
  store i32 %153, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %154

154:                                              ; preds = %203, %145
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp sle i32 %155, %156
  br i1 %157, label %158, label %206

158:                                              ; preds = %154
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @GENWQE_EXTENDED_DIAG_SELECTOR(i32 %159, i32 %160)
  store i32 %161, i32* %26, align 4
  %162 = load i32, i32* %6, align 4
  %163 = call i32 @GENWQE_UID_OFFS(i32 %162)
  %164 = load i32, i32* @IO_EXTENDED_DIAG_SELECTOR, align 4
  %165 = or i32 %163, %164
  store i32 %165, i32* %25, align 4
  %166 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %167 = load i32, i32* %25, align 4
  %168 = load i32, i32* %26, align 4
  %169 = call i32 @__genwqe_writeq(%struct.genwqe_dev* %166, i32 %167, i32 %168)
  store i32 0, i32* %14, align 4
  br label %170

170:                                              ; preds = %199, %158
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = load i32, i32* %13, align 4
  br label %178

176:                                              ; preds = %170
  %177 = load i32, i32* %10, align 4
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi i32 [ %175, %174 ], [ %177, %176 ]
  %180 = icmp slt i32 %171, %179
  br i1 %180, label %181, label %202

181:                                              ; preds = %178
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @GENWQE_UID_OFFS(i32 %182)
  %184 = load i32, i32* @IO_EXTENDED_DIAG_READ_MBX, align 4
  %185 = or i32 %183, %184
  store i32 %185, i32* %25, align 4
  %186 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %187 = load i32, i32* %25, align 4
  %188 = call i32 @__genwqe_readq(%struct.genwqe_dev* %186, i32 %187)
  store i32 %188, i32* %24, align 4
  %189 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %190 = load %struct.genwqe_reg*, %struct.genwqe_reg** %7, align 8
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* %25, align 4
  %193 = load i32, i32* %26, align 4
  %194 = shl i32 %193, 16
  %195 = load i32, i32* %14, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* %24, align 4
  %198 = call i32 @set_reg_idx(%struct.genwqe_dev* %189, %struct.genwqe_reg* %190, i32* %16, i32 %191, i32 %192, i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %181
  %200 = load i32, i32* %14, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %14, align 4
  br label %170

202:                                              ; preds = %178
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %12, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %12, align 4
  br label %154

206:                                              ; preds = %154
  br label %207

207:                                              ; preds = %206, %144
  %208 = load i32, i32* %15, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %15, align 4
  br label %125

210:                                              ; preds = %125
  ret i32 0
}

declare dso_local i32 @GENWQE_UID_OFFS(i32) #1

declare dso_local i32 @__genwqe_readq(%struct.genwqe_dev*, i32) #1

declare dso_local i32 @set_reg_idx(%struct.genwqe_dev*, %struct.genwqe_reg*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @IO_EXTENDED_DIAG_MAP(i32) #1

declare dso_local i32 @GENWQE_EXTENDED_DIAG_SELECTOR(i32, i32) #1

declare dso_local i32 @__genwqe_writeq(%struct.genwqe_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
