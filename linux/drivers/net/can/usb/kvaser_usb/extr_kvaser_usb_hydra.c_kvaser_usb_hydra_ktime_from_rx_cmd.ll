; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_ktime_from_rx_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_ktime_from_rx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb_dev_cfg = type { i32 }
%struct.kvaser_cmd = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i64 }
%struct.kvaser_cmd_ext = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@CMD_EXTENDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_usb_dev_cfg*, %struct.kvaser_cmd*)* @kvaser_usb_hydra_ktime_from_rx_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_usb_hydra_ktime_from_rx_cmd(%struct.kvaser_usb_dev_cfg* %0, %struct.kvaser_cmd* %1) #0 {
  %3 = alloca %struct.kvaser_usb_dev_cfg*, align 8
  %4 = alloca %struct.kvaser_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvaser_cmd_ext*, align 8
  store %struct.kvaser_usb_dev_cfg* %0, %struct.kvaser_usb_dev_cfg** %3, align 8
  store %struct.kvaser_cmd* %1, %struct.kvaser_cmd** %4, align 8
  %7 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %8 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CMD_EXTENDED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %15 = bitcast %struct.kvaser_cmd* %14 to %struct.kvaser_cmd_ext*
  store %struct.kvaser_cmd_ext* %15, %struct.kvaser_cmd_ext** %6, align 8
  %16 = load %struct.kvaser_cmd_ext*, %struct.kvaser_cmd_ext** %6, align 8
  %17 = getelementptr inbounds %struct.kvaser_cmd_ext, %struct.kvaser_cmd_ext* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le64_to_cpu(i32 %19)
  store i32 %20, i32* %5, align 4
  br label %49

21:                                               ; preds = %2
  %22 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %23 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %30 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le16_to_cpu(i32 %34)
  %36 = shl i32 %35, 16
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %40 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le16_to_cpu(i32 %44)
  %46 = shl i32 %45, 32
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %21, %13
  %50 = load i32, i32* %5, align 4
  %51 = mul nsw i32 %50, 1000
  %52 = load %struct.kvaser_usb_dev_cfg*, %struct.kvaser_usb_dev_cfg** %3, align 8
  %53 = getelementptr inbounds %struct.kvaser_usb_dev_cfg, %struct.kvaser_usb_dev_cfg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @div_u64(i32 %51, i32 %54)
  %56 = call i32 @ns_to_ktime(i32 %55)
  ret i32 %56
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
