; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_hns_dsaf_xge_srst_by_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_hns_dsaf_xge_srst_by_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@DSAF_XGE_NUM = common dso_local global i64 0, align 8
@RESET_REQ_OR_DREQ = common dso_local global i64 0, align 8
@DSAF_SUB_SC_XGE_RESET_REQ_REG = common dso_local global i64 0, align 8
@DSAF_SUB_SC_XGE_RESET_DREQ_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsaf_device*, i64, i32)* @hns_dsaf_xge_srst_by_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_dsaf_xge_srst_by_port(%struct.dsaf_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.dsaf_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.dsaf_device* %0, %struct.dsaf_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @DSAF_XGE_NUM, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %40

13:                                               ; preds = %3
  %14 = load i64, i64* @RESET_REQ_OR_DREQ, align 8
  %15 = load i64, i64* %7, align 8
  %16 = or i64 %15, %14
  store i64 %16, i64* %7, align 8
  %17 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %18 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 %20
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 34087042, %24
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %7, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %13
  %32 = load i64, i64* @DSAF_SUB_SC_XGE_RESET_REQ_REG, align 8
  store i64 %32, i64* %8, align 8
  br label %35

33:                                               ; preds = %13
  %34 = load i64, i64* @DSAF_SUB_SC_XGE_RESET_DREQ_REG, align 8
  store i64 %34, i64* %8, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @dsaf_write_sub(%struct.dsaf_device* %36, i64 %37, i64 %38)
  br label %40

40:                                               ; preds = %35, %12
  ret void
}

declare dso_local i32 @dsaf_write_sub(%struct.dsaf_device*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
