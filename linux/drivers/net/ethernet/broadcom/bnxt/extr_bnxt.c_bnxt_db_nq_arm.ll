; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_db_nq_arm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_db_nq_arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.bnxt_db_info = type { i32 }

@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, %struct.bnxt_db_info*, i32)* @bnxt_db_nq_arm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_db_nq_arm(%struct.bnxt* %0, %struct.bnxt_db_info* %1, i32 %2) #0 {
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca %struct.bnxt_db_info*, align 8
  %6 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store %struct.bnxt_db_info* %1, %struct.bnxt_db_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %8 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.bnxt_db_info*, %struct.bnxt_db_info** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @BNXT_DB_NQ_ARM_P5(%struct.bnxt_db_info* %14, i32 %15)
  br label %21

17:                                               ; preds = %3
  %18 = load %struct.bnxt_db_info*, %struct.bnxt_db_info** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @BNXT_DB_CQ_ARM(%struct.bnxt_db_info* %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %13
  ret void
}

declare dso_local i32 @BNXT_DB_NQ_ARM_P5(%struct.bnxt_db_info*, i32) #1

declare dso_local i32 @BNXT_DB_CQ_ARM(%struct.bnxt_db_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
