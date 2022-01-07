; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_save_transfer_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_save_transfer_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.timespec64 = type { i32 }
%struct.mmc_test_transfer_result = type { i32, i32, i32, i32, i32, %struct.timespec64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_test_card*, i32, i32, i32, i32, i32)* @mmc_test_save_transfer_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_test_save_transfer_result(%struct.mmc_test_card* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.timespec64, align 4
  %8 = alloca %struct.mmc_test_card*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mmc_test_transfer_result*, align 8
  %14 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %7, i32 0, i32 0
  store i32 %3, i32* %14, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.mmc_test_card*, %struct.mmc_test_card** %8, align 8
  %16 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  br label %50

20:                                               ; preds = %6
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.mmc_test_transfer_result* @kmalloc(i32 24, i32 %21)
  store %struct.mmc_test_transfer_result* %22, %struct.mmc_test_transfer_result** %13, align 8
  %23 = load %struct.mmc_test_transfer_result*, %struct.mmc_test_transfer_result** %13, align 8
  %24 = icmp ne %struct.mmc_test_transfer_result* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %50

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.mmc_test_transfer_result*, %struct.mmc_test_transfer_result** %13, align 8
  %29 = getelementptr inbounds %struct.mmc_test_transfer_result, %struct.mmc_test_transfer_result* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.mmc_test_transfer_result*, %struct.mmc_test_transfer_result** %13, align 8
  %32 = getelementptr inbounds %struct.mmc_test_transfer_result, %struct.mmc_test_transfer_result* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mmc_test_transfer_result*, %struct.mmc_test_transfer_result** %13, align 8
  %34 = getelementptr inbounds %struct.mmc_test_transfer_result, %struct.mmc_test_transfer_result* %33, i32 0, i32 5
  %35 = bitcast %struct.timespec64* %34 to i8*
  %36 = bitcast %struct.timespec64* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 4, i1 false)
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.mmc_test_transfer_result*, %struct.mmc_test_transfer_result** %13, align 8
  %39 = getelementptr inbounds %struct.mmc_test_transfer_result, %struct.mmc_test_transfer_result* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.mmc_test_transfer_result*, %struct.mmc_test_transfer_result** %13, align 8
  %42 = getelementptr inbounds %struct.mmc_test_transfer_result, %struct.mmc_test_transfer_result* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.mmc_test_transfer_result*, %struct.mmc_test_transfer_result** %13, align 8
  %44 = getelementptr inbounds %struct.mmc_test_transfer_result, %struct.mmc_test_transfer_result* %43, i32 0, i32 4
  %45 = load %struct.mmc_test_card*, %struct.mmc_test_card** %8, align 8
  %46 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @list_add_tail(i32* %44, i32* %48)
  br label %50

50:                                               ; preds = %26, %25, %19
  ret void
}

declare dso_local %struct.mmc_test_transfer_result* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
