; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_buffer_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_buffer_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_request = type { %struct.mmc_command*, %struct.mmc_data*, %struct.mmc_command* }
%struct.mmc_data = type { i32 }
%struct.mmc_command = type { i32 }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*, i32*, i32, i32, i32)* @mmc_test_buffer_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_buffer_transfer(%struct.mmc_test_card* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_test_card*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mmc_request, align 8
  %13 = alloca %struct.mmc_command, align 4
  %14 = alloca %struct.mmc_command, align 4
  %15 = alloca %struct.mmc_data, align 4
  %16 = alloca %struct.scatterlist, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = bitcast %struct.mmc_request* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 24, i1 false)
  %18 = bitcast %struct.mmc_command* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  %19 = bitcast %struct.mmc_command* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 4, i1 false)
  %20 = bitcast %struct.mmc_data* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  %21 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %12, i32 0, i32 2
  store %struct.mmc_command* %13, %struct.mmc_command** %21, align 8
  %22 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %12, i32 0, i32 1
  store %struct.mmc_data* %15, %struct.mmc_data** %22, align 8
  %23 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %12, i32 0, i32 0
  store %struct.mmc_command* %14, %struct.mmc_command** %23, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @sg_init_one(%struct.scatterlist* %16, i32* %24, i32 %25)
  %27 = load %struct.mmc_test_card*, %struct.mmc_test_card** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @mmc_test_prepare_mrq(%struct.mmc_test_card* %27, %struct.mmc_request* %12, %struct.scatterlist* %16, i32 1, i32 %28, i32 1, i32 %29, i32 %30)
  %32 = load %struct.mmc_test_card*, %struct.mmc_test_card** %7, align 8
  %33 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mmc_wait_for_req(i32 %36, %struct.mmc_request* %12)
  %38 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %5
  %42 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %6, align 4
  br label %54

44:                                               ; preds = %5
  %45 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %15, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %15, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %6, align 4
  br label %54

51:                                               ; preds = %44
  %52 = load %struct.mmc_test_card*, %struct.mmc_test_card** %7, align 8
  %53 = call i32 @mmc_test_wait_busy(%struct.mmc_test_card* %52)
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %51, %48, %41
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i32) #2

declare dso_local i32 @mmc_test_prepare_mrq(%struct.mmc_test_card*, %struct.mmc_request*, %struct.scatterlist*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @mmc_wait_for_req(i32, %struct.mmc_request*) #2

declare dso_local i32 @mmc_test_wait_busy(%struct.mmc_test_card*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
