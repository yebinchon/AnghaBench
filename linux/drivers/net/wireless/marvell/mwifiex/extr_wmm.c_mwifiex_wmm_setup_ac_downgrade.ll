; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_wmm_setup_ac_downgrade.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_wmm_setup_ac_downgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"info: WMM: AC Priorities:\09BK(0), BE(1), VI(2), VO(3)\0A\00", align 1
@WMM_AC_BK = common dso_local global i32 0, align 4
@WMM_AC_VO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"info: WMM: AC PRIO %d maps to %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_wmm_setup_ac_downgrade(%struct.mwifiex_private* %0) #0 {
  %2 = alloca %struct.mwifiex_private*, align 8
  %3 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %2, align 8
  %4 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %5 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @INFO, align 4
  %8 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %6, i32 %7, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %10 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @WMM_AC_BK, align 4
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %28, %13
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @WMM_AC_VO, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %22 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 %20, i32* %27, align 4
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %15

31:                                               ; preds = %15
  br label %67

32:                                               ; preds = %1
  %33 = load i32, i32* @WMM_AC_BK, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %63, %32
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @WMM_AC_VO, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %34
  %39 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @mwifiex_wmm_eval_downgrade_ac(%struct.mwifiex_private* %39, i32 %40)
  %42 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %43 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %41, i32* %48, align 4
  %49 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %50 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @INFO, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %55 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %51, i32 %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %61)
  br label %63

63:                                               ; preds = %38
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %34

66:                                               ; preds = %34
  br label %67

67:                                               ; preds = %66, %31
  ret void
}

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, ...) #1

declare dso_local i32 @mwifiex_wmm_eval_downgrade_ac(%struct.mwifiex_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
