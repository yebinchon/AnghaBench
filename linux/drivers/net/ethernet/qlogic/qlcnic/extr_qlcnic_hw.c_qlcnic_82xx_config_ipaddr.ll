; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_hw.c_qlcnic_82xx_config_ipaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_hw.c_qlcnic_82xx_config_ipaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_nic_req = type { i8**, i8*, i8* }
%struct.qlcnic_ipaddr = type { i32 }
%struct.cmd_desc_type0 = type { i32 }

@QLCNIC_HOST_REQUEST = common dso_local global i32 0, align 4
@QLCNIC_H2C_OPCODE_CONFIG_IPADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"could not notify %s IP 0x%x request\0A\00", align 1
@QLCNIC_IP_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Remove\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_82xx_config_ipaddr(%struct.qlcnic_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qlcnic_nic_req, align 8
  %8 = alloca %struct.qlcnic_ipaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = call i32 @memset(%struct.qlcnic_nic_req* %7, i32 0, i32 24)
  %12 = load i32, i32* @QLCNIC_HOST_REQUEST, align 4
  %13 = shl i32 %12, 23
  %14 = call i8* @cpu_to_le64(i32 %13)
  %15 = getelementptr inbounds %struct.qlcnic_nic_req, %struct.qlcnic_nic_req* %7, i32 0, i32 2
  store i8* %14, i8** %15, align 8
  %16 = load i32, i32* @QLCNIC_H2C_OPCODE_CONFIG_IPADDR, align 4
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = shl i32 %20, 16
  %22 = or i32 %16, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i8* @cpu_to_le64(i32 %23)
  %25 = getelementptr inbounds %struct.qlcnic_nic_req, %struct.qlcnic_nic_req* %7, i32 0, i32 1
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i8* @cpu_to_le64(i32 %26)
  %28 = getelementptr inbounds %struct.qlcnic_nic_req, %struct.qlcnic_nic_req* %7, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  store i8* %27, i8** %30, align 8
  %31 = getelementptr inbounds %struct.qlcnic_nic_req, %struct.qlcnic_nic_req* %7, i32 0, i32 0
  %32 = load i8**, i8*** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = bitcast i8** %33 to %struct.qlcnic_ipaddr*
  store %struct.qlcnic_ipaddr* %34, %struct.qlcnic_ipaddr** %8, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.qlcnic_ipaddr*, %struct.qlcnic_ipaddr** %8, align 8
  %37 = getelementptr inbounds %struct.qlcnic_ipaddr, %struct.qlcnic_ipaddr* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %39 = bitcast %struct.qlcnic_nic_req* %7 to %struct.cmd_desc_type0*
  %40 = call i32 @qlcnic_send_cmd_descs(%struct.qlcnic_adapter* %38, %struct.cmd_desc_type0* %39, i32 1)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %3
  %44 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %45 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @QLCNIC_IP_UP, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %52, i32 %53)
  br label %55

55:                                               ; preds = %43, %3
  ret void
}

declare dso_local i32 @memset(%struct.qlcnic_nic_req*, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @qlcnic_send_cmd_descs(%struct.qlcnic_adapter*, %struct.cmd_desc_type0*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
