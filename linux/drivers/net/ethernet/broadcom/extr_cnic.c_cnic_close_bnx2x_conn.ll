; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_close_bnx2x_conn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_close_bnx2x_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_sock = type { i64, i32, i32, i32, %struct.cnic_dev* }
%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { %struct.cnic_context* }
%struct.cnic_context = type { i32 }
%union.l5cm_specific_data = type { i32 }

@SK_F_HW_ERR = common dso_local global i32 0, align 4
@SK_F_PG_OFFLD_COMPLETE = common dso_local global i32 0, align 4
@ISCSI_CONNECTION_TYPE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_sock*, i32)* @cnic_close_bnx2x_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_close_bnx2x_conn(%struct.cnic_sock* %0, i32 %1) #0 {
  %3 = alloca %struct.cnic_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cnic_dev*, align 8
  %6 = alloca %struct.cnic_local*, align 8
  %7 = alloca %struct.cnic_context*, align 8
  %8 = alloca %union.l5cm_specific_data, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cnic_sock* %0, %struct.cnic_sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %12 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %11, i32 0, i32 4
  %13 = load %struct.cnic_dev*, %struct.cnic_dev** %12, align 8
  store %struct.cnic_dev* %13, %struct.cnic_dev** %5, align 8
  %14 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %15 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %14, i32 0, i32 0
  %16 = load %struct.cnic_local*, %struct.cnic_local** %15, align 8
  store %struct.cnic_local* %16, %struct.cnic_local** %6, align 8
  %17 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %18 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %17, i32 0, i32 0
  %19 = load %struct.cnic_context*, %struct.cnic_context** %18, align 8
  %20 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %21 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %19, i64 %22
  store %struct.cnic_context* %23, %struct.cnic_context** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %24 = load i32, i32* %4, align 4
  switch i32 %24, label %50 [
    i32 130, label %25
    i32 132, label %25
    i32 131, label %25
    i32 129, label %48
    i32 128, label %49
  ]

25:                                               ; preds = %2, %2, %2
  %26 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @cnic_ready_to_close(%struct.cnic_sock* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = load i32, i32* @SK_F_HW_ERR, align 4
  %32 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %33 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %32, i32 0, i32 3
  %34 = call i32 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 1, i32* %10, align 4
  br label %46

37:                                               ; preds = %30
  %38 = load i32, i32* @SK_F_PG_OFFLD_COMPLETE, align 4
  %39 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %40 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %39, i32 0, i32 3
  %41 = call i32 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 129, i32* %9, align 4
  br label %45

44:                                               ; preds = %37
  store i32 1, i32* %10, align 4
  br label %45

45:                                               ; preds = %44, %43
  br label %46

46:                                               ; preds = %45, %36
  br label %47

47:                                               ; preds = %46, %25
  br label %50

48:                                               ; preds = %2
  store i32 128, i32* %9, align 4
  br label %50

49:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  br label %50

50:                                               ; preds = %2, %49, %48, %47
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = call i32 @memset(%union.l5cm_specific_data* %8, i32 0, i32 4)
  %55 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %58 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ISCSI_CONNECTION_TYPE, align 4
  %61 = call i32 @cnic_submit_kwqe_16(%struct.cnic_dev* %55, i32 %56, i32 %59, i32 %60, %union.l5cm_specific_data* %8)
  br label %78

62:                                               ; preds = %50
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load i32, i32* @jiffies, align 4
  %67 = load %struct.cnic_context*, %struct.cnic_context** %7, align 8
  %68 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %70 = call i32 @cnic_close_conn(%struct.cnic_sock* %69)
  %71 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %72 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %73 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %74 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @cnic_cm_upcall(%struct.cnic_local* %71, %struct.cnic_sock* %72, i32 %75)
  br label %77

77:                                               ; preds = %65, %62
  br label %78

78:                                               ; preds = %77, %53
  ret void
}

declare dso_local i32 @cnic_ready_to_close(%struct.cnic_sock*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @memset(%union.l5cm_specific_data*, i32, i32) #1

declare dso_local i32 @cnic_submit_kwqe_16(%struct.cnic_dev*, i32, i32, i32, %union.l5cm_specific_data*) #1

declare dso_local i32 @cnic_close_conn(%struct.cnic_sock*) #1

declare dso_local i32 @cnic_cm_upcall(%struct.cnic_local*, %struct.cnic_sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
