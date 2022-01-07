; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c___qlcnic_dcb_query_hw_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c___qlcnic_dcb_query_hw_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_dcb = type { %struct.qlcnic_adapter* }
%struct.qlcnic_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@QLCNIC_CMD_DCB_QUERY_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to query DCBX capability, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_dcb*, i8*)* @__qlcnic_dcb_query_hw_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qlcnic_dcb_query_hw_capability(%struct.qlcnic_dcb* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_dcb*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.qlcnic_cmd_args, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qlcnic_dcb* %0, %struct.qlcnic_dcb** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %4, align 8
  %11 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %10, i32 0, i32 0
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %11, align 8
  store %struct.qlcnic_adapter* %12, %struct.qlcnic_adapter** %6, align 8
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %14 = load i32, i32* @QLCNIC_CMD_DCB_QUERY_CAP, align 4
  %15 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %7, %struct.qlcnic_adapter* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %47

20:                                               ; preds = %2
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %22 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %21, %struct.qlcnic_cmd_args* %7)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %27 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %44

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @memcpy(i8* %41, i32* %8, i32 4)
  br label %43

43:                                               ; preds = %40, %32
  br label %44

44:                                               ; preds = %43, %25
  %45 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %7)
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %18
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
