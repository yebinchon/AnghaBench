; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_print_avg_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_print_avg_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.timespec64 = type { i64, i64 }

@.str = private unnamed_addr constant [117 x i8] c"%s: Transfer of %u x %u sectors (%u x %u%s KiB) took %llu.%09u seconds (%u kB/s, %u KiB/s, %u.%02u IOPS, sg_len %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c".5\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_test_card*, i32, i32, %struct.timespec64*, %struct.timespec64*)* @mmc_test_print_avg_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_test_print_avg_rate(%struct.mmc_test_card* %0, i32 %1, i32 %2, %struct.timespec64* %3, %struct.timespec64* %4) #0 {
  %6 = alloca %struct.mmc_test_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec64*, align 8
  %10 = alloca %struct.timespec64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.timespec64, align 8
  %16 = alloca %struct.timespec64, align 8
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.timespec64* %3, %struct.timespec64** %9, align 8
  store %struct.timespec64* %4, %struct.timespec64** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = ashr i32 %17, 9
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = mul i32 %19, %20
  store i32 %21, i32* %14, align 4
  %22 = load %struct.timespec64*, %struct.timespec64** %10, align 8
  %23 = load %struct.timespec64*, %struct.timespec64** %9, align 8
  %24 = bitcast %struct.timespec64* %22 to { i64, i64 }*
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = bitcast %struct.timespec64* %23 to { i64, i64 }*
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call { i64, i64 } @timespec64_sub(i64 %26, i64 %28, i64 %31, i64 %33)
  %35 = bitcast %struct.timespec64* %16 to { i64, i64 }*
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %35, i32 0, i32 0
  %37 = extractvalue { i64, i64 } %34, 0
  store i64 %37, i64* %36, align 8
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %35, i32 0, i32 1
  %39 = extractvalue { i64, i64 } %34, 1
  store i64 %39, i64* %38, align 8
  %40 = bitcast %struct.timespec64* %15 to i8*
  %41 = bitcast %struct.timespec64* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 16, i1 false)
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @mmc_test_rate(i32 %42, %struct.timespec64* %15)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %8, align 4
  %45 = mul i32 %44, 100
  %46 = call i32 @mmc_test_rate(i32 %45, %struct.timespec64* %15)
  store i32 %46, i32* %12, align 4
  %47 = load %struct.mmc_test_card*, %struct.mmc_test_card** %6, align 8
  %48 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mmc_hostname(i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %13, align 4
  %57 = lshr i32 %56, 1
  %58 = load i32, i32* %13, align 4
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %63 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %15, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %15, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* %11, align 4
  %70 = udiv i32 %69, 1000
  %71 = load i32, i32* %11, align 4
  %72 = udiv i32 %71, 1024
  %73 = load i32, i32* %12, align 4
  %74 = udiv i32 %73, 100
  %75 = load i32, i32* %12, align 4
  %76 = urem i32 %75, 100
  %77 = load %struct.mmc_test_card*, %struct.mmc_test_card** %6, align 8
  %78 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @pr_info(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53, i32 %54, i32 %55, i32 %57, i8* %62, i32 %65, i32 %68, i32 %70, i32 %72, i32 %74, i32 %76, i32 %80)
  %82 = load %struct.mmc_test_card*, %struct.mmc_test_card** %6, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = bitcast %struct.timespec64* %15 to { i64, i64 }*
  %88 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %87, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @mmc_test_save_transfer_result(%struct.mmc_test_card* %82, i32 %83, i32 %84, i64 %89, i64 %91, i32 %85, i32 %86)
  ret void
}

declare dso_local { i64, i64 } @timespec64_sub(i64, i64, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mmc_test_rate(i32, %struct.timespec64*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @mmc_test_save_transfer_result(%struct.mmc_test_card*, i32, i32, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
