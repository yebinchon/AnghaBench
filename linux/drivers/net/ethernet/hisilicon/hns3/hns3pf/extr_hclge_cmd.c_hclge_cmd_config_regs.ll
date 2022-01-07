; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_cmd.c_hclge_cmd_config_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_cmd.c_hclge_cmd_config_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_cmq_ring = type { i64, i32, %struct.hclge_dev*, i32 }
%struct.hclge_dev = type { %struct.hclge_hw }
%struct.hclge_hw = type { i32 }

@HCLGE_TYPE_CSQ = common dso_local global i64 0, align 8
@HCLGE_NIC_CSQ_BASEADDR_L_REG = common dso_local global i32 0, align 4
@HCLGE_NIC_CSQ_BASEADDR_H_REG = common dso_local global i32 0, align 4
@HCLGE_NIC_CSQ_DEPTH_REG = common dso_local global i32 0, align 4
@HCLGE_NIC_SW_RST_RDY = common dso_local global i32 0, align 4
@HCLGE_NIC_CMQ_DESC_NUM_S = common dso_local global i32 0, align 4
@HCLGE_NIC_CSQ_HEAD_REG = common dso_local global i32 0, align 4
@HCLGE_NIC_CSQ_TAIL_REG = common dso_local global i32 0, align 4
@HCLGE_NIC_CRQ_BASEADDR_L_REG = common dso_local global i32 0, align 4
@HCLGE_NIC_CRQ_BASEADDR_H_REG = common dso_local global i32 0, align 4
@HCLGE_NIC_CRQ_DEPTH_REG = common dso_local global i32 0, align 4
@HCLGE_NIC_CRQ_HEAD_REG = common dso_local global i32 0, align 4
@HCLGE_NIC_CRQ_TAIL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_cmq_ring*)* @hclge_cmd_config_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_cmd_config_regs(%struct.hclge_cmq_ring* %0) #0 {
  %2 = alloca %struct.hclge_cmq_ring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca %struct.hclge_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.hclge_cmq_ring* %0, %struct.hclge_cmq_ring** %2, align 8
  %7 = load %struct.hclge_cmq_ring*, %struct.hclge_cmq_ring** %2, align 8
  %8 = getelementptr inbounds %struct.hclge_cmq_ring, %struct.hclge_cmq_ring* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.hclge_cmq_ring*, %struct.hclge_cmq_ring** %2, align 8
  %11 = getelementptr inbounds %struct.hclge_cmq_ring, %struct.hclge_cmq_ring* %10, i32 0, i32 2
  %12 = load %struct.hclge_dev*, %struct.hclge_dev** %11, align 8
  store %struct.hclge_dev* %12, %struct.hclge_dev** %4, align 8
  %13 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %14 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %13, i32 0, i32 0
  store %struct.hclge_hw* %14, %struct.hclge_hw** %5, align 8
  %15 = load %struct.hclge_cmq_ring*, %struct.hclge_cmq_ring** %2, align 8
  %16 = getelementptr inbounds %struct.hclge_cmq_ring, %struct.hclge_cmq_ring* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HCLGE_TYPE_CSQ, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %1
  %21 = load %struct.hclge_hw*, %struct.hclge_hw** %5, align 8
  %22 = load i32, i32* @HCLGE_NIC_CSQ_BASEADDR_L_REG, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @lower_32_bits(i32 %23)
  %25 = call i32 @hclge_write_dev(%struct.hclge_hw* %21, i32 %22, i32 %24)
  %26 = load %struct.hclge_hw*, %struct.hclge_hw** %5, align 8
  %27 = load i32, i32* @HCLGE_NIC_CSQ_BASEADDR_H_REG, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @upper_32_bits(i32 %28)
  %30 = call i32 @hclge_write_dev(%struct.hclge_hw* %26, i32 %27, i32 %29)
  %31 = load %struct.hclge_hw*, %struct.hclge_hw** %5, align 8
  %32 = load i32, i32* @HCLGE_NIC_CSQ_DEPTH_REG, align 4
  %33 = call i32 @hclge_read_dev(%struct.hclge_hw* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @HCLGE_NIC_SW_RST_RDY, align 4
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.hclge_cmq_ring*, %struct.hclge_cmq_ring** %2, align 8
  %38 = getelementptr inbounds %struct.hclge_cmq_ring, %struct.hclge_cmq_ring* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @HCLGE_NIC_CMQ_DESC_NUM_S, align 4
  %41 = ashr i32 %39, %40
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load %struct.hclge_hw*, %struct.hclge_hw** %5, align 8
  %45 = load i32, i32* @HCLGE_NIC_CSQ_DEPTH_REG, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @hclge_write_dev(%struct.hclge_hw* %44, i32 %45, i32 %46)
  %48 = load %struct.hclge_hw*, %struct.hclge_hw** %5, align 8
  %49 = load i32, i32* @HCLGE_NIC_CSQ_HEAD_REG, align 4
  %50 = call i32 @hclge_write_dev(%struct.hclge_hw* %48, i32 %49, i32 0)
  %51 = load %struct.hclge_hw*, %struct.hclge_hw** %5, align 8
  %52 = load i32, i32* @HCLGE_NIC_CSQ_TAIL_REG, align 4
  %53 = call i32 @hclge_write_dev(%struct.hclge_hw* %51, i32 %52, i32 0)
  br label %79

54:                                               ; preds = %1
  %55 = load %struct.hclge_hw*, %struct.hclge_hw** %5, align 8
  %56 = load i32, i32* @HCLGE_NIC_CRQ_BASEADDR_L_REG, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @lower_32_bits(i32 %57)
  %59 = call i32 @hclge_write_dev(%struct.hclge_hw* %55, i32 %56, i32 %58)
  %60 = load %struct.hclge_hw*, %struct.hclge_hw** %5, align 8
  %61 = load i32, i32* @HCLGE_NIC_CRQ_BASEADDR_H_REG, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @upper_32_bits(i32 %62)
  %64 = call i32 @hclge_write_dev(%struct.hclge_hw* %60, i32 %61, i32 %63)
  %65 = load %struct.hclge_hw*, %struct.hclge_hw** %5, align 8
  %66 = load i32, i32* @HCLGE_NIC_CRQ_DEPTH_REG, align 4
  %67 = load %struct.hclge_cmq_ring*, %struct.hclge_cmq_ring** %2, align 8
  %68 = getelementptr inbounds %struct.hclge_cmq_ring, %struct.hclge_cmq_ring* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @HCLGE_NIC_CMQ_DESC_NUM_S, align 4
  %71 = ashr i32 %69, %70
  %72 = call i32 @hclge_write_dev(%struct.hclge_hw* %65, i32 %66, i32 %71)
  %73 = load %struct.hclge_hw*, %struct.hclge_hw** %5, align 8
  %74 = load i32, i32* @HCLGE_NIC_CRQ_HEAD_REG, align 4
  %75 = call i32 @hclge_write_dev(%struct.hclge_hw* %73, i32 %74, i32 0)
  %76 = load %struct.hclge_hw*, %struct.hclge_hw** %5, align 8
  %77 = load i32, i32* @HCLGE_NIC_CRQ_TAIL_REG, align 4
  %78 = call i32 @hclge_write_dev(%struct.hclge_hw* %76, i32 %77, i32 0)
  br label %79

79:                                               ; preds = %54, %20
  ret void
}

declare dso_local i32 @hclge_write_dev(%struct.hclge_hw*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @hclge_read_dev(%struct.hclge_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
