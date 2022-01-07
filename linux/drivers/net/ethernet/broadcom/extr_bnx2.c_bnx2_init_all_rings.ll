; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_init_all_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_init_all_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32 }

@BNX2_TSCH_TSS_CFG = common dso_local global i32 0, align 4
@TX_TSS_CID = common dso_local global i32 0, align 4
@BNX2_RLUP_RSS_CONFIG = common dso_local global i32 0, align 4
@BNX2_RXP_SCRATCH_RSS_TBL_SZ = common dso_local global i32 0, align 4
@BNX2_RXP_SCRATCH_RSS_TBL_MAX_ENTRIES = common dso_local global i32 0, align 4
@BNX2_RLUP_RSS_DATA = common dso_local global i32 0, align 4
@BNX2_RLUP_RSS_COMMAND = common dso_local global i32 0, align 4
@BNX2_RLUP_RSS_COMMAND_RSS_WRITE_MASK = common dso_local global i32 0, align 4
@BNX2_RLUP_RSS_COMMAND_WRITE = common dso_local global i32 0, align 4
@BNX2_RLUP_RSS_COMMAND_HASH_MASK = common dso_local global i32 0, align 4
@BNX2_RLUP_RSS_CONFIG_IPV4_RSS_TYPE_ALL_XI = common dso_local global i32 0, align 4
@BNX2_RLUP_RSS_CONFIG_IPV6_RSS_TYPE_ALL_XI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*)* @bnx2_init_all_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_init_all_rings(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  %7 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %8 = call i32 @bnx2_clear_ring_states(%struct.bnx2* %7)
  %9 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %10 = load i32, i32* @BNX2_TSCH_TSS_CFG, align 4
  %11 = call i32 @BNX2_WR(%struct.bnx2* %9, i32 %10, i32 0)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %22, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %15 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @bnx2_init_tx_ring(%struct.bnx2* %19, i32 %20)
  br label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %12

25:                                               ; preds = %12
  %26 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %27 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %32 = load i32, i32* @BNX2_TSCH_TSS_CFG, align 4
  %33 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %34 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = shl i32 %36, 24
  %38 = load i32, i32* @TX_TSS_CID, align 4
  %39 = shl i32 %38, 7
  %40 = or i32 %37, %39
  %41 = call i32 @BNX2_WR(%struct.bnx2* %31, i32 %32, i32 %40)
  br label %42

42:                                               ; preds = %30, %25
  %43 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %44 = load i32, i32* @BNX2_RLUP_RSS_CONFIG, align 4
  %45 = call i32 @BNX2_WR(%struct.bnx2* %43, i32 %44, i32 0)
  %46 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %47 = load i32, i32* @BNX2_RXP_SCRATCH_RSS_TBL_SZ, align 4
  %48 = call i32 @bnx2_reg_wr_ind(%struct.bnx2* %46, i32 %47, i32 0)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %59, %42
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %52 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @bnx2_init_rx_ring(%struct.bnx2* %56, i32 %57)
  br label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %49

62:                                               ; preds = %49
  %63 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %64 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %117

67:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %106, %67
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @BNX2_RXP_SCRATCH_RSS_TBL_MAX_ENTRIES, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %109

72:                                               ; preds = %68
  %73 = load i32, i32* %3, align 4
  %74 = srem i32 %73, 8
  %75 = shl i32 %74, 2
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %78 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = srem i32 %76, %80
  %82 = load i32, i32* %6, align 4
  %83 = shl i32 %81, %82
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %3, align 4
  %87 = srem i32 %86, 8
  %88 = icmp eq i32 %87, 7
  br i1 %88, label %89, label %105

89:                                               ; preds = %72
  %90 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %91 = load i32, i32* @BNX2_RLUP_RSS_DATA, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @BNX2_WR(%struct.bnx2* %90, i32 %91, i32 %92)
  %94 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %95 = load i32, i32* @BNX2_RLUP_RSS_COMMAND, align 4
  %96 = load i32, i32* %3, align 4
  %97 = ashr i32 %96, 3
  %98 = load i32, i32* @BNX2_RLUP_RSS_COMMAND_RSS_WRITE_MASK, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @BNX2_RLUP_RSS_COMMAND_WRITE, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @BNX2_RLUP_RSS_COMMAND_HASH_MASK, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @BNX2_WR(%struct.bnx2* %94, i32 %95, i32 %103)
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %89, %72
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %3, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %3, align 4
  br label %68

109:                                              ; preds = %68
  %110 = load i32, i32* @BNX2_RLUP_RSS_CONFIG_IPV4_RSS_TYPE_ALL_XI, align 4
  %111 = load i32, i32* @BNX2_RLUP_RSS_CONFIG_IPV6_RSS_TYPE_ALL_XI, align 4
  %112 = or i32 %110, %111
  store i32 %112, i32* %4, align 4
  %113 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %114 = load i32, i32* @BNX2_RLUP_RSS_CONFIG, align 4
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @BNX2_WR(%struct.bnx2* %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %109, %62
  ret void
}

declare dso_local i32 @bnx2_clear_ring_states(%struct.bnx2*) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @bnx2_init_tx_ring(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_reg_wr_ind(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @bnx2_init_rx_ring(%struct.bnx2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
