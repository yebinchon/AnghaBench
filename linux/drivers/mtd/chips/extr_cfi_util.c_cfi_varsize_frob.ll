; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_util.c_cfi_varsize_frob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_util.c_cfi_varsize_frob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, %struct.mtd_erase_region_info*, %struct.map_info* }
%struct.mtd_erase_region_info = type { i32, i32, i32 }
%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { i32, i32, i32* }
%struct.map_info.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfi_varsize_frob(%struct.mtd_info* %0, i32 (%struct.map_info.0*, i32*, i64, i32, i8*)* %1, i32 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i32 (%struct.map_info.0*, i32*, i64, i32, i8*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.map_info*, align 8
  %13 = alloca %struct.cfi_private*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.mtd_erase_region_info*, align 8
  %20 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i32 (%struct.map_info.0*, i32*, i64, i32, i8*)* %1, i32 (%struct.map_info.0*, i32*, i64, i32, i8*)** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %21 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %22 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %21, i32 0, i32 2
  %23 = load %struct.map_info*, %struct.map_info** %22, align 8
  store %struct.map_info* %23, %struct.map_info** %12, align 8
  %24 = load %struct.map_info*, %struct.map_info** %12, align 8
  %25 = getelementptr inbounds %struct.map_info, %struct.map_info* %24, i32 0, i32 0
  %26 = load %struct.cfi_private*, %struct.cfi_private** %25, align 8
  store %struct.cfi_private* %26, %struct.cfi_private** %13, align 8
  store i32 0, i32* %16, align 4
  %27 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %28 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 1
  %29 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %28, align 8
  store %struct.mtd_erase_region_info* %29, %struct.mtd_erase_region_info** %19, align 8
  store i32 0, i32* %17, align 4
  br label %30

30:                                               ; preds = %47, %5
  %31 = load i32, i32* %17, align 4
  %32 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %33 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %19, align 8
  %39 = load i32, i32* %17, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %38, i64 %40
  %42 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %37, %43
  br label %45

45:                                               ; preds = %36, %30
  %46 = phi i1 [ false, %30 ], [ %44, %36 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i32, i32* %17, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %17, align 4
  br label %30

50:                                               ; preds = %45
  %51 = load i32, i32* %17, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %19, align 8
  %55 = load i32, i32* %17, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %54, i64 %56
  %58 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 1
  %61 = and i32 %53, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %50
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %206

66:                                               ; preds = %50
  %67 = load i32, i32* %17, align 4
  store i32 %67, i32* %18, align 4
  br label %68

68:                                               ; preds = %89, %66
  %69 = load i32, i32* %17, align 4
  %70 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %71 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %10, align 8
  %78 = add i64 %76, %77
  %79 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %19, align 8
  %80 = load i32, i32* %17, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %79, i64 %81
  %83 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp uge i64 %78, %85
  br label %87

87:                                               ; preds = %74, %68
  %88 = phi i1 [ false, %68 ], [ %86, %74 ]
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = load i32, i32* %17, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %17, align 4
  br label %68

92:                                               ; preds = %87
  %93 = load i32, i32* %17, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %10, align 8
  %98 = add i64 %96, %97
  %99 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %19, align 8
  %100 = load i32, i32* %17, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %99, i64 %101
  %103 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = and i64 %98, %106
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %92
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %6, align 4
  br label %206

112:                                              ; preds = %92
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.cfi_private*, %struct.cfi_private** %13, align 8
  %115 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = ashr i32 %113, %116
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load %struct.cfi_private*, %struct.cfi_private** %13, align 8
  %121 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = shl i32 %119, %122
  %124 = sub nsw i32 %118, %123
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %14, align 8
  %126 = load i32, i32* %18, align 4
  store i32 %126, i32* %17, align 4
  br label %127

127:                                              ; preds = %204, %112
  %128 = load i64, i64* %10, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %205

130:                                              ; preds = %127
  %131 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %19, align 8
  %132 = load i32, i32* %17, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %131, i64 %133
  %135 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %20, align 4
  %137 = load i32 (%struct.map_info.0*, i32*, i64, i32, i8*)*, i32 (%struct.map_info.0*, i32*, i64, i32, i8*)** %8, align 8
  %138 = load %struct.map_info*, %struct.map_info** %12, align 8
  %139 = bitcast %struct.map_info* %138 to %struct.map_info.0*
  %140 = load %struct.cfi_private*, %struct.cfi_private** %13, align 8
  %141 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i64, i64* %14, align 8
  %147 = load i32, i32* %20, align 4
  %148 = load i8*, i8** %11, align 8
  %149 = call i32 %137(%struct.map_info.0* %139, i32* %145, i64 %146, i32 %147, i8* %148)
  store i32 %149, i32* %16, align 4
  %150 = load i32, i32* %16, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %130
  %153 = load i32, i32* %16, align 4
  store i32 %153, i32* %6, align 4
  br label %206

154:                                              ; preds = %130
  %155 = load i32, i32* %20, align 4
  %156 = sext i32 %155 to i64
  %157 = load i64, i64* %14, align 8
  %158 = add i64 %157, %156
  store i64 %158, i64* %14, align 8
  %159 = load i32, i32* %20, align 4
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %20, align 4
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* %10, align 8
  %165 = sub i64 %164, %163
  store i64 %165, i64* %10, align 8
  %166 = load i32, i32* %9, align 4
  %167 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %19, align 8
  %168 = load i32, i32* %17, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %167, i64 %169
  %171 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %20, align 4
  %174 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %19, align 8
  %175 = load i32, i32* %17, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %174, i64 %176
  %178 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = mul nsw i32 %173, %179
  %181 = add nsw i32 %172, %180
  %182 = icmp eq i32 %166, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %154
  %184 = load i32, i32* %17, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %17, align 4
  br label %186

186:                                              ; preds = %183, %154
  %187 = load i64, i64* %14, align 8
  %188 = load %struct.cfi_private*, %struct.cfi_private** %13, align 8
  %189 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = zext i32 %190 to i64
  %192 = lshr i64 %187, %191
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %186
  store i64 0, i64* %14, align 8
  %195 = load i32, i32* %15, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %15, align 4
  %197 = load i32, i32* %15, align 4
  %198 = load %struct.cfi_private*, %struct.cfi_private** %13, align 8
  %199 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp sge i32 %197, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %194
  br label %205

203:                                              ; preds = %194
  br label %204

204:                                              ; preds = %203, %186
  br label %127

205:                                              ; preds = %202, %127
  store i32 0, i32* %6, align 4
  br label %206

206:                                              ; preds = %205, %152, %109, %63
  %207 = load i32, i32* %6, align 4
  ret i32 %207
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
