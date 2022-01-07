; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_wr_sp_sb_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_wr_sp_sb_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.hc_sp_status_block_data = type { i32 }

@BAR_CSTRORM_INTMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.hc_sp_status_block_data*)* @bnx2x_wr_sp_sb_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_wr_sp_sb_data(%struct.bnx2x* %0, %struct.hc_sp_status_block_data* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.hc_sp_status_block_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.hc_sp_status_block_data* %1, %struct.hc_sp_status_block_data** %4, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %8 = call i32 @BP_FUNC(%struct.bnx2x* %7)
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %30, %2
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 1
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %15 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @CSTORM_SP_STATUS_BLOCK_DATA_OFFSET(i32 %16)
  %18 = add nsw i64 %15, %17
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = add i64 %18, %21
  %23 = load %struct.hc_sp_status_block_data*, %struct.hc_sp_status_block_data** %4, align 8
  %24 = bitcast %struct.hc_sp_status_block_data* %23 to i32*
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @REG_WR(%struct.bnx2x* %14, i64 %22, i32 %28)
  br label %30

30:                                               ; preds = %13
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %9

33:                                               ; preds = %9
  ret void
}

declare dso_local i32 @BP_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i64 @CSTORM_SP_STATUS_BLOCK_DATA_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
