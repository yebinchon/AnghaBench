; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_init_one_tx_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_init_one_tx_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ibmvnic_tx_pool = type { i32*, i32, i32, i64, i64, i32, i8* }
%struct.ibmvnic_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ibmvnic_tx_pool*, i32, i32)* @init_one_tx_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_one_tx_pool(%struct.net_device* %0, %struct.ibmvnic_tx_pool* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ibmvnic_tx_pool*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ibmvnic_adapter*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.ibmvnic_tx_pool* %1, %struct.ibmvnic_tx_pool** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.ibmvnic_adapter* %13, %struct.ibmvnic_adapter** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kcalloc(i32 %14, i32 4, i32 %15)
  %17 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %7, align 8
  %18 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %17, i32 0, i32 6
  store i8* %16, i8** %18, align 8
  %19 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %7, align 8
  %20 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %19, i32 0, i32 6
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %73

24:                                               ; preds = %4
  %25 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %10, align 8
  %26 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %7, align 8
  %27 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %26, i32 0, i32 5
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = mul nsw i32 %28, %29
  %31 = call i64 @alloc_long_term_buff(%struct.ibmvnic_adapter* %25, i32* %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 -1, i32* %5, align 4
  br label %73

34:                                               ; preds = %24
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kcalloc(i32 %35, i32 4, i32 %36)
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %7, align 8
  %40 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %7, align 8
  %42 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %73

46:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %59, %46
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %7, align 8
  %54 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  br label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %47

62:                                               ; preds = %47
  %63 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %7, align 8
  %64 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  %65 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %7, align 8
  %66 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %65, i32 0, i32 3
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %7, align 8
  %69 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %7, align 8
  %72 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %62, %45, %33, %23
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @alloc_long_term_buff(%struct.ibmvnic_adapter*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
