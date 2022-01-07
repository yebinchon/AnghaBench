; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encx24j600_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EUDAST = common dso_local global i32 0, align 4
@EUDAST_TEST_VAL = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@ESTAT = common dso_local global i32 0, align 4
@CLKRDY = common dso_local global i64 0, align 8
@SETETHRST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.encx24j600_priv*)* @encx24j600_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encx24j600_soft_reset(%struct.encx24j600_priv* %0) #0 {
  %2 = alloca %struct.encx24j600_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.encx24j600_priv* %0, %struct.encx24j600_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %7 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @regcache_cache_bypass(i32 %9, i32 1)
  store i32 10, i32* %4, align 4
  br label %11

11:                                               ; preds = %28, %1
  %12 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %13 = load i32, i32* @EUDAST, align 4
  %14 = load i64, i64* @EUDAST_TEST_VAL, align 8
  %15 = call i32 @encx24j600_write_reg(%struct.encx24j600_priv* %12, i32 %13, i64 %14)
  %16 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %17 = load i32, i32* @EUDAST, align 4
  %18 = call i64 @encx24j600_read_reg(%struct.encx24j600_priv* %16, i32 %17)
  store i64 %18, i64* %5, align 8
  %19 = call i32 @usleep_range(i32 25, i32 100)
  br label %20

20:                                               ; preds = %11
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @EUDAST_TEST_VAL, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i1 [ false, %20 ], [ %27, %24 ]
  br i1 %29, label %11, label %30

30:                                               ; preds = %28
  %31 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %32 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @regcache_cache_bypass(i32 %34, i32 0)
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %77

41:                                               ; preds = %30
  store i32 10, i32* %4, align 4
  br label %42

42:                                               ; preds = %55, %41
  %43 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %44 = load i32, i32* @ESTAT, align 4
  %45 = call i64 @encx24j600_read_reg(%struct.encx24j600_priv* %43, i32 %44)
  %46 = load i64, i64* @CLKRDY, align 8
  %47 = and i64 %45, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %49, %42
  %54 = phi i1 [ false, %42 ], [ %52, %49 ]
  br i1 %54, label %55, label %57

55:                                               ; preds = %53
  %56 = call i32 @usleep_range(i32 25, i32 100)
  br label %42

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @ETIMEDOUT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %77

63:                                               ; preds = %57
  %64 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %65 = load i32, i32* @SETETHRST, align 4
  %66 = call i32 @encx24j600_cmd(%struct.encx24j600_priv* %64, i32 %65)
  %67 = call i32 @usleep_range(i32 25, i32 100)
  %68 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %69 = load i32, i32* @EUDAST, align 4
  %70 = call i64 @encx24j600_read_reg(%struct.encx24j600_priv* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %77

75:                                               ; preds = %63
  %76 = call i32 @usleep_range(i32 256, i32 1000)
  br label %77

77:                                               ; preds = %75, %72, %60, %38
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @regcache_cache_bypass(i32, i32) #1

declare dso_local i32 @encx24j600_write_reg(%struct.encx24j600_priv*, i32, i64) #1

declare dso_local i64 @encx24j600_read_reg(%struct.encx24j600_priv*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @encx24j600_cmd(%struct.encx24j600_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
