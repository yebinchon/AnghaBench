; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_hw.c_qlcnic_82xx_linkevent_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_hw.c_qlcnic_82xx_linkevent_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_nic_req = type { i8**, i8*, i8* }
%struct.cmd_desc_type0 = type { i32 }

@QLCNIC_HOST_REQUEST = common dso_local global i32 0, align 4
@QLCNIC_H2C_OPCODE_GET_LINKEVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"could not configure link notification\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_82xx_linkevent_request(%struct.qlcnic_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_nic_req, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 @memset(%struct.qlcnic_nic_req* %5, i32 0, i32 24)
  %9 = load i32, i32* @QLCNIC_HOST_REQUEST, align 4
  %10 = shl i32 %9, 23
  %11 = call i8* @cpu_to_le64(i32 %10)
  %12 = getelementptr inbounds %struct.qlcnic_nic_req, %struct.qlcnic_nic_req* %5, i32 0, i32 2
  store i8* %11, i8** %12, align 8
  %13 = load i32, i32* @QLCNIC_H2C_OPCODE_GET_LINKEVENT, align 4
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = shl i32 %17, 16
  %19 = or i32 %13, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i8* @cpu_to_le64(i32 %20)
  %22 = getelementptr inbounds %struct.qlcnic_nic_req, %struct.qlcnic_nic_req* %5, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = shl i32 %24, 8
  %26 = or i32 %23, %25
  %27 = call i8* @cpu_to_le64(i32 %26)
  %28 = getelementptr inbounds %struct.qlcnic_nic_req, %struct.qlcnic_nic_req* %5, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  store i8* %27, i8** %30, align 8
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %32 = bitcast %struct.qlcnic_nic_req* %5 to %struct.cmd_desc_type0*
  %33 = call i32 @qlcnic_send_cmd_descs(%struct.qlcnic_adapter* %31, %struct.cmd_desc_type0* %32, i32 1)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %2
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %36, %2
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @memset(%struct.qlcnic_nic_req*, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @qlcnic_send_cmd_descs(%struct.qlcnic_adapter*, %struct.cmd_desc_type0*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
