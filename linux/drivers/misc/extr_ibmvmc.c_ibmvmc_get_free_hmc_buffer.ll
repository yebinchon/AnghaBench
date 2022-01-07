; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_get_free_hmc_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_get_free_hmc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { %struct.ibmvmc_buffer* }
%struct.ibmvmc_buffer = type { i64, i64 }
%struct.crq_server_adapter = type { i32 }

@ibmvmc = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [45 x i8] c"get_free_hmc_buffer: invalid hmc_index=0x%x\0A\00", align 1
@hmcs = common dso_local global %struct.TYPE_4__* null, align 8
@ibmvmc_max_buf_pool_size = common dso_local global i64 0, align 8
@VMC_BUF_OWNER_ALPHA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ibmvmc_buffer* (%struct.crq_server_adapter*, i64)* @ibmvmc_get_free_hmc_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ibmvmc_buffer* @ibmvmc_get_free_hmc_buffer(%struct.crq_server_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.ibmvmc_buffer*, align 8
  %4 = alloca %struct.crq_server_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ibmvmc_buffer*, align 8
  %7 = alloca %struct.ibmvmc_buffer*, align 8
  %8 = alloca i64, align 8
  store %struct.crq_server_adapter* %0, %struct.crq_server_adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.ibmvmc_buffer* null, %struct.ibmvmc_buffer** %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ibmvmc, i32 0, i32 0), align 8
  %11 = icmp ugt i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @dev_info(i32 %15, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %16)
  store %struct.ibmvmc_buffer* null, %struct.ibmvmc_buffer** %3, align 8
  br label %57

18:                                               ; preds = %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hmcs, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %22, align 8
  store %struct.ibmvmc_buffer* %23, %struct.ibmvmc_buffer** %6, align 8
  store i64 0, i64* %8, align 8
  br label %24

24:                                               ; preds = %52, %18
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @ibmvmc_max_buf_pool_size, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %24
  %29 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %6, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %29, i64 %30
  %32 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %28
  %36 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %6, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %36, i64 %37
  %39 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VMC_BUF_OWNER_ALPHA, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %6, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %44, i64 %45
  %47 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %6, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds %struct.ibmvmc_buffer, %struct.ibmvmc_buffer* %48, i64 %49
  store %struct.ibmvmc_buffer* %50, %struct.ibmvmc_buffer** %7, align 8
  br label %55

51:                                               ; preds = %35, %28
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %8, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %8, align 8
  br label %24

55:                                               ; preds = %43, %24
  %56 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %7, align 8
  store %struct.ibmvmc_buffer* %56, %struct.ibmvmc_buffer** %3, align 8
  br label %57

57:                                               ; preds = %55, %12
  %58 = load %struct.ibmvmc_buffer*, %struct.ibmvmc_buffer** %3, align 8
  ret %struct.ibmvmc_buffer* %58
}

declare dso_local i32 @dev_info(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
