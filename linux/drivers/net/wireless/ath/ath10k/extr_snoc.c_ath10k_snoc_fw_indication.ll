; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_fw_indication.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_fw_indication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, i32, i32 }
%struct.ath10k_snoc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ath10k_bus_params = type { i32, i32 }

@ATH10K_SNOC_FLAG_UNREGISTERING = common dso_local global i32 0, align 4
@ATH10K_SNOC_FLAG_REGISTERED = common dso_local global i32 0, align 4
@ATH10K_DEV_TYPE_LL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to register driver core: %d\0A\00", align 1
@ATH10K_SNOC_FLAG_RECOVERY = common dso_local global i32 0, align 4
@ATH10K_FLAG_CRASH_FLUSH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid fw indication: %llx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_snoc_fw_indication(%struct.ath10k* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k_snoc*, align 8
  %7 = alloca %struct.ath10k_bus_params, align 4
  %8 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %10 = call %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k* %9)
  store %struct.ath10k_snoc* %10, %struct.ath10k_snoc** %6, align 8
  %11 = bitcast %struct.ath10k_bus_params* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = load i32, i32* @ATH10K_SNOC_FLAG_UNREGISTERING, align 4
  %13 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %6, align 8
  %14 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %13, i32 0, i32 0
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %64 [
    i32 128, label %20
    i32 129, label %55
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @ATH10K_SNOC_FLAG_REGISTERED, align 4
  %22 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %6, align 8
  %23 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %22, i32 0, i32 0
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %28 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %31 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %30, i32 0, i32 1
  %32 = call i32 @queue_work(i32 %29, i32* %31)
  br label %70

33:                                               ; preds = %20
  %34 = load i32, i32* @ATH10K_DEV_TYPE_LL, align 4
  %35 = getelementptr inbounds %struct.ath10k_bus_params, %struct.ath10k_bus_params* %7, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %6, align 8
  %37 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.ath10k_bus_params, %struct.ath10k_bus_params* %7, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %42 = call i32 @ath10k_core_register(%struct.ath10k* %41, %struct.ath10k_bus_params* %7)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %33
  %46 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @ath10k_err(%struct.ath10k* %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %71

50:                                               ; preds = %33
  %51 = load i32, i32* @ATH10K_SNOC_FLAG_REGISTERED, align 4
  %52 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %6, align 8
  %53 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %52, i32 0, i32 0
  %54 = call i32 @set_bit(i32 %51, i32* %53)
  br label %70

55:                                               ; preds = %18
  %56 = load i32, i32* @ATH10K_SNOC_FLAG_RECOVERY, align 4
  %57 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %6, align 8
  %58 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %57, i32 0, i32 0
  %59 = call i32 @set_bit(i32 %56, i32* %58)
  %60 = load i32, i32* @ATH10K_FLAG_CRASH_FLUSH, align 4
  %61 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %62 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %61, i32 0, i32 0
  %63 = call i32 @set_bit(i32 %60, i32* %62)
  br label %70

64:                                               ; preds = %18
  %65 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @ath10k_err(%struct.ath10k* %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %71

70:                                               ; preds = %55, %50, %26
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %64, %45, %17
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @ath10k_core_register(%struct.ath10k*, %struct.ath10k_bus_params*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
