; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel-lpss.c_intel_lpss_ltr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel-lpss.c_intel_lpss_ltr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.intel_lpss = type { i32, i64 }

@LPSS_PRIV_ACTIVELTR = common dso_local global i64 0, align 8
@PM_QOS_LATENCY_ANY = common dso_local global i32 0, align 4
@LPSS_PRIV_LTR_REQ = common dso_local global i32 0, align 4
@LPSS_PRIV_LTR_SCALE_MASK = common dso_local global i32 0, align 4
@LPSS_PRIV_LTR_VALUE_MASK = common dso_local global i32 0, align 4
@LPSS_PRIV_LTR_SCALE_32US = common dso_local global i32 0, align 4
@LPSS_PRIV_LTR_SCALE_1US = common dso_local global i32 0, align 4
@LPSS_PRIV_IDLELTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32)* @intel_lpss_ltr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_lpss_ltr_set(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_lpss*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.intel_lpss* @dev_get_drvdata(%struct.device* %7)
  store %struct.intel_lpss* %8, %struct.intel_lpss** %5, align 8
  %9 = load %struct.intel_lpss*, %struct.intel_lpss** %5, align 8
  %10 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LPSS_PRIV_ACTIVELTR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PM_QOS_LATENCY_ANY, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18, %2
  %22 = load i32, i32* @LPSS_PRIV_LTR_REQ, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %55

26:                                               ; preds = %18
  %27 = load i32, i32* @LPSS_PRIV_LTR_REQ, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @LPSS_PRIV_LTR_SCALE_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @LPSS_PRIV_LTR_VALUE_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @LPSS_PRIV_LTR_VALUE_MASK, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %26
  %42 = load i32, i32* @LPSS_PRIV_LTR_SCALE_32US, align 4
  %43 = load i32, i32* %4, align 4
  %44 = ashr i32 %43, 5
  %45 = or i32 %42, %44
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %54

48:                                               ; preds = %26
  %49 = load i32, i32* @LPSS_PRIV_LTR_SCALE_1US, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %48, %41
  br label %55

55:                                               ; preds = %54, %21
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.intel_lpss*, %struct.intel_lpss** %5, align 8
  %58 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %79

62:                                               ; preds = %55
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.intel_lpss*, %struct.intel_lpss** %5, align 8
  %65 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @LPSS_PRIV_ACTIVELTR, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %63, i64 %68)
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.intel_lpss*, %struct.intel_lpss** %5, align 8
  %72 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @LPSS_PRIV_IDLELTR, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 %70, i64 %75)
  %77 = load %struct.intel_lpss*, %struct.intel_lpss** %5, align 8
  %78 = call i32 @intel_lpss_cache_ltr(%struct.intel_lpss* %77)
  br label %79

79:                                               ; preds = %62, %61
  ret void
}

declare dso_local %struct.intel_lpss* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @intel_lpss_cache_ltr(%struct.intel_lpss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
