; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_validate_ring_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_validate_ring_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [91 x i8] c"Invalid ring count, SDS ring count %d should not be greater than max %d driver sds rings.\0A\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"Invalid ring count, Tx ring count %d should not be greater than max %d driver Tx rings.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i64, i64)* @qlcnic_validate_ring_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_validate_ring_count(%struct.qlcnic_adapter* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i64, i64* %7, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %59

16:                                               ; preds = %10
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %22 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %31 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @netdev_err(i32 %28, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %59

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %36, %16
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %43 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %48 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %52 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @netdev_err(i32 %49, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i64 %50, i64 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %59

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57, %37
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %46, %25, %13
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @netdev_err(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
