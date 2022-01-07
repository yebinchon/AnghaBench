; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }

@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"PF releasing vf %d\0A\00", align 1
@CHANNEL_TLV_PF_RELEASE_VF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"VF[%d] Failed to allocate resources for release op- rc=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_vf_release(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_virtf*, align 8
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %4, align 8
  %6 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %7 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %8 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @DP(i32 %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %12 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %13 = load i32, i32* @CHANNEL_TLV_PF_RELEASE_VF, align 4
  %14 = call i32 @bnx2x_lock_vf_pf_channel(%struct.bnx2x* %11, %struct.bnx2x_virtf* %12, i32 %13)
  %15 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %16 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %17 = call i32 @bnx2x_vf_free(%struct.bnx2x* %15, %struct.bnx2x_virtf* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %23 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @WARN(i32 %21, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %20, %2
  %28 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %29 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %30 = load i32, i32* @CHANNEL_TLV_PF_RELEASE_VF, align 4
  %31 = call i32 @bnx2x_unlock_vf_pf_channel(%struct.bnx2x* %28, %struct.bnx2x_virtf* %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @bnx2x_lock_vf_pf_channel(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @bnx2x_vf_free(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @bnx2x_unlock_vf_pf_channel(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
