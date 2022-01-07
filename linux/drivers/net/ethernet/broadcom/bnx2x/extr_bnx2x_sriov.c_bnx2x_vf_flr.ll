; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_flr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_flr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32, i32 }

@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vf[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"vf[%d:%d] failed flr: rc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_vf_flr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_flr(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_virtf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %4, align 8
  %7 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %8 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %9 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @DP(i32 %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %26, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %15 = call i32 @vf_rxq_count(%struct.bnx2x_virtf* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %19 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @bnx2x_vf_queue_flr(%struct.bnx2x* %18, %struct.bnx2x_virtf* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %46

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %12

29:                                               ; preds = %12
  %30 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %31 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %32 = call i32 @bnx2x_vf_mcast(%struct.bnx2x* %30, %struct.bnx2x_virtf* %31, i32* null, i32 0, i32 1)
  %33 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %34 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %35 = call i32 @bnx2x_vf_flr_clnup_hw(%struct.bnx2x* %33, %struct.bnx2x_virtf* %34)
  %36 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %37 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %38 = call i32 @bnx2x_vf_free_resc(%struct.bnx2x* %36, %struct.bnx2x_virtf* %37)
  %39 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %40 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %42 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %43 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bnx2x_vf_enable_mbx(%struct.bnx2x* %41, i32 %44)
  br label %53

46:                                               ; preds = %24
  %47 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %48 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %46, %29
  ret void
}

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @vf_rxq_count(%struct.bnx2x_virtf*) #1

declare dso_local i32 @bnx2x_vf_queue_flr(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @bnx2x_vf_mcast(%struct.bnx2x*, %struct.bnx2x_virtf*, i32*, i32, i32) #1

declare dso_local i32 @bnx2x_vf_flr_clnup_hw(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @bnx2x_vf_free_resc(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @bnx2x_vf_enable_mbx(%struct.bnx2x*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
