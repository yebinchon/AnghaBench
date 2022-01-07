; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iscsi.c_qed_iscsi_change_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iscsi.c_qed_iscsi_change_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_hash_iscsi_con = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Failed to find connection for handle %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i32, i32*)* @qed_iscsi_change_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iscsi_change_mac(%struct.qed_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.qed_hash_iscsi_con*, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.qed_hash_iscsi_con* @qed_iscsi_get_hash(%struct.qed_dev* %9, i32 %10)
  store %struct.qed_hash_iscsi_con* %11, %struct.qed_hash_iscsi_con** %8, align 8
  %12 = load %struct.qed_hash_iscsi_con*, %struct.qed_hash_iscsi_con** %8, align 8
  %13 = icmp ne %struct.qed_hash_iscsi_con* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @DP_NOTICE(%struct.qed_dev* %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %28

20:                                               ; preds = %3
  %21 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %22 = call i32 @QED_AFFIN_HWFN(%struct.qed_dev* %21)
  %23 = load %struct.qed_hash_iscsi_con*, %struct.qed_hash_iscsi_con** %8, align 8
  %24 = getelementptr inbounds %struct.qed_hash_iscsi_con, %struct.qed_hash_iscsi_con* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %27 = call i32 @qed_sp_iscsi_mac_update(i32 %22, i32 %25, i32 %26, i32* null)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %20, %14
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.qed_hash_iscsi_con* @qed_iscsi_get_hash(%struct.qed_dev*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*, i32) #1

declare dso_local i32 @qed_sp_iscsi_mac_update(i32, i32, i32, i32*) #1

declare dso_local i32 @QED_AFFIN_HWFN(%struct.qed_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
