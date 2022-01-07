; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_reenable_crq_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_reenable_crq_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { %struct.vio_dev* }
%struct.vio_dev = type { i32, i32 }

@H_ENABLE_CRQ = common dso_local global i32 0, align 4
@H_IN_PROGRESS = common dso_local global i32 0, align 4
@H_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error enabling adapter (rc=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvnic_adapter*)* @ibmvnic_reenable_crq_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvnic_reenable_crq_queue(%struct.ibmvnic_adapter* %0) #0 {
  %2 = alloca %struct.ibmvnic_adapter*, align 8
  %3 = alloca %struct.vio_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %2, align 8
  %5 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %5, i32 0, i32 0
  %7 = load %struct.vio_dev*, %struct.vio_dev** %6, align 8
  store %struct.vio_dev* %7, %struct.vio_dev** %3, align 8
  br label %8

8:                                                ; preds = %26, %1
  %9 = load i32, i32* @H_ENABLE_CRQ, align 4
  %10 = load %struct.vio_dev*, %struct.vio_dev** %3, align 8
  %11 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @plpar_hcall_norets(i32 %9, i32 %12)
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @H_IN_PROGRESS, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @H_BUSY, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @H_IS_LONG_BUSY(i32 %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %22, %18, %14
  %27 = phi i1 [ true, %18 ], [ true, %14 ], [ %25, %22 ]
  br i1 %27, label %8, label %28

28:                                               ; preds = %26
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.vio_dev*, %struct.vio_dev** %3, align 8
  %33 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %31, %28
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @plpar_hcall_norets(i32, i32) #1

declare dso_local i64 @H_IS_LONG_BUSY(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
