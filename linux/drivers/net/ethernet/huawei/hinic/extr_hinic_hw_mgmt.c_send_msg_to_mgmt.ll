; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_mgmt.c_send_msg_to_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_mgmt.c_send_msg_to_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_pf_to_mgmt = type { i32, %struct.hinic_api_cmd_chain** }
%struct.hinic_api_cmd_chain = type { i32 }

@MGMT_RESP = common dso_local global i32 0, align 4
@HINIC_API_CMD_WRITE_TO_MGMT_CPU = common dso_local global i64 0, align 8
@HINIC_NODE_ID_MGMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_pf_to_mgmt*, i32, i32, i32*, i32, i32, i32, i32)* @send_msg_to_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_msg_to_mgmt(%struct.hinic_pf_to_mgmt* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.hinic_pf_to_mgmt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.hinic_api_cmd_chain*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.hinic_pf_to_mgmt* %0, %struct.hinic_pf_to_mgmt** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %20 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %9, align 8
  %21 = call i32 @SYNC_MSG_ID(%struct.hinic_pf_to_mgmt* %20)
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* @MGMT_RESP, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %8
  %26 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %9, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %16, align 4
  %33 = call i32 @prepare_header(%struct.hinic_pf_to_mgmt* %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %18, align 4
  br label %45

34:                                               ; preds = %8
  %35 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %9, align 8
  %36 = call i32 @SYNC_MSG_ID_INC(%struct.hinic_pf_to_mgmt* %35)
  %37 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %9, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %19, align 4
  %44 = call i32 @prepare_header(%struct.hinic_pf_to_mgmt* %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %18, align 4
  br label %45

45:                                               ; preds = %34, %25
  %46 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %9, align 8
  %47 = getelementptr inbounds %struct.hinic_pf_to_mgmt, %struct.hinic_pf_to_mgmt* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @prepare_mgmt_cmd(i32 %48, i32* %18, i32* %49, i32 %50)
  %52 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %9, align 8
  %53 = getelementptr inbounds %struct.hinic_pf_to_mgmt, %struct.hinic_pf_to_mgmt* %52, i32 0, i32 1
  %54 = load %struct.hinic_api_cmd_chain**, %struct.hinic_api_cmd_chain*** %53, align 8
  %55 = load i64, i64* @HINIC_API_CMD_WRITE_TO_MGMT_CPU, align 8
  %56 = getelementptr inbounds %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %54, i64 %55
  %57 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %56, align 8
  store %struct.hinic_api_cmd_chain* %57, %struct.hinic_api_cmd_chain** %17, align 8
  %58 = load %struct.hinic_api_cmd_chain*, %struct.hinic_api_cmd_chain** %17, align 8
  %59 = load i32, i32* @HINIC_NODE_ID_MGMT, align 4
  %60 = load %struct.hinic_pf_to_mgmt*, %struct.hinic_pf_to_mgmt** %9, align 8
  %61 = getelementptr inbounds %struct.hinic_pf_to_mgmt, %struct.hinic_pf_to_mgmt* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @mgmt_msg_len(i32 %63)
  %65 = call i32 @hinic_api_cmd_write(%struct.hinic_api_cmd_chain* %58, i32 %59, i32 %62, i32 %64)
  ret i32 %65
}

declare dso_local i32 @SYNC_MSG_ID(%struct.hinic_pf_to_mgmt*) #1

declare dso_local i32 @prepare_header(%struct.hinic_pf_to_mgmt*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SYNC_MSG_ID_INC(%struct.hinic_pf_to_mgmt*) #1

declare dso_local i32 @prepare_mgmt_cmd(i32, i32*, i32*, i32) #1

declare dso_local i32 @hinic_api_cmd_write(%struct.hinic_api_cmd_chain*, i32, i32, i32) #1

declare dso_local i32 @mgmt_msg_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
