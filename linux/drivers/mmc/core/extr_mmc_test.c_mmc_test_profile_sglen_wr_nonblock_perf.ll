; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_profile_sglen_wr_nonblock_perf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_profile_sglen_wr_nonblock_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { i32 }
%struct.mmc_test_multiple_rw = type { i32*, i32, i32, i32, i32, i32 }

@__const.mmc_test_profile_sglen_wr_nonblock_perf.sg_len = private unnamed_addr constant [8 x i32] [i32 1, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512], align 16
@MMC_TEST_PREP_ERASE = common dso_local global i32 0, align 4
@TEST_AREA_MAX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*)* @mmc_test_profile_sglen_wr_nonblock_perf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_profile_sglen_wr_nonblock_perf(%struct.mmc_test_card* %0) #0 {
  %2 = alloca %struct.mmc_test_card*, align 8
  %3 = alloca [8 x i32], align 16
  %4 = alloca %struct.mmc_test_multiple_rw, align 8
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %2, align 8
  %5 = bitcast [8 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([8 x i32]* @__const.mmc_test_profile_sglen_wr_nonblock_perf.sg_len to i8*), i64 32, i1 false)
  %6 = getelementptr inbounds %struct.mmc_test_multiple_rw, %struct.mmc_test_multiple_rw* %4, i32 0, i32 0
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  store i32* %7, i32** %6, align 8
  %8 = getelementptr inbounds %struct.mmc_test_multiple_rw, %struct.mmc_test_multiple_rw* %4, i32 0, i32 1
  store i32 1, i32* %8, align 8
  %9 = getelementptr inbounds %struct.mmc_test_multiple_rw, %struct.mmc_test_multiple_rw* %4, i32 0, i32 2
  store i32 1, i32* %9, align 4
  %10 = getelementptr inbounds %struct.mmc_test_multiple_rw, %struct.mmc_test_multiple_rw* %4, i32 0, i32 3
  %11 = load i32, i32* @MMC_TEST_PREP_ERASE, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.mmc_test_multiple_rw, %struct.mmc_test_multiple_rw* %4, i32 0, i32 4
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  store i32 %14, i32* %12, align 4
  %15 = getelementptr inbounds %struct.mmc_test_multiple_rw, %struct.mmc_test_multiple_rw* %4, i32 0, i32 5
  %16 = load i32, i32* @TEST_AREA_MAX_SIZE, align 4
  store i32 %16, i32* %15, align 8
  %17 = load %struct.mmc_test_card*, %struct.mmc_test_card** %2, align 8
  %18 = call i32 @mmc_test_rw_multiple_sg_len(%struct.mmc_test_card* %17, %struct.mmc_test_multiple_rw* %4)
  ret i32 %18
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @mmc_test_rw_multiple_sg_len(%struct.mmc_test_card*, %struct.mmc_test_multiple_rw*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
