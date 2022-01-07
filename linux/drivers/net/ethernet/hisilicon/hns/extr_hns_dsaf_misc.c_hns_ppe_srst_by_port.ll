; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_hns_ppe_srst_by_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_misc.c_hns_ppe_srst_by_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

@RESET_REQ_OR_DREQ = common dso_local global i64 0, align 8
@DSAF_SUB_SC_PPE_RESET_REQ_REG = common dso_local global i64 0, align 8
@DSAF_SUB_SC_PPE_RESET_DREQ_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsaf_device*, i64, i32)* @hns_ppe_srst_by_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_ppe_srst_by_port(%struct.dsaf_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.dsaf_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.dsaf_device* %0, %struct.dsaf_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %9 = load i64, i64* @RESET_REQ_OR_DREQ, align 8
  %10 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %11 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %12, i64 %13
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = shl i64 %9, %17
  %19 = load i64, i64* %7, align 8
  %20 = or i64 %19, %18
  store i64 %20, i64* %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = load i64, i64* @DSAF_SUB_SC_PPE_RESET_REQ_REG, align 8
  store i64 %24, i64* %8, align 8
  br label %27

25:                                               ; preds = %3
  %26 = load i64, i64* @DSAF_SUB_SC_PPE_RESET_DREQ_REG, align 8
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @dsaf_write_sub(%struct.dsaf_device* %28, i64 %29, i64 %30)
  ret void
}

declare dso_local i32 @dsaf_write_sub(%struct.dsaf_device*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
