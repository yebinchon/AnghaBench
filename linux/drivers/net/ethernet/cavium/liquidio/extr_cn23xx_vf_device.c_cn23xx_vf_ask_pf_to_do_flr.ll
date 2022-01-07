; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_vf_device.c_cn23xx_vf_ask_pf_to_do_flr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_vf_device.c_cn23xx_vf_ask_pf_to_do_flr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }
%struct.octeon_mbox_cmd = type { i32*, i32*, i64, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32, i64, i32 }

@OCTEON_MBOX_REQUEST = common dso_local global i32 0, align 4
@OCTEON_VF_FLR_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cn23xx_vf_ask_pf_to_do_flr(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca %struct.octeon_mbox_cmd, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %4 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %3, i32 0, i32 5
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* @OCTEON_MBOX_REQUEST, align 4
  %7 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %3, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  store i32 %6, i32* %9, align 8
  %10 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %3, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @OCTEON_VF_FLR_REQUEST, align 4
  %14 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %3, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %3, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %3, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %3, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %3, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %3, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %3, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %26 = call i32 @octeon_mbox_write(%struct.octeon_device* %25, %struct.octeon_mbox_cmd* %3)
  ret void
}

declare dso_local i32 @octeon_mbox_write(%struct.octeon_device*, %struct.octeon_mbox_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
