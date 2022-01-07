; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_vf_device.c_octeon_pfvf_hs_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_vf_device.c_octeon_pfvf_hs_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }
%struct.octeon_mbox_cmd = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.lio_version = type { i32 }

@CN23XX_MAILBOX_MSGPARAM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, %struct.octeon_mbox_cmd*, i8*)* @octeon_pfvf_hs_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_pfvf_hs_callback(%struct.octeon_device* %0, %struct.octeon_mbox_cmd* %1, i8* %2) #0 {
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca %struct.octeon_mbox_cmd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store %struct.octeon_mbox_cmd* %1, %struct.octeon_mbox_cmd** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %9 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %8, i32 0, i32 0
  %10 = load %struct.octeon_mbox_cmd*, %struct.octeon_mbox_cmd** %5, align 8
  %11 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CN23XX_MAILBOX_MSGPARAM_SIZE, align 4
  %16 = call i32 @memcpy(i32* %9, i32 %14, i32 %15)
  %17 = load %struct.octeon_mbox_cmd*, %struct.octeon_mbox_cmd** %5, align 8
  %18 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = load %struct.octeon_mbox_cmd*, %struct.octeon_mbox_cmd** %5, align 8
  %23 = getelementptr inbounds %struct.octeon_mbox_cmd, %struct.octeon_mbox_cmd* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.lio_version*
  %26 = getelementptr inbounds %struct.lio_version, %struct.lio_version* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = shl i32 %28, 16
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %21, %3
  %31 = load i8*, i8** %6, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, 1
  %35 = call i32 @atomic_set(i32* %32, i32 %34)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
