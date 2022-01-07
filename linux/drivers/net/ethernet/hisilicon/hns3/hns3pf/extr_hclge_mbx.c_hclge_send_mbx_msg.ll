; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_send_mbx_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_send_mbx_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_mbx_pf_to_vf_cmd = type { i8**, i8*, i32 }
%struct.hclge_desc = type { i64 }

@HCLGEVF_OPC_MBX_PF_TO_VF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"PF failed(=%d) to send mailbox message to VF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_vport*, i32*, i8*, i8*, i32)* @hclge_send_mbx_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_send_mbx_msg(%struct.hclge_vport* %0, i32* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.hclge_vport*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hclge_mbx_pf_to_vf_cmd*, align 8
  %12 = alloca %struct.hclge_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.hclge_desc, align 8
  store %struct.hclge_vport* %0, %struct.hclge_vport** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %16 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %15, i32 0, i32 0
  %17 = load %struct.hclge_dev*, %struct.hclge_dev** %16, align 8
  store %struct.hclge_dev* %17, %struct.hclge_dev** %12, align 8
  %18 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %14, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.hclge_mbx_pf_to_vf_cmd*
  store %struct.hclge_mbx_pf_to_vf_cmd* %20, %struct.hclge_mbx_pf_to_vf_cmd** %11, align 8
  %21 = load i32, i32* @HCLGEVF_OPC_MBX_PF_TO_VF, align 4
  %22 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %14, i32 %21, i32 0)
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.hclge_mbx_pf_to_vf_cmd*, %struct.hclge_mbx_pf_to_vf_cmd** %11, align 8
  %25 = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, %struct.hclge_mbx_pf_to_vf_cmd* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.hclge_mbx_pf_to_vf_cmd*, %struct.hclge_mbx_pf_to_vf_cmd** %11, align 8
  %28 = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, %struct.hclge_mbx_pf_to_vf_cmd* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load %struct.hclge_mbx_pf_to_vf_cmd*, %struct.hclge_mbx_pf_to_vf_cmd** %11, align 8
  %31 = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, %struct.hclge_mbx_pf_to_vf_cmd* %30, i32 0, i32 0
  %32 = load i8**, i8*** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  store i8* %29, i8** %33, align 8
  %34 = load %struct.hclge_mbx_pf_to_vf_cmd*, %struct.hclge_mbx_pf_to_vf_cmd** %11, align 8
  %35 = getelementptr inbounds %struct.hclge_mbx_pf_to_vf_cmd, %struct.hclge_mbx_pf_to_vf_cmd* %34, i32 0, i32 0
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i32*, i32** %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @memcpy(i8** %37, i32* %38, i8* %39)
  %41 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  %42 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %41, i32 0, i32 1
  %43 = call i32 @hclge_cmd_send(i32* %42, %struct.hclge_desc* %14, i32 1)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %5
  %47 = load %struct.hclge_dev*, %struct.hclge_dev** %12, align 8
  %48 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %46, %5
  %54 = load i32, i32* %13, align 4
  ret i32 %54
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @memcpy(i8**, i32*, i8*) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
