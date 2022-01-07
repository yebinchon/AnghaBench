; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ulp.c_bnxt_register_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ulp.c_bnxt_register_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_en_dev = type { %struct.bnxt_ulp*, %struct.net_device* }
%struct.bnxt_ulp = type { i32, i8*, i32 }
%struct.net_device = type { i32 }
%struct.bnxt_ulp_ops = type { i32 }
%struct.bnxt = type { i32, i32, i32 }

@BNXT_MAX_ULP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ulp id %d already registered\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@BNXT_ROCE_ULP = common dso_local global i32 0, align 4
@BNXT_MIN_ROCE_STAT_CTXS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BNXT_STATE_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_en_dev*, i32, %struct.bnxt_ulp_ops*, i8*)* @bnxt_register_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_register_dev(%struct.bnxt_en_dev* %0, i32 %1, %struct.bnxt_ulp_ops* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt_en_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnxt_ulp_ops*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.bnxt*, align 8
  %12 = alloca %struct.bnxt_ulp*, align 8
  %13 = alloca i32, align 4
  store %struct.bnxt_en_dev* %0, %struct.bnxt_en_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.bnxt_ulp_ops* %2, %struct.bnxt_ulp_ops** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %6, align 8
  %15 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %14, i32 0, i32 1
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %10, align 8
  %17 = load %struct.net_device*, %struct.net_device** %10, align 8
  %18 = call %struct.bnxt* @netdev_priv(%struct.net_device* %17)
  store %struct.bnxt* %18, %struct.bnxt** %11, align 8
  %19 = call i32 (...) @ASSERT_RTNL()
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @BNXT_MAX_ULP, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %92

26:                                               ; preds = %4
  %27 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %6, align 8
  %28 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %27, i32 0, i32 0
  %29 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %29, i64 %31
  store %struct.bnxt_ulp* %32, %struct.bnxt_ulp** %12, align 8
  %33 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %12, align 8
  %34 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @rcu_access_pointer(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %26
  %39 = load %struct.bnxt*, %struct.bnxt** %11, align 8
  %40 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @netdev_err(i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %92

46:                                               ; preds = %26
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @BNXT_ROCE_ULP, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %46
  %51 = load %struct.bnxt*, %struct.bnxt** %11, align 8
  %52 = call i32 @bnxt_get_max_func_stat_ctxs(%struct.bnxt* %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @BNXT_MIN_ROCE_STAT_CTXS, align 4
  %55 = icmp ule i32 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.bnxt*, %struct.bnxt** %11, align 8
  %58 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56, %50
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %92

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %46
  %67 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %12, align 8
  %68 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %67, i32 0, i32 2
  %69 = call i32 @atomic_set(i32* %68, i32 0)
  %70 = load i8*, i8** %9, align 8
  %71 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %12, align 8
  %72 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load %struct.bnxt_ulp*, %struct.bnxt_ulp** %12, align 8
  %74 = getelementptr inbounds %struct.bnxt_ulp, %struct.bnxt_ulp* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.bnxt_ulp_ops*, %struct.bnxt_ulp_ops** %8, align 8
  %77 = call i32 @rcu_assign_pointer(i32 %75, %struct.bnxt_ulp_ops* %76)
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @BNXT_ROCE_ULP, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %66
  %82 = load i32, i32* @BNXT_STATE_OPEN, align 4
  %83 = load %struct.bnxt*, %struct.bnxt** %11, align 8
  %84 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %83, i32 0, i32 1
  %85 = call i64 @test_bit(i32 %82, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.bnxt*, %struct.bnxt** %11, align 8
  %89 = call i32 @bnxt_hwrm_vnic_cfg(%struct.bnxt* %88, i32 0)
  br label %90

90:                                               ; preds = %87, %81
  br label %91

91:                                               ; preds = %90, %66
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %62, %38, %23
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i64 @rcu_access_pointer(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @bnxt_get_max_func_stat_ctxs(%struct.bnxt*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.bnxt_ulp_ops*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bnxt_hwrm_vnic_cfg(%struct.bnxt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
