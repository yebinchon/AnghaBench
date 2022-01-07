; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_set_coalesce_usecs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_set_coalesce_usecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcb_common_cb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"error: not support coalesce_usecs setting!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HNS_RCB_MAX_COALESCED_USECS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"error: coalesce_usecs setting supports 1~1023us\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_rcb_set_coalesce_usecs(%struct.rcb_common_cb* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rcb_common_cb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.rcb_common_cb* %0, %struct.rcb_common_cb** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @hns_rcb_get_coalesce_usecs(%struct.rcb_common_cb* %9, i64 %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %61

16:                                               ; preds = %3
  %17 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %5, align 8
  %18 = getelementptr inbounds %struct.rcb_common_cb, %struct.rcb_common_cb* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @AE_IS_VER1(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %16
  %25 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %5, align 8
  %26 = getelementptr inbounds %struct.rcb_common_cb, %struct.rcb_common_cb* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32 @HNS_DSAF_IS_DEBUG(%struct.TYPE_2__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %24
  %31 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %5, align 8
  %32 = getelementptr inbounds %struct.rcb_common_cb, %struct.rcb_common_cb* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %61

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39, %16
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @HNS_RCB_MAX_COALESCED_USECS, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %7, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44, %40
  %48 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %5, align 8
  %49 = getelementptr inbounds %struct.rcb_common_cb, %struct.rcb_common_cb* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %61

56:                                               ; preds = %44
  %57 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @hns_rcb_set_port_timeout(%struct.rcb_common_cb* %57, i64 %58, i64 %59)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %56, %47, %30, %15
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @hns_rcb_get_coalesce_usecs(%struct.rcb_common_cb*, i64) #1

declare dso_local i64 @AE_IS_VER1(i32) #1

declare dso_local i32 @HNS_DSAF_IS_DEBUG(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @hns_rcb_set_port_timeout(%struct.rcb_common_cb*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
