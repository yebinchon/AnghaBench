; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_release_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_release_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }
%struct.bnx2x_vf_mbx = type { i32 }

@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"VF[%d] VF_RELEASE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_mbx*)* @bnx2x_vf_mbx_release_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_mbx_release_vf(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.bnx2x_vf_mbx* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_virtf*, align 8
  %6 = alloca %struct.bnx2x_vf_mbx*, align 8
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %5, align 8
  store %struct.bnx2x_vf_mbx* %2, %struct.bnx2x_vf_mbx** %6, align 8
  %8 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %9 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %10 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @DP(i32 %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %14 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %15 = call i32 @bnx2x_vf_free(%struct.bnx2x* %13, %struct.bnx2x_virtf* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %17 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @bnx2x_vf_mbx_resp(%struct.bnx2x* %16, %struct.bnx2x_virtf* %17, i32 %18)
  ret void
}

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @bnx2x_vf_free(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @bnx2x_vf_mbx_resp(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
