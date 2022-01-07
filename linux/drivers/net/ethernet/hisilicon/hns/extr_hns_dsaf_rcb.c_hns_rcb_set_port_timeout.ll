; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_set_port_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_set_port_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcb_common_cb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RCB_CFG_OVERTIME_REG = common dso_local global i64 0, align 8
@HNS_RCB_CLK_FREQ_MHZ = common dso_local global i32 0, align 4
@HNS_RCB_DEF_GAP_TIME_USECS = common dso_local global i32 0, align 4
@RCB_PORT_INT_GAPTIME_REG = common dso_local global i64 0, align 8
@RCB_PORT_CFG_OVERTIME_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcb_common_cb*, i32, i32)* @hns_rcb_set_port_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_rcb_set_port_timeout(%struct.rcb_common_cb* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rcb_common_cb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rcb_common_cb* %0, %struct.rcb_common_cb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %4, align 8
  %8 = getelementptr inbounds %struct.rcb_common_cb, %struct.rcb_common_cb* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @AE_IS_VER1(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %4, align 8
  %16 = load i64, i64* @RCB_CFG_OVERTIME_REG, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @HNS_RCB_CLK_FREQ_MHZ, align 4
  %19 = mul nsw i32 %17, %18
  %20 = call i32 @dsaf_write_dev(%struct.rcb_common_cb* %15, i64 %16, i32 %19)
  br label %68

21:                                               ; preds = %3
  %22 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %4, align 8
  %23 = getelementptr inbounds %struct.rcb_common_cb, %struct.rcb_common_cb* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = call i32 @HNS_DSAF_IS_DEBUG(%struct.TYPE_2__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %58, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @HNS_RCB_DEF_GAP_TIME_USECS, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %4, align 8
  %33 = load i64, i64* @RCB_PORT_INT_GAPTIME_REG, align 8
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 %34, 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = load i32, i32* @HNS_RCB_DEF_GAP_TIME_USECS, align 4
  %39 = call i32 @dsaf_write_dev(%struct.rcb_common_cb* %32, i64 %37, i32 %38)
  br label %49

40:                                               ; preds = %27
  %41 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %4, align 8
  %42 = load i64, i64* @RCB_PORT_INT_GAPTIME_REG, align 8
  %43 = load i32, i32* %5, align 4
  %44 = mul nsw i32 %43, 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %42, %45
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @dsaf_write_dev(%struct.rcb_common_cb* %41, i64 %46, i32 %47)
  br label %49

49:                                               ; preds = %40, %31
  %50 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %4, align 8
  %51 = load i64, i64* @RCB_PORT_CFG_OVERTIME_REG, align 8
  %52 = load i32, i32* %5, align 4
  %53 = mul nsw i32 %52, 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %51, %54
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @dsaf_write_dev(%struct.rcb_common_cb* %50, i64 %55, i32 %56)
  br label %67

58:                                               ; preds = %21
  %59 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %4, align 8
  %60 = load i64, i64* @RCB_PORT_CFG_OVERTIME_REG, align 8
  %61 = load i32, i32* %5, align 4
  %62 = mul nsw i32 %61, 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %60, %63
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @dsaf_write_dev(%struct.rcb_common_cb* %59, i64 %64, i32 %65)
  br label %67

67:                                               ; preds = %58, %49
  br label %68

68:                                               ; preds = %67, %14
  ret void
}

declare dso_local i64 @AE_IS_VER1(i32) #1

declare dso_local i32 @dsaf_write_dev(%struct.rcb_common_cb*, i64, i32) #1

declare dso_local i32 @HNS_DSAF_IS_DEBUG(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
