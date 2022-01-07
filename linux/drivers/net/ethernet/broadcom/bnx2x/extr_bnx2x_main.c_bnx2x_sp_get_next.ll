; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_sp_get_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_sp_get_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eth_spe = type { i32 }
%struct.bnx2x = type { i64, %struct.eth_spe*, %struct.eth_spe*, %struct.eth_spe* }

@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"end of spq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.eth_spe* (%struct.bnx2x*)* @bnx2x_sp_get_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.eth_spe* @bnx2x_sp_get_next(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca %struct.eth_spe*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %4 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %5 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %4, i32 0, i32 1
  %6 = load %struct.eth_spe*, %struct.eth_spe** %5, align 8
  store %struct.eth_spe* %6, %struct.eth_spe** %3, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %7, i32 0, i32 1
  %9 = load %struct.eth_spe*, %struct.eth_spe** %8, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 3
  %12 = load %struct.eth_spe*, %struct.eth_spe** %11, align 8
  %13 = icmp eq %struct.eth_spe* %9, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %16 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %15, i32 0, i32 2
  %17 = load %struct.eth_spe*, %struct.eth_spe** %16, align 8
  %18 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %19 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %18, i32 0, i32 1
  store %struct.eth_spe* %17, %struct.eth_spe** %19, align 8
  %20 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %21 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @BNX2X_MSG_SP, align 4
  %23 = call i32 @DP(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %33

24:                                               ; preds = %1
  %25 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %26 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %25, i32 0, i32 1
  %27 = load %struct.eth_spe*, %struct.eth_spe** %26, align 8
  %28 = getelementptr inbounds %struct.eth_spe, %struct.eth_spe* %27, i32 1
  store %struct.eth_spe* %28, %struct.eth_spe** %26, align 8
  %29 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %30 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  br label %33

33:                                               ; preds = %24, %14
  %34 = load %struct.eth_spe*, %struct.eth_spe** %3, align 8
  ret %struct.eth_spe* %34
}

declare dso_local i32 @DP(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
