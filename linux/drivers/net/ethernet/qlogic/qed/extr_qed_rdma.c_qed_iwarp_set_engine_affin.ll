; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_iwarp_set_engine_affin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_iwarp_set_engine_affin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@QED_BOTH_ENG = common dso_local global i32 0, align 4
@QED_ENG1 = common dso_local global i32 0, align 4
@QED_ENG0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed to set the engine affinity of ppfid %d\0A\00", align 1
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@QED_MSG_SP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"LLH: Set the engine affinity of non-RoCE packets as %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i32)* @qed_iwarp_set_engine_affin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iwarp_set_engine_affin(%struct.qed_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %10 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %51

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @QED_BOTH_ENG, align 4
  store i32 %20, i32* %6, align 4
  br label %32

21:                                               ; preds = %16
  %22 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %23 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @QED_ENG1, align 4
  br label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @QED_ENG0, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %30, %19
  %33 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @qed_llh_set_ppfid_affinity(%struct.qed_dev* %33, i32 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @DP_NOTICE(%struct.qed_dev* %40, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %51

44:                                               ; preds = %32
  %45 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %46 = load i32, i32* @QED_MSG_RDMA, align 4
  %47 = load i32, i32* @QED_MSG_SP, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @DP_VERBOSE(%struct.qed_dev* %45, i32 %48, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %44, %39, %13
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @qed_llh_set_ppfid_affinity(%struct.qed_dev*, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_dev*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
