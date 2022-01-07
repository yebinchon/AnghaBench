; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_handle_error_indication.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_handle_error_indication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ibmvnic_crq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ibmvnic_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"Firmware reports %serror, cause: %s. Starting recovery...\0A\00", align 1
@IBMVNIC_FATAL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"FATAL \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VNIC_RESET_FATAL = common dso_local global i32 0, align 4
@VNIC_RESET_NON_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ibmvnic_crq*, %struct.ibmvnic_adapter*)* @handle_error_indication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_error_indication(%union.ibmvnic_crq* %0, %struct.ibmvnic_adapter* %1) #0 {
  %3 = alloca %union.ibmvnic_crq*, align 8
  %4 = alloca %struct.ibmvnic_adapter*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %union.ibmvnic_crq* %0, %union.ibmvnic_crq** %3, align 8
  store %struct.ibmvnic_adapter* %1, %struct.ibmvnic_adapter** %4, align 8
  %7 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %8 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %12 = bitcast %union.ibmvnic_crq* %11 to %struct.TYPE_4__*
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @be16_to_cpu(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %18 = bitcast %union.ibmvnic_crq* %17 to %struct.TYPE_4__*
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IBMVNIC_FATAL_ERROR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ibmvnic_fw_err_cause(i32 %26)
  %28 = call i32 @dev_warn_ratelimited(%struct.device* %16, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %27)
  %29 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %3, align 8
  %30 = bitcast %union.ibmvnic_crq* %29 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IBMVNIC_FATAL_ERROR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %38 = load i32, i32* @VNIC_RESET_FATAL, align 4
  %39 = call i32 @ibmvnic_reset(%struct.ibmvnic_adapter* %37, i32 %38)
  br label %44

40:                                               ; preds = %2
  %41 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %42 = load i32, i32* @VNIC_RESET_NON_FATAL, align 4
  %43 = call i32 @ibmvnic_reset(%struct.ibmvnic_adapter* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %36
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @dev_warn_ratelimited(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @ibmvnic_fw_err_cause(i32) #1

declare dso_local i32 @ibmvnic_reset(%struct.ibmvnic_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
