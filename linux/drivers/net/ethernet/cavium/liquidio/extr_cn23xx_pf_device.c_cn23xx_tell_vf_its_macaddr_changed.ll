; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_tell_vf_its_macaddr_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_tell_vf_its_macaddr_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.octeon_mbox_cmd = type { i32, %struct.TYPE_5__, i32*, i32*, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i32 }

@OCTEON_MBOX_REQUEST = common dso_local global i32 0, align 4
@OCTEON_PF_CHANGED_VF_MACADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cn23xx_tell_vf_its_macaddr_changed(%struct.octeon_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.octeon_mbox_cmd, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %9 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @BIT_ULL(i32 %12)
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %52

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %7, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @OCTEON_MBOX_REQUEST, align 4
  %20 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %7, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 4
  store i32 %19, i32* %22, align 8
  %23 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %7, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @OCTEON_PF_CHANGED_VF_MACADDR, align 4
  %27 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %7, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 8
  %30 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %7, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %7, i32 0, i32 5
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %7, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %7, i32 0, i32 3
  store i32* null, i32** %35, align 8
  %36 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %7, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %7, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @ether_addr_copy(i32 %40, i32* %41)
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %45 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %43, %47
  %49 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %7, i32 0, i32 0
  store i32 %48, i32* %49, align 8
  %50 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %51 = call i32 @octeon_mbox_write(%struct.octeon_device* %50, %struct.octeon_mbox_cmd* %7)
  br label %52

52:                                               ; preds = %16, %3
  ret void
}

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @octeon_mbox_write(%struct.octeon_device*, %struct.octeon_mbox_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
