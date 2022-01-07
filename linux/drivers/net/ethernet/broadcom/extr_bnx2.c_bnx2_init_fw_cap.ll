; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_init_fw_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_init_fw_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32, i32, i32 }

@BNX2_PHY_FLAG_REMOTE_PHY_CAP = common dso_local global i32 0, align 4
@BNX2_FLAG_CAN_KEEP_VLAN = common dso_local global i32 0, align 4
@BNX2_FLAG_ASF_ENABLE = common dso_local global i32 0, align 4
@BNX2_FW_CAP_MB = common dso_local global i32 0, align 4
@BNX2_FW_CAP_SIGNATURE_MASK = common dso_local global i32 0, align 4
@BNX2_FW_CAP_SIGNATURE = common dso_local global i32 0, align 4
@BNX2_FW_CAP_CAN_KEEP_VLAN = common dso_local global i32 0, align 4
@BNX2_DRV_ACK_CAP_SIGNATURE = common dso_local global i32 0, align 4
@BNX2_PHY_FLAG_SERDES = common dso_local global i32 0, align 4
@BNX2_FW_CAP_REMOTE_PHY_CAPABLE = common dso_local global i32 0, align 4
@BNX2_LINK_STATUS = common dso_local global i32 0, align 4
@BNX2_LINK_STATUS_SERDES_LINK = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@BNX2_DRV_ACK_CAP_MB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*)* @bnx2_init_fw_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_init_fw_cap(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @BNX2_PHY_FLAG_REMOTE_PHY_CAP, align 4
  %7 = xor i32 %6, -1
  %8 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %9 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @BNX2_FLAG_CAN_KEEP_VLAN, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %15 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %19 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @BNX2_FLAG_ASF_ENABLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @BNX2_FLAG_CAN_KEEP_VLAN, align 4
  %26 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %27 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %24, %1
  %31 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %32 = load i32, i32* @BNX2_FW_CAP_MB, align 4
  %33 = call i32 @bnx2_shmem_rd(%struct.bnx2* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @BNX2_FW_CAP_SIGNATURE_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @BNX2_FW_CAP_SIGNATURE, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %110

40:                                               ; preds = %30
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @BNX2_FW_CAP_CAN_KEEP_VLAN, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @BNX2_FW_CAP_CAN_KEEP_VLAN, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load i32, i32* @BNX2_FLAG_CAN_KEEP_VLAN, align 4
  %48 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %49 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @BNX2_DRV_ACK_CAP_SIGNATURE, align 4
  %53 = load i32, i32* @BNX2_FW_CAP_CAN_KEEP_VLAN, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %46, %40
  %58 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %59 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @BNX2_PHY_FLAG_SERDES, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %96

64:                                               ; preds = %57
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @BNX2_FW_CAP_REMOTE_PHY_CAPABLE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %96

69:                                               ; preds = %64
  %70 = load i32, i32* @BNX2_PHY_FLAG_REMOTE_PHY_CAP, align 4
  %71 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %72 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %76 = load i32, i32* @BNX2_LINK_STATUS, align 4
  %77 = call i32 @bnx2_shmem_rd(%struct.bnx2* %75, i32 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @BNX2_LINK_STATUS_SERDES_LINK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %69
  %83 = load i32, i32* @PORT_FIBRE, align 4
  %84 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %85 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  br label %90

86:                                               ; preds = %69
  %87 = load i32, i32* @PORT_TP, align 4
  %88 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %89 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %82
  %91 = load i32, i32* @BNX2_DRV_ACK_CAP_SIGNATURE, align 4
  %92 = load i32, i32* @BNX2_FW_CAP_REMOTE_PHY_CAPABLE, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %4, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %90, %64, %57
  %97 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %98 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @netif_running(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %96
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %107 = load i32, i32* @BNX2_DRV_ACK_CAP_MB, align 4
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @bnx2_shmem_wr(%struct.bnx2* %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %39, %105, %102, %96
  ret void
}

declare dso_local i32 @bnx2_shmem_rd(%struct.bnx2*, i32) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @bnx2_shmem_wr(%struct.bnx2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
