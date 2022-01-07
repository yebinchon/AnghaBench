; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_fw_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_fw_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32 }

@BNX2_DRV_MB = common dso_local global i32 0, align 4
@BNX2_FW_ACK_TIME_OUT_MS = common dso_local global i32 0, align 4
@BNX2_FW_MB = common dso_local global i32 0, align 4
@BNX2_FW_MSG_ACK = common dso_local global i32 0, align 4
@BNX2_DRV_MSG_SEQ = common dso_local global i32 0, align 4
@BNX2_DRV_MSG_DATA = common dso_local global i32 0, align 4
@BNX2_DRV_MSG_DATA_WAIT0 = common dso_local global i32 0, align 4
@BNX2_DRV_MSG_CODE = common dso_local global i32 0, align 4
@BNX2_DRV_MSG_CODE_FW_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"fw sync timeout, reset code = %x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@BNX2_FW_MSG_STATUS_MASK = common dso_local global i32 0, align 4
@BNX2_FW_MSG_STATUS_OK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, i32, i32, i32)* @bnx2_fw_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_fw_sync(%struct.bnx2* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %13 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %17 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %23 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %25 = load i32, i32* @BNX2_DRV_MB, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @bnx2_shmem_wr(%struct.bnx2* %24, i32 %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %101

31:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %51, %31
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @BNX2_FW_ACK_TIME_OUT_MS, align 4
  %35 = sdiv i32 %34, 10
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %32
  %38 = call i32 @msleep(i32 10)
  %39 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %40 = load i32, i32* @BNX2_FW_MB, align 4
  %41 = call i32 @bnx2_shmem_rd(%struct.bnx2* %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @BNX2_FW_MSG_ACK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @BNX2_DRV_MSG_SEQ, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %54

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %32

54:                                               ; preds = %49, %32
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @BNX2_DRV_MSG_DATA, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @BNX2_DRV_MSG_DATA_WAIT0, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %101

61:                                               ; preds = %54
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @BNX2_FW_MSG_ACK, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @BNX2_DRV_MSG_SEQ, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %64, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %61
  %70 = load i32, i32* @BNX2_DRV_MSG_CODE, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* @BNX2_DRV_MSG_CODE_FW_TIMEOUT, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %78 = load i32, i32* @BNX2_DRV_MB, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @bnx2_shmem_wr(%struct.bnx2* %77, i32 %78, i32 %79)
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %69
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %87 = call i32 @bnx2_dump_mcp_state(%struct.bnx2* %86)
  br label %88

88:                                               ; preds = %83, %69
  %89 = load i32, i32* @EBUSY, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %101

91:                                               ; preds = %61
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @BNX2_FW_MSG_STATUS_MASK, align 4
  %94 = and i32 %92, %93
  %95 = load i32, i32* @BNX2_FW_MSG_STATUS_OK, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %5, align 4
  br label %101

100:                                              ; preds = %91
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %100, %97, %88, %60, %30
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @bnx2_shmem_wr(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @bnx2_shmem_rd(%struct.bnx2*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @bnx2_dump_mcp_state(%struct.bnx2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
