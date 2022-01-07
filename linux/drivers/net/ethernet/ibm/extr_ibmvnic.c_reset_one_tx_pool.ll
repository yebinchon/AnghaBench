; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_reset_one_tx_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_reset_one_tx_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32 }
%struct.ibmvnic_tx_pool = type { i32, i32*, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvnic_adapter*, %struct.ibmvnic_tx_pool*)* @reset_one_tx_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_one_tx_pool(%struct.ibmvnic_adapter* %0, %struct.ibmvnic_tx_pool* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibmvnic_adapter*, align 8
  %5 = alloca %struct.ibmvnic_tx_pool*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %4, align 8
  store %struct.ibmvnic_tx_pool* %1, %struct.ibmvnic_tx_pool** %5, align 8
  %8 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %9 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %5, align 8
  %10 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %9, i32 0, i32 5
  %11 = call i32 @reset_long_term_buff(%struct.ibmvnic_adapter* %8, i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %49

16:                                               ; preds = %2
  %17 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %5, align 8
  %18 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %5, align 8
  %21 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = call i32 @memset(i32 %19, i32 0, i32 %25)
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %41, %16
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %5, align 8
  %30 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %5, align 8
  %36 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  br label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %27

44:                                               ; preds = %27
  %45 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %5, align 8
  %46 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %5, align 8
  %48 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %44, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @reset_long_term_buff(%struct.ibmvnic_adapter*, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
