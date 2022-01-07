; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_wmm_eval_downgrade_ac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_wmm_eval_downgrade_ac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mwifiex_wmm_ac_status* }
%struct.mwifiex_wmm_ac_status = type { i32, i32 }

@WMM_AC_BK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, i32)* @mwifiex_wmm_eval_downgrade_ac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_wmm_eval_downgrade_ac(%struct.mwifiex_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mwifiex_wmm_ac_status*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %10 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.mwifiex_wmm_ac_status*, %struct.mwifiex_wmm_ac_status** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.mwifiex_wmm_ac_status, %struct.mwifiex_wmm_ac_status* %12, i64 %14
  store %struct.mwifiex_wmm_ac_status* %15, %struct.mwifiex_wmm_ac_status** %8, align 8
  %16 = load %struct.mwifiex_wmm_ac_status*, %struct.mwifiex_wmm_ac_status** %8, align 8
  %17 = getelementptr inbounds %struct.mwifiex_wmm_ac_status, %struct.mwifiex_wmm_ac_status* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %3, align 4
  br label %54

22:                                               ; preds = %2
  %23 = load i32, i32* @WMM_AC_BK, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @WMM_AC_BK, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %49, %22
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %25
  %30 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %31 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.mwifiex_wmm_ac_status*, %struct.mwifiex_wmm_ac_status** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.mwifiex_wmm_ac_status, %struct.mwifiex_wmm_ac_status* %33, i64 %35
  store %struct.mwifiex_wmm_ac_status* %36, %struct.mwifiex_wmm_ac_status** %8, align 8
  %37 = load %struct.mwifiex_wmm_ac_status*, %struct.mwifiex_wmm_ac_status** %8, align 8
  %38 = getelementptr inbounds %struct.mwifiex_wmm_ac_status, %struct.mwifiex_wmm_ac_status* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %29
  %42 = load %struct.mwifiex_wmm_ac_status*, %struct.mwifiex_wmm_ac_status** %8, align 8
  %43 = getelementptr inbounds %struct.mwifiex_wmm_ac_status, %struct.mwifiex_wmm_ac_status* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %41, %29
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %25

52:                                               ; preds = %25
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %20
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
