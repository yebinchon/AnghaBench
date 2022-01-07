; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdconcat.c_concat_write_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdconcat.c_concat_write_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i64 }
%struct.mtd_oob_ops = type { i64, i64, i64, i64, i64, i64 }
%struct.mtd_concat = type { i32, %struct.mtd_info** }

@MTD_WRITEABLE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, %struct.mtd_oob_ops*)* @concat_write_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concat_write_oob(%struct.mtd_info* %0, i64 %1, %struct.mtd_oob_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mtd_oob_ops*, align 8
  %8 = alloca %struct.mtd_concat*, align 8
  %9 = alloca %struct.mtd_oob_ops, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mtd_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.mtd_oob_ops* %2, %struct.mtd_oob_ops** %7, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %14 = call %struct.mtd_concat* @CONCAT(%struct.mtd_info* %13)
  store %struct.mtd_concat* %14, %struct.mtd_concat** %8, align 8
  %15 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %16 = bitcast %struct.mtd_oob_ops* %9 to i8*
  %17 = bitcast %struct.mtd_oob_ops* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 48, i1 false)
  %18 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %19 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MTD_WRITEABLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EROFS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %146

27:                                               ; preds = %3
  %28 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %29 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %31 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %140, %27
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.mtd_concat*, %struct.mtd_concat** %8, align 8
  %35 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %143

38:                                               ; preds = %32
  %39 = load %struct.mtd_concat*, %struct.mtd_concat** %8, align 8
  %40 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %39, i32 0, i32 1
  %41 = load %struct.mtd_info**, %struct.mtd_info*** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %41, i64 %43
  %45 = load %struct.mtd_info*, %struct.mtd_info** %44, align 8
  store %struct.mtd_info* %45, %struct.mtd_info** %12, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %48 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %46, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %38
  %52 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %53 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = sub nsw i64 %55, %54
  store i64 %56, i64* %6, align 8
  br label %140

57:                                               ; preds = %38
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %58, %60
  %62 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %63 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %61, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %57
  %67 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %68 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = sub nsw i64 %69, %70
  %72 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 2
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %66, %57
  %74 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @mtd_write_oob(%struct.mtd_info* %74, i64 %75, %struct.mtd_oob_ops* %9)
  store i32 %76, i32* %11, align 4
  %77 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %80 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, %78
  store i64 %82, i64* %80, align 8
  %83 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %86 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %73
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %4, align 4
  br label %146

93:                                               ; preds = %73
  %94 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %116

97:                                               ; preds = %93
  %98 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %99 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %102 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %100, %103
  %105 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 2
  store i64 %104, i64* %105, align 8
  %106 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %146

110:                                              ; preds = %97
  %111 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, %112
  store i64 %115, i64* %113, align 8
  br label %116

116:                                              ; preds = %110, %93
  %117 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %139

120:                                              ; preds = %116
  %121 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %122 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %125 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = sub nsw i64 %123, %126
  %128 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 5
  store i64 %127, i64* %128, align 8
  %129 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %120
  store i32 0, i32* %4, align 4
  br label %146

133:                                              ; preds = %120
  %134 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, %135
  store i64 %138, i64* %136, align 8
  br label %139

139:                                              ; preds = %133, %116
  store i64 0, i64* %6, align 8
  br label %140

140:                                              ; preds = %139, %51
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %32

143:                                              ; preds = %32
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %143, %132, %109, %91, %24
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local %struct.mtd_concat* @CONCAT(%struct.mtd_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mtd_write_oob(%struct.mtd_info*, i64, %struct.mtd_oob_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
