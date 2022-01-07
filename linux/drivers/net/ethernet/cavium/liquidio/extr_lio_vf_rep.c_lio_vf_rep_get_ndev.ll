; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_rep.c_lio_vf_rep_get_ndev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_rep.c_lio_vf_rep_get_ndev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.octeon_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.net_device** }

@CN23XX_MAX_VFS_PER_PF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.octeon_device*, i32)* @lio_vf_rep_get_ndev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @lio_vf_rep_get_ndev(%struct.octeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @CN23XX_MAX_VFS_PER_PF, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %15 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = mul nsw i32 %16, %17
  %19 = icmp sle i32 %13, %18
  br i1 %19, label %30, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %23 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %26, %27
  %29 = icmp sge i32 %21, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20, %2
  store %struct.net_device* null, %struct.net_device** %3, align 8
  br label %44

31:                                               ; preds = %20
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %32, %33
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  %36 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %37 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.net_device**, %struct.net_device*** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.net_device*, %struct.net_device** %39, i64 %41
  %43 = load %struct.net_device*, %struct.net_device** %42, align 8
  store %struct.net_device* %43, %struct.net_device** %3, align 8
  br label %44

44:                                               ; preds = %31, %30
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  ret %struct.net_device* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
