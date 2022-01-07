; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdconcat.c_concat_read_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdconcat.c_concat_read_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mtd_oob_ops = type { i64, i64, i64, i64, i64, i64 }
%struct.mtd_concat = type { i32, %struct.mtd_info** }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, %struct.mtd_oob_ops*)* @concat_read_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concat_read_oob(%struct.mtd_info* %0, i64 %1, %struct.mtd_oob_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mtd_oob_ops*, align 8
  %8 = alloca %struct.mtd_concat*, align 8
  %9 = alloca %struct.mtd_oob_ops, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mtd_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.mtd_oob_ops* %2, %struct.mtd_oob_ops** %7, align 8
  %14 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %15 = call %struct.mtd_concat* @CONCAT(%struct.mtd_info* %14)
  store %struct.mtd_concat* %15, %struct.mtd_concat** %8, align 8
  %16 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %17 = bitcast %struct.mtd_oob_ops* %9 to i8*
  %18 = bitcast %struct.mtd_oob_ops* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 48, i1 false)
  store i32 0, i32* %12, align 4
  %19 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %20 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %22 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %163, %3
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.mtd_concat*, %struct.mtd_concat** %8, align 8
  %26 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %166

29:                                               ; preds = %23
  %30 = load %struct.mtd_concat*, %struct.mtd_concat** %8, align 8
  %31 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %30, i32 0, i32 1
  %32 = load %struct.mtd_info**, %struct.mtd_info*** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %32, i64 %34
  %36 = load %struct.mtd_info*, %struct.mtd_info** %35, align 8
  store %struct.mtd_info* %36, %struct.mtd_info** %13, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %39 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %29
  %43 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %44 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = sub nsw i64 %46, %45
  store i64 %47, i64* %6, align 8
  br label %163

48:                                               ; preds = %29
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %49, %51
  %53 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %54 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %48
  %58 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %59 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = sub nsw i64 %60, %61
  %63 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 2
  store i64 %62, i64* %63, align 8
  br label %64

64:                                               ; preds = %57, %48
  %65 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @mtd_read_oob(%struct.mtd_info* %65, i64 %66, %struct.mtd_oob_ops* %9)
  store i32 %67, i32* %11, align 4
  %68 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %71 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, %69
  store i64 %73, i64* %71, align 8
  %74 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %77 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, %75
  store i64 %79, i64* %77, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %113

83:                                               ; preds = %64
  %84 = load i32, i32* %11, align 4
  %85 = call i64 @mtd_is_eccerr(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %89 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %12, align 4
  br label %112

94:                                               ; preds = %83
  %95 = load i32, i32* %11, align 4
  %96 = call i64 @mtd_is_bitflip(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %100 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %98
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %106, %98
  br label %111

109:                                              ; preds = %94
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %4, align 4
  br label %169

111:                                              ; preds = %108
  br label %112

112:                                              ; preds = %111, %87
  br label %113

113:                                              ; preds = %112, %64
  %114 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %137

117:                                              ; preds = %113
  %118 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %119 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %122 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %120, %123
  %125 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 2
  store i64 %124, i64* %125, align 8
  %126 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %117
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %4, align 4
  br label %169

131:                                              ; preds = %117
  %132 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, %133
  store i64 %136, i64* %134, align 8
  br label %137

137:                                              ; preds = %131, %113
  %138 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %162

141:                                              ; preds = %137
  %142 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %143 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %146 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = sub nsw i64 %144, %147
  %149 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 5
  store i64 %148, i64* %149, align 8
  %150 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %141
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %4, align 4
  br label %169

155:                                              ; preds = %141
  %156 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %157 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %160, %158
  store i64 %161, i64* %159, align 8
  br label %162

162:                                              ; preds = %155, %137
  store i64 0, i64* %6, align 8
  br label %163

163:                                              ; preds = %162, %42
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %10, align 4
  br label %23

166:                                              ; preds = %23
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %4, align 4
  br label %169

169:                                              ; preds = %166, %153, %129, %109
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local %struct.mtd_concat* @CONCAT(%struct.mtd_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mtd_read_oob(%struct.mtd_info*, i64, %struct.mtd_oob_ops*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @mtd_is_eccerr(i32) #1

declare dso_local i64 @mtd_is_bitflip(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
