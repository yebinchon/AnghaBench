; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.h_bnx2x_igu_ack_sb_gen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.h_bnx2x_igu_ack_sb_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.igu_regular = type { i32, i32 }

@IGU_REGULAR_SB_INDEX_SHIFT = common dso_local global i32 0, align 4
@IGU_REGULAR_SEGMENT_ACCESS_SHIFT = common dso_local global i32 0, align 4
@IGU_REGULAR_BUPDATE_SHIFT = common dso_local global i32 0, align 4
@IGU_REGULAR_ENABLE_INT_SHIFT = common dso_local global i32 0, align 4
@NETIF_MSG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"write 0x%08x to IGU addr 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32, i32, i32, i32, i32, i32)* @bnx2x_igu_ack_sb_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_igu_ack_sb_gen(%struct.bnx2x* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.bnx2x*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.igu_regular, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = bitcast %struct.igu_regular* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 8, i1 false)
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @IGU_REGULAR_SB_INDEX_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @IGU_REGULAR_SEGMENT_ACCESS_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = or i32 %19, %22
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @IGU_REGULAR_BUPDATE_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %23, %26
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @IGU_REGULAR_ENABLE_INT_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %27, %30
  %32 = getelementptr inbounds %struct.igu_regular, %struct.igu_regular* %15, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @NETIF_MSG_INTR, align 4
  %34 = getelementptr inbounds %struct.igu_regular, %struct.igu_regular* %15, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @DP(i32 %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %39 = load i32, i32* %14, align 4
  %40 = getelementptr inbounds %struct.igu_regular, %struct.igu_regular* %15, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @REG_WR(%struct.bnx2x* %38, i32 %39, i32 %41)
  %43 = call i32 (...) @barrier()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DP(i32, i8*, i32, i32) #2

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #2

declare dso_local i32 @barrier(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
