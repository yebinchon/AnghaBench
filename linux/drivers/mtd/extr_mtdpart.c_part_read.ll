; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdpart.c_part_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdpart.c_part_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mtd_part = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i64, i64, i64*, i32*)*, %struct.mtd_ecc_stats }
%struct.mtd_ecc_stats = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i64*, i32*)* @part_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @part_read(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.mtd_part*, align 8
  %12 = alloca %struct.mtd_ecc_stats, align 8
  %13 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %15 = call %struct.mtd_part* @mtd_to_part(%struct.mtd_info* %14)
  store %struct.mtd_part* %15, %struct.mtd_part** %11, align 8
  %16 = load %struct.mtd_part*, %struct.mtd_part** %11, align 8
  %17 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = bitcast %struct.mtd_ecc_stats* %12 to i8*
  %21 = bitcast %struct.mtd_ecc_stats* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = load %struct.mtd_part*, %struct.mtd_part** %11, align 8
  %23 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_4__*, i64, i64, i64*, i32*)*, i32 (%struct.TYPE_4__*, i64, i64, i64*, i32*)** %25, align 8
  %27 = load %struct.mtd_part*, %struct.mtd_part** %11, align 8
  %28 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.mtd_part*, %struct.mtd_part** %11, align 8
  %32 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load i64, i64* %8, align 8
  %36 = load i64*, i64** %9, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 %26(%struct.TYPE_4__* %29, i64 %34, i64 %35, i64* %36, i32* %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @mtd_is_eccerr(i32 %39)
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %5
  %44 = load %struct.mtd_part*, %struct.mtd_part** %11, align 8
  %45 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %12, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %49, %51
  %53 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %54 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %52
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  br label %77

60:                                               ; preds = %5
  %61 = load %struct.mtd_part*, %struct.mtd_part** %11, align 8
  %62 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %12, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %66, %68
  %70 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %71 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %69
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 4
  br label %77

77:                                               ; preds = %60, %43
  %78 = load i32, i32* %13, align 4
  ret i32 %78
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
