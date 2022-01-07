; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdpart.c_part_read_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdpart.c_part_read_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mtd_oob_ops = type { i32 }
%struct.mtd_part = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i64, %struct.mtd_oob_ops*)*, %struct.mtd_ecc_stats }
%struct.mtd_ecc_stats = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, %struct.mtd_oob_ops*)* @part_read_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @part_read_oob(%struct.mtd_info* %0, i64 %1, %struct.mtd_oob_ops* %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mtd_oob_ops*, align 8
  %7 = alloca %struct.mtd_part*, align 8
  %8 = alloca %struct.mtd_ecc_stats, align 8
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.mtd_oob_ops* %2, %struct.mtd_oob_ops** %6, align 8
  %10 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %11 = call %struct.mtd_part* @mtd_to_part(%struct.mtd_info* %10)
  store %struct.mtd_part* %11, %struct.mtd_part** %7, align 8
  %12 = load %struct.mtd_part*, %struct.mtd_part** %7, align 8
  %13 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = bitcast %struct.mtd_ecc_stats* %8 to i8*
  %17 = bitcast %struct.mtd_ecc_stats* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 16, i1 false)
  %18 = load %struct.mtd_part*, %struct.mtd_part** %7, align 8
  %19 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_4__*, i64, %struct.mtd_oob_ops*)*, i32 (%struct.TYPE_4__*, i64, %struct.mtd_oob_ops*)** %21, align 8
  %23 = load %struct.mtd_part*, %struct.mtd_part** %7, align 8
  %24 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.mtd_part*, %struct.mtd_part** %7, align 8
  %28 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %6, align 8
  %32 = call i32 %22(%struct.TYPE_4__* %25, i64 %30, %struct.mtd_oob_ops* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @mtd_is_eccerr(i32 %33)
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %3
  %38 = load %struct.mtd_part*, %struct.mtd_part** %7, align 8
  %39 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %8, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %43, %45
  %47 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %48 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %46
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 4
  br label %71

54:                                               ; preds = %3
  %55 = load %struct.mtd_part*, %struct.mtd_part** %7, align 8
  %56 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %8, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %60, %62
  %64 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %65 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %63
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 4
  br label %71

71:                                               ; preds = %54, %37
  %72 = load i32, i32* %9, align 4
  ret i32 %72
}

declare dso_local %struct.mtd_part* @mtd_to_part(%struct.mtd_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mtd_is_eccerr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
