; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_flr_clnup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_flr_clnup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.bnx2x_virtf = type { i32 }

@state = common dso_local global i32 0, align 4
@VF_RESET = common dso_local global i64 0, align 8
@flr_clnup_stage = common dso_local global i32 0, align 4
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"next vf to cleanup: %d. Num of vfs: %d\0A\00", align 1
@CHANNEL_TLV_FLR = common dso_local global i32 0, align 4
@BNX2X_MSG_MCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"DRV_STATUS_VF_DISABLED ACK for vfs 0x%x 0x%x\0A\00", align 1
@FLRD_VFS_DWORDS = common dso_local global i32 0, align 4
@drv_ack_vf_disabled = common dso_local global i32** null, align 8
@DRV_MSG_CODE_VF_DISABLED_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_vf_flr_clnup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_flr_clnup(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca %struct.bnx2x_virtf*, align 8
  %4 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %46, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = call i32 @BNX2X_NR_VIRTFN(%struct.bnx2x* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %49

10:                                               ; preds = %5
  %11 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @state, align 4
  %14 = call i64 @bnx2x_vf(%struct.bnx2x* %11, i32 %12, i32 %13)
  %15 = load i64, i64* @VF_RESET, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %10
  %18 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @flr_clnup_stage, align 4
  %21 = call i64 @bnx2x_vf(%struct.bnx2x* %18, i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17, %10
  br label %46

24:                                               ; preds = %17
  %25 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %28 = call i32 @BNX2X_NR_VIRTFN(%struct.bnx2x* %27)
  %29 = call i32 @DP(i32 %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %28)
  %30 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call %struct.bnx2x_virtf* @BP_VF(%struct.bnx2x* %30, i32 %31)
  store %struct.bnx2x_virtf* %32, %struct.bnx2x_virtf** %3, align 8
  %33 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %34 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %3, align 8
  %35 = load i32, i32* @CHANNEL_TLV_FLR, align 4
  %36 = call i32 @bnx2x_lock_vf_pf_channel(%struct.bnx2x* %33, %struct.bnx2x_virtf* %34, i32 %35)
  %37 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %38 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %3, align 8
  %39 = call i32 @bnx2x_vf_flr(%struct.bnx2x* %37, %struct.bnx2x_virtf* %38)
  %40 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %3, align 8
  %41 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  %42 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %43 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %3, align 8
  %44 = load i32, i32* @CHANNEL_TLV_FLR, align 4
  %45 = call i32 @bnx2x_unlock_vf_pf_channel(%struct.bnx2x* %42, %struct.bnx2x_virtf* %43, i32 %44)
  br label %46

46:                                               ; preds = %24, %23
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %5

49:                                               ; preds = %5
  %50 = load i32, i32* @BNX2X_MSG_MCP, align 4
  %51 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %52 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %59 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @DP(i32 %50, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %91, %49
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @FLRD_VFS_DWORDS, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %94

70:                                               ; preds = %66
  %71 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %72 = load i32**, i32*** @drv_ack_vf_disabled, align 8
  %73 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %74 = call i64 @BP_FW_MB_IDX(%struct.bnx2x* %73)
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %82 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @SHMEM2_WR(%struct.bnx2x* %71, i32 %80, i32 %89)
  br label %91

91:                                               ; preds = %70
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  br label %66

94:                                               ; preds = %66
  %95 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %96 = load i32, i32* @DRV_MSG_CODE_VF_DISABLED_DONE, align 4
  %97 = call i32 @bnx2x_fw_command(%struct.bnx2x* %95, i32 %96, i32 0)
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %114, %94
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @FLRD_VFS_DWORDS, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %98
  %103 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %104 = load i32**, i32*** @drv_ack_vf_disabled, align 8
  %105 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %106 = call i64 @BP_FW_MB_IDX(%struct.bnx2x* %105)
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @SHMEM2_WR(%struct.bnx2x* %103, i32 %112, i32 0)
  br label %114

114:                                              ; preds = %102
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %4, align 4
  br label %98

117:                                              ; preds = %98
  ret void
}

declare dso_local i32 @BNX2X_NR_VIRTFN(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_vf(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

declare dso_local %struct.bnx2x_virtf* @BP_VF(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_lock_vf_pf_channel(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @bnx2x_vf_flr(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @bnx2x_unlock_vf_pf_channel(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @SHMEM2_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i64 @BP_FW_MB_IDX(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_fw_command(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
