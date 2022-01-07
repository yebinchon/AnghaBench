; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_wq.c_enic_wq_devcmd2_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_wq.c_enic_wq_devcmd2_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i32 }
%struct.vnic_wq = type { i32, i32, %struct.vnic_dev*, i64 }

@RES_TYPE_DEVCMD2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enic_wq_devcmd2_alloc(%struct.vnic_dev* %0, %struct.vnic_wq* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnic_dev*, align 8
  %7 = alloca %struct.vnic_wq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vnic_dev* %0, %struct.vnic_dev** %6, align 8
  store %struct.vnic_wq* %1, %struct.vnic_wq** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %12 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load %struct.vnic_dev*, %struct.vnic_dev** %6, align 8
  %14 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %15 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %14, i32 0, i32 2
  store %struct.vnic_dev* %13, %struct.vnic_dev** %15, align 8
  %16 = load %struct.vnic_dev*, %struct.vnic_dev** %6, align 8
  %17 = load i32, i32* @RES_TYPE_DEVCMD2, align 4
  %18 = call i32 @vnic_dev_get_res(%struct.vnic_dev* %16, i32 %17, i32 0)
  %19 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %20 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %22 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %38

28:                                               ; preds = %4
  %29 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %30 = call i32 @vnic_wq_disable(%struct.vnic_wq* %29)
  %31 = load %struct.vnic_dev*, %struct.vnic_dev** %6, align 8
  %32 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %33 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %32, i32 0, i32 0
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @vnic_dev_alloc_desc_ring(%struct.vnic_dev* %31, i32* %33, i32 %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %28, %25
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @vnic_dev_get_res(%struct.vnic_dev*, i32, i32) #1

declare dso_local i32 @vnic_wq_disable(%struct.vnic_wq*) #1

declare dso_local i32 @vnic_dev_alloc_desc_ring(%struct.vnic_dev*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
