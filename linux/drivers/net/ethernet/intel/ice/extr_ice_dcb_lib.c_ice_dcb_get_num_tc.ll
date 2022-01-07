; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb_lib.c_ice_dcb_get_num_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb_lib.c_ice_dcb_get_num_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_dcbx_cfg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@CEE_DCBX_MAX_PRIO = common dso_local global i32 0, align 4
@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Non-contiguous TCs - Disabling DCB\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_dcb_get_num_tc(%struct.ice_dcbx_cfg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_dcbx_cfg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ice_dcbx_cfg* %0, %struct.ice_dcbx_cfg** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %24, %1
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @CEE_DCBX_MAX_PRIO, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %3, align 8
  %14 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %12
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %8

27:                                               ; preds = %8
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %49, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @BIT(i32 %34)
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %46

44:                                               ; preds = %38
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %58

46:                                               ; preds = %41
  br label %48

47:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %46
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %28

52:                                               ; preds = %28
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store i32 1, i32* %6, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %44
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
