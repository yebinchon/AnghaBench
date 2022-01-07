; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ulp.c_bnxt_unregister_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ulp.c_bnxt_unregister_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_en_dev = type { %struct.TYPE_2__*, %struct.bnxt_ulp*, %struct.net_device* }
%struct.TYPE_2__ = type { {}* }
%struct.bnxt_ulp = type { i32, i32*, i64, i32, i64 }
%struct.net_device = type { i32 }
%struct.bnxt = type { i32 }

@BNXT_MAX_ULP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ulp id %d not registered\0A\00", align 1
@BNXT_ROCE_ULP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_en_dev*, i32)* @bnxt_unregister_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_unregister_dev(%struct.bnxt_en_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt_en_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.bnxt*, align 8
  %8 = alloca %struct.bnxt_ulp*, align 8
  %9 = alloca i32, align 4
  store %struct.bnxt_en_dev* %0, %struct.bnxt_en_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %4, align 8
  %11 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %10, i32 0, i32 2
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.bnxt* @netdev_priv(%struct.net_device* %13)
  store %struct.bnxt* %14, %struct.bnxt** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = call i32 (...) @ASSERT_RTNL()
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @BNXT_MAX_ULP, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %94

22:                                               ; preds = %2
  %23 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %4, align 8
  %24 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %23, i32 0, i32 1
  %25 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %25, i64 %27
  store %struct.bnxt_ulp* %28, %struct.bnxt_ulp** %8, align 8
  %29 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %8, align 8
  %30 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @rcu_access_pointer(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %22
  %35 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %36 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @netdev_err(i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %94

42:                                               ; preds = %22
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @BNXT_ROCE_ULP, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %8, align 8
  %48 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %4, align 8
  %53 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = bitcast {}** %55 to i32 (%struct.bnxt_en_dev*, i32)**
  %57 = load i32 (%struct.bnxt_en_dev*, i32)*, i32 (%struct.bnxt_en_dev*, i32)** %56, align 8
  %58 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 %57(%struct.bnxt_en_dev* %58, i32 %59)
  br label %61

61:                                               ; preds = %51, %46, %42
  %62 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %8, align 8
  %63 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.bnxt*, %struct.bnxt** %7, align 8
  %68 = call i32 @bnxt_hwrm_func_rgtr_async_events(%struct.bnxt* %67, i32* null, i32 0)
  br label %69

69:                                               ; preds = %66, %61
  %70 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %8, align 8
  %71 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @RCU_INIT_POINTER(i32 %72, i32* null)
  %74 = call i32 (...) @synchronize_rcu()
  %75 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %8, align 8
  %76 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %8, align 8
  %78 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %77, i32 0, i32 1
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %89, %69
  %80 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %8, align 8
  %81 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %80, i32 0, i32 0
  %82 = call i64 @atomic_read(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 10
  br label %87

87:                                               ; preds = %84, %79
  %88 = phi i1 [ false, %79 ], [ %86, %84 ]
  br i1 %88, label %89, label %93

89:                                               ; preds = %87
  %90 = call i32 @msleep(i32 100)
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %79

93:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %34, %19
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @rcu_access_pointer(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @bnxt_hwrm_func_rgtr_async_events(%struct.bnxt*, i32*, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
