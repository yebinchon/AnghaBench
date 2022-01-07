; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmveth.c_ibmveth_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmveth.c_ibmveth_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmveth_adapter = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%union.ibmveth_buf_desc = type { i32 }

@H_BUSY = common dso_local global i64 0, align 8
@H_SUCCESS = common dso_local global i64 0, align 8
@H_DROPPED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"tx: h_send_logical_lan failed with rc=%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmveth_adapter*, %union.ibmveth_buf_desc*, i64)* @ibmveth_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmveth_send(%struct.ibmveth_adapter* %0, %union.ibmveth_buf_desc* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibmveth_adapter*, align 8
  %6 = alloca %union.ibmveth_buf_desc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ibmveth_adapter* %0, %struct.ibmveth_adapter** %5, align 8
  store %union.ibmveth_buf_desc* %1, %union.ibmveth_buf_desc** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 1024, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %55, %3
  %12 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %union.ibmveth_buf_desc*, %union.ibmveth_buf_desc** %6, align 8
  %18 = getelementptr inbounds %union.ibmveth_buf_desc, %union.ibmveth_buf_desc* %17, i64 0
  %19 = bitcast %union.ibmveth_buf_desc* %18 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = load %union.ibmveth_buf_desc*, %union.ibmveth_buf_desc** %6, align 8
  %22 = getelementptr inbounds %union.ibmveth_buf_desc, %union.ibmveth_buf_desc* %21, i64 1
  %23 = bitcast %union.ibmveth_buf_desc* %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = load %union.ibmveth_buf_desc*, %union.ibmveth_buf_desc** %6, align 8
  %26 = getelementptr inbounds %union.ibmveth_buf_desc, %union.ibmveth_buf_desc* %25, i64 2
  %27 = bitcast %union.ibmveth_buf_desc* %26 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = load %union.ibmveth_buf_desc*, %union.ibmveth_buf_desc** %6, align 8
  %30 = getelementptr inbounds %union.ibmveth_buf_desc, %union.ibmveth_buf_desc* %29, i64 3
  %31 = bitcast %union.ibmveth_buf_desc* %30 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = load %union.ibmveth_buf_desc*, %union.ibmveth_buf_desc** %6, align 8
  %34 = getelementptr inbounds %union.ibmveth_buf_desc, %union.ibmveth_buf_desc* %33, i64 4
  %35 = bitcast %union.ibmveth_buf_desc* %34 to i32*
  %36 = load i32, i32* %35, align 4
  %37 = load %union.ibmveth_buf_desc*, %union.ibmveth_buf_desc** %6, align 8
  %38 = getelementptr inbounds %union.ibmveth_buf_desc, %union.ibmveth_buf_desc* %37, i64 5
  %39 = bitcast %union.ibmveth_buf_desc* %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %44 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @h_send_logical_lan(i32 %16, i32 %20, i32 %24, i32 %28, i32 %32, i32 %36, i32 %40, i64 %41, i64* %8, i64 %42, i32 %45)
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %11
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @H_BUSY, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  %53 = add i32 %52, -1
  store i32 %53, i32* %9, align 4
  %54 = icmp ne i32 %52, 0
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi i1 [ false, %47 ], [ %54, %51 ]
  br i1 %56, label %11, label %57

57:                                               ; preds = %55
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @H_SUCCESS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @H_DROPPED, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %67 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @netdev_err(i32 %68, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %69)
  store i32 1, i32* %4, align 4
  br label %72

71:                                               ; preds = %61, %57
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %65
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @h_send_logical_lan(i32, i32, i32, i32, i32, i32, i32, i64, i64*, i64, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
