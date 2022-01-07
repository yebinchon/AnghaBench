; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_tmp_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_tmp_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_host_sds_ring = type { %struct.qlcnic_adapter* }
%struct.qlcnic_adapter = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@QLCNIC_MSI_ENABLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @qlcnic_tmp_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qlcnic_tmp_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %7 = alloca %struct.qlcnic_adapter*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.qlcnic_host_sds_ring*
  store %struct.qlcnic_host_sds_ring* %9, %struct.qlcnic_host_sds_ring** %6, align 8
  %10 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %6, align 8
  %11 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %10, i32 0, i32 0
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %11, align 8
  store %struct.qlcnic_adapter* %12, %struct.qlcnic_adapter** %7, align 8
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %41

20:                                               ; preds = %2
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %22 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @QLCNIC_MSI_ENABLED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %29 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @writel(i32 -1, i32 %30)
  br label %41

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %35 = call i64 @qlcnic_clear_legacy_intr(%struct.qlcnic_adapter* %34)
  %36 = load i64, i64* @IRQ_NONE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i64, i64* @IRQ_NONE, align 8
  store i64 %39, i64* %3, align 8
  br label %52

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %27, %19
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %43 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %49 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %6, align 8
  %50 = call i32 @qlcnic_enable_sds_intr(%struct.qlcnic_adapter* %48, %struct.qlcnic_host_sds_ring* %49)
  %51 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %51, i64* %3, align 8
  br label %52

52:                                               ; preds = %41, %38
  %53 = load i64, i64* %3, align 8
  ret i64 %53
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i64 @qlcnic_clear_legacy_intr(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_enable_sds_intr(%struct.qlcnic_adapter*, %struct.qlcnic_host_sds_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
