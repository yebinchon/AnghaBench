; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_print_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_print_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.timespec64 = type { i64, i64 }

@.str = private unnamed_addr constant [96 x i8] c"%s: Transfer of %u sectors (%u%s KiB) took %llu.%09u seconds (%u kB/s, %u KiB/s, %u.%02u IOPS)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c".5\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_test_card*, i32, %struct.timespec64*, %struct.timespec64*)* @mmc_test_print_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_test_print_rate(%struct.mmc_test_card* %0, i32 %1, %struct.timespec64* %2, %struct.timespec64* %3) #0 {
  %5 = alloca %struct.mmc_test_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec64*, align 8
  %8 = alloca %struct.timespec64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.timespec64, align 8
  %13 = alloca %struct.timespec64, align 8
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.timespec64* %2, %struct.timespec64** %7, align 8
  store %struct.timespec64* %3, %struct.timespec64** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %14, 9
  store i32 %15, i32* %11, align 4
  %16 = load %struct.timespec64*, %struct.timespec64** %8, align 8
  %17 = load %struct.timespec64*, %struct.timespec64** %7, align 8
  %18 = bitcast %struct.timespec64* %16 to { i64, i64 }*
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = bitcast %struct.timespec64* %17 to { i64, i64 }*
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call { i64, i64 } @timespec64_sub(i64 %20, i64 %22, i64 %25, i64 %27)
  %29 = bitcast %struct.timespec64* %13 to { i64, i64 }*
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 0
  %31 = extractvalue { i64, i64 } %28, 0
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 1
  %33 = extractvalue { i64, i64 } %28, 1
  store i64 %33, i64* %32, align 8
  %34 = bitcast %struct.timespec64* %12 to i8*
  %35 = bitcast %struct.timespec64* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 16, i1 false)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @mmc_test_rate(i32 %36, %struct.timespec64* %12)
  store i32 %37, i32* %9, align 4
  %38 = call i32 @mmc_test_rate(i32 100, %struct.timespec64* %12)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.mmc_test_card*, %struct.mmc_test_card** %5, align 8
  %40 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mmc_hostname(i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = lshr i32 %46, 1
  %48 = load i32, i32* %11, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %53 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %12, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %12, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* %9, align 4
  %60 = udiv i32 %59, 1000
  %61 = load i32, i32* %9, align 4
  %62 = udiv i32 %61, 1024
  %63 = load i32, i32* %10, align 4
  %64 = udiv i32 %63, 100
  %65 = load i32, i32* %10, align 4
  %66 = urem i32 %65, 100
  %67 = call i32 @pr_info(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %47, i8* %52, i32 %55, i32 %58, i32 %60, i32 %62, i32 %64, i32 %66)
  %68 = load %struct.mmc_test_card*, %struct.mmc_test_card** %5, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = bitcast %struct.timespec64* %12 to { i64, i64 }*
  %73 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %72, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @mmc_test_save_transfer_result(%struct.mmc_test_card* %68, i32 1, i32 %69, i64 %74, i64 %76, i32 %70, i32 %71)
  ret void
}

declare dso_local { i64, i64 } @timespec64_sub(i64, i64, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mmc_test_rate(i32, %struct.timespec64*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @mmc_test_save_transfer_result(%struct.mmc_test_card*, i32, i32, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
