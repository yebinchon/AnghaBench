; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_storm_memset_hc_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_storm_memset_hc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@HC_INDEX_DATA_HC_ENABLED_SHIFT = common dso_local global i32 0, align 4
@BAR_CSTRORM_INTMEM = common dso_local global i32 0, align 4
@HC_INDEX_DATA_HC_ENABLED = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"port %x fw_sb_id %d sb_index %d disable %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32, i32, i32, i32)* @storm_memset_hc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @storm_memset_hc_disable(%struct.bnx2x* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @HC_INDEX_DATA_HC_ENABLED_SHIFT, align 4
  %19 = shl i32 1, %18
  br label %20

20:                                               ; preds = %17, %16
  %21 = phi i32 [ 0, %16 ], [ %19, %17 ]
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* @BAR_CSTRORM_INTMEM, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @CSTORM_STATUS_BLOCK_DATA_FLAGS_OFFSET(i32 %23, i32 %24)
  %26 = add nsw i32 %22, %25
  store i32 %26, i32* %12, align 4
  %27 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @REG_RD8(%struct.bnx2x* %27, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* @HC_INDEX_DATA_HC_ENABLED, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %13, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %13, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %13, align 4
  %37 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @REG_WR8(%struct.bnx2x* %37, i32 %38, i32 %39)
  %41 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @DP(i32 %41, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %44, i32 %45)
  ret void
}

declare dso_local i32 @CSTORM_STATUS_BLOCK_DATA_FLAGS_OFFSET(i32, i32) #1

declare dso_local i32 @REG_RD8(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_WR8(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @DP(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
