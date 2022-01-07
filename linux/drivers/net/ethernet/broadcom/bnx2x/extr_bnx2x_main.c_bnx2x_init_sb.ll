; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_init_sb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_init_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.hc_status_block_data_e2 = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.hc_status_block_sm*, %struct.TYPE_5__, %struct.TYPE_4__, i8* }
%struct.hc_status_block_sm = type { i32 }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i32, i32, i8*, i8* }
%struct.hc_status_block_data_e1x = type { i32, %struct.TYPE_6__ }

@HC_SEG_ACCESS_NORM = common dso_local global i32 0, align 4
@IGU_SEG_ACCESS_NORM = common dso_local global i32 0, align 4
@SB_ENABLED = common dso_local global i8* null, align 8
@SM_RX_ID = common dso_local global i64 0, align 8
@SM_TX_ID = common dso_local global i64 0, align 8
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Init FW SB %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_init_sb(%struct.bnx2x* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.hc_status_block_data_e2, align 8
  %15 = alloca %struct.hc_status_block_data_e1x, align 8
  %16 = alloca %struct.hc_status_block_sm*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %20 = call i64 @CHIP_INT_MODE_IS_BC(%struct.bnx2x* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* @HC_SEG_ACCESS_NORM, align 4
  store i32 %23, i32* %13, align 4
  br label %26

24:                                               ; preds = %6
  %25 = load i32, i32* @IGU_SEG_ACCESS_NORM, align 4
  store i32 %25, i32* %13, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @bnx2x_zero_fp_sb(%struct.bnx2x* %27, i32 %28)
  %30 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %31 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %75, label %33

33:                                               ; preds = %26
  %34 = call i32 @memset(%struct.hc_status_block_data_e2* %14, i32 0, i32 72)
  %35 = load i8*, i8** @SB_ENABLED, align 8
  %36 = getelementptr inbounds %struct.hc_status_block_data_e2, %struct.hc_status_block_data_e2* %14, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %39 = call i8* @BP_FUNC(%struct.bnx2x* %38)
  %40 = getelementptr inbounds %struct.hc_status_block_data_e2, %struct.hc_status_block_data_e2* %14, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  store i8* %39, i8** %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = getelementptr inbounds %struct.hc_status_block_data_e2, %struct.hc_status_block_data_e2* %14, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load i32, i32* %10, align 4
  %48 = getelementptr inbounds %struct.hc_status_block_data_e2, %struct.hc_status_block_data_e2* %14, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %52 = call i8* @BP_VN(%struct.bnx2x* %51)
  %53 = getelementptr inbounds %struct.hc_status_block_data_e2, %struct.hc_status_block_data_e2* %14, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i8* %52, i8** %55, align 8
  %56 = getelementptr inbounds %struct.hc_status_block_data_e2, %struct.hc_status_block_data_e2* %14, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i8* @U64_HI(i32 %58)
  %60 = getelementptr inbounds %struct.hc_status_block_data_e2, %struct.hc_status_block_data_e2* %14, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store i8* %59, i8** %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i8* @U64_LO(i32 %63)
  %65 = getelementptr inbounds %struct.hc_status_block_data_e2, %struct.hc_status_block_data_e2* %14, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i8* %64, i8** %67, align 8
  %68 = getelementptr inbounds %struct.hc_status_block_data_e2, %struct.hc_status_block_data_e2* %14, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load %struct.hc_status_block_sm*, %struct.hc_status_block_sm** %69, align 8
  store %struct.hc_status_block_sm* %70, %struct.hc_status_block_sm** %16, align 8
  %71 = bitcast %struct.hc_status_block_data_e2* %14 to i32*
  store i32* %71, i32** %18, align 8
  store i32 18, i32* %17, align 4
  %72 = getelementptr inbounds %struct.hc_status_block_data_e2, %struct.hc_status_block_data_e2* %14, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @bnx2x_map_sb_state_machines(i32 %73)
  br label %116

75:                                               ; preds = %26
  %76 = bitcast %struct.hc_status_block_data_e1x* %15 to %struct.hc_status_block_data_e2*
  %77 = call i32 @memset(%struct.hc_status_block_data_e2* %76, i32 0, i32 72)
  %78 = load i8*, i8** @SB_ENABLED, align 8
  %79 = getelementptr inbounds %struct.hc_status_block_data_e1x, %struct.hc_status_block_data_e1x* %15, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  %81 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %82 = call i8* @BP_FUNC(%struct.bnx2x* %81)
  %83 = getelementptr inbounds %struct.hc_status_block_data_e1x, %struct.hc_status_block_data_e1x* %15, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  store i8* %82, i8** %85, align 8
  %86 = getelementptr inbounds %struct.hc_status_block_data_e1x, %struct.hc_status_block_data_e1x* %15, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 255, i32* %88, align 8
  %89 = getelementptr inbounds %struct.hc_status_block_data_e1x, %struct.hc_status_block_data_e1x* %15, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i32 0, i32* %91, align 4
  %92 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %93 = call i8* @BP_VN(%struct.bnx2x* %92)
  %94 = getelementptr inbounds %struct.hc_status_block_data_e1x, %struct.hc_status_block_data_e1x* %15, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  store i8* %93, i8** %96, align 8
  %97 = getelementptr inbounds %struct.hc_status_block_data_e1x, %struct.hc_status_block_data_e1x* %15, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i8* @U64_HI(i32 %99)
  %101 = getelementptr inbounds %struct.hc_status_block_data_e1x, %struct.hc_status_block_data_e1x* %15, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  store i8* %100, i8** %103, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i8* @U64_LO(i32 %104)
  %106 = getelementptr inbounds %struct.hc_status_block_data_e1x, %struct.hc_status_block_data_e1x* %15, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  store i8* %105, i8** %108, align 8
  %109 = getelementptr inbounds %struct.hc_status_block_data_e1x, %struct.hc_status_block_data_e1x* %15, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load %struct.hc_status_block_sm*, %struct.hc_status_block_sm** %110, align 8
  store %struct.hc_status_block_sm* %111, %struct.hc_status_block_sm** %16, align 8
  %112 = bitcast %struct.hc_status_block_data_e1x* %15 to i32*
  store i32* %112, i32** %18, align 8
  store i32 18, i32* %17, align 4
  %113 = getelementptr inbounds %struct.hc_status_block_data_e1x, %struct.hc_status_block_data_e1x* %15, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @bnx2x_map_sb_state_machines(i32 %114)
  br label %116

116:                                              ; preds = %75, %33
  %117 = load %struct.hc_status_block_sm*, %struct.hc_status_block_sm** %16, align 8
  %118 = load i64, i64* @SM_RX_ID, align 8
  %119 = getelementptr inbounds %struct.hc_status_block_sm, %struct.hc_status_block_sm* %117, i64 %118
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @bnx2x_setup_ndsb_state_machine(%struct.hc_status_block_sm* %119, i32 %120, i32 %121)
  %123 = load %struct.hc_status_block_sm*, %struct.hc_status_block_sm** %16, align 8
  %124 = load i64, i64* @SM_TX_ID, align 8
  %125 = getelementptr inbounds %struct.hc_status_block_sm, %struct.hc_status_block_sm* %123, i64 %124
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @bnx2x_setup_ndsb_state_machine(%struct.hc_status_block_sm* %125, i32 %126, i32 %127)
  %129 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @DP(i32 %129, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %130)
  %132 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %133 = load i32, i32* %11, align 4
  %134 = load i32*, i32** %18, align 8
  %135 = load i32, i32* %17, align 4
  %136 = call i32 @bnx2x_wr_fp_sb_data(%struct.bnx2x* %132, i32 %133, i32* %134, i32 %135)
  ret void
}

declare dso_local i64 @CHIP_INT_MODE_IS_BC(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_zero_fp_sb(%struct.bnx2x*, i32) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @memset(%struct.hc_status_block_data_e2*, i32, i32) #1

declare dso_local i8* @BP_FUNC(%struct.bnx2x*) #1

declare dso_local i8* @BP_VN(%struct.bnx2x*) #1

declare dso_local i8* @U64_HI(i32) #1

declare dso_local i8* @U64_LO(i32) #1

declare dso_local i32 @bnx2x_map_sb_state_machines(i32) #1

declare dso_local i32 @bnx2x_setup_ndsb_state_machine(%struct.hc_status_block_sm*, i32, i32) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @bnx2x_wr_fp_sb_data(%struct.bnx2x*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
