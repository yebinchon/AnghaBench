; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_set_os_driver_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_set_os_driver_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@os_driver_state = common dso_local global i32* null, align 8
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Driver state %08x-->%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_set_os_driver_state(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %7 = call i32 @IS_MF_BD(%struct.bnx2x* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %11 = load i32*, i32** @os_driver_state, align 8
  %12 = call i32 @SHMEM2_HAS(%struct.bnx2x* %10, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %16 = call i64 @IS_VF(%struct.bnx2x* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %9, %2
  br label %39

19:                                               ; preds = %14
  %20 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %21 = load i32*, i32** @os_driver_state, align 8
  %22 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %23 = call i64 @BP_FW_MB_IDX(%struct.bnx2x* %22)
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @SHMEM2_RD(%struct.bnx2x* %20, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @DP(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %32 = load i32*, i32** @os_driver_state, align 8
  %33 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %34 = call i64 @BP_FW_MB_IDX(%struct.bnx2x* %33)
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @SHMEM2_WR(%struct.bnx2x* %31, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @IS_MF_BD(%struct.bnx2x*) #1

declare dso_local i32 @SHMEM2_HAS(%struct.bnx2x*, i32*) #1

declare dso_local i64 @IS_VF(%struct.bnx2x*) #1

declare dso_local i32 @SHMEM2_RD(%struct.bnx2x*, i32) #1

declare dso_local i64 @BP_FW_MB_IDX(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

declare dso_local i32 @SHMEM2_WR(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
