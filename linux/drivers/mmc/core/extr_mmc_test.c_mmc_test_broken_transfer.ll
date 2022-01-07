; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_broken_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_broken_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_request = type { %struct.mmc_command*, %struct.mmc_data*, %struct.mmc_command* }
%struct.mmc_data = type { i32 }
%struct.mmc_command = type { i32 }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*, i32, i32, i32)* @mmc_test_broken_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_broken_transfer(%struct.mmc_test_card* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mmc_test_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mmc_request, align 8
  %10 = alloca %struct.mmc_command, align 4
  %11 = alloca %struct.mmc_command, align 4
  %12 = alloca %struct.mmc_data, align 4
  %13 = alloca %struct.scatterlist, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = bitcast %struct.mmc_request* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 24, i1 false)
  %15 = bitcast %struct.mmc_command* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  %16 = bitcast %struct.mmc_command* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  %17 = bitcast %struct.mmc_data* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 4, i1 false)
  %18 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %9, i32 0, i32 2
  store %struct.mmc_command* %10, %struct.mmc_command** %18, align 8
  %19 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %9, i32 0, i32 1
  store %struct.mmc_data* %12, %struct.mmc_data** %19, align 8
  %20 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %9, i32 0, i32 0
  store %struct.mmc_command* %11, %struct.mmc_command** %20, align 8
  %21 = load %struct.mmc_test_card*, %struct.mmc_test_card** %5, align 8
  %22 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = mul i32 %24, %25
  %27 = call i32 @sg_init_one(%struct.scatterlist* %13, i32 %23, i32 %26)
  %28 = load %struct.mmc_test_card*, %struct.mmc_test_card** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @mmc_test_prepare_mrq(%struct.mmc_test_card* %28, %struct.mmc_request* %9, %struct.scatterlist* %13, i32 1, i32 0, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.mmc_test_card*, %struct.mmc_test_card** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @mmc_test_prepare_broken_mrq(%struct.mmc_test_card* %33, %struct.mmc_request* %9, i32 %34)
  %36 = load %struct.mmc_test_card*, %struct.mmc_test_card** %5, align 8
  %37 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mmc_wait_for_req(i32 %40, %struct.mmc_request* %9)
  %42 = load %struct.mmc_test_card*, %struct.mmc_test_card** %5, align 8
  %43 = call i32 @mmc_test_wait_busy(%struct.mmc_test_card* %42)
  %44 = load %struct.mmc_test_card*, %struct.mmc_test_card** %5, align 8
  %45 = call i32 @mmc_test_check_broken_result(%struct.mmc_test_card* %44, %struct.mmc_request* %9)
  ret i32 %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32, i32) #2

declare dso_local i32 @mmc_test_prepare_mrq(%struct.mmc_test_card*, %struct.mmc_request*, %struct.scatterlist*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @mmc_test_prepare_broken_mrq(%struct.mmc_test_card*, %struct.mmc_request*, i32) #2

declare dso_local i32 @mmc_wait_for_req(i32, %struct.mmc_request*) #2

declare dso_local i32 @mmc_test_wait_busy(%struct.mmc_test_card*) #2

declare dso_local i32 @mmc_test_check_broken_result(%struct.mmc_test_card*, %struct.mmc_request*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
