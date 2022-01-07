; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_request_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_request_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd_can = type { i32, i64 }

@KVASER_PCIEFD_KCAN_CMD_SRQ = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_CMD_SEQ_SHIFT = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_CMD_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_pciefd_can*)* @kvaser_pciefd_request_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_pciefd_request_status(%struct.kvaser_pciefd_can* %0) #0 {
  %2 = alloca %struct.kvaser_pciefd_can*, align 8
  %3 = alloca i32, align 4
  store %struct.kvaser_pciefd_can* %0, %struct.kvaser_pciefd_can** %2, align 8
  %4 = load i32, i32* @KVASER_PCIEFD_KCAN_CMD_SRQ, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %6 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 8
  %9 = load i32, i32* @KVASER_PCIEFD_KCAN_CMD_SEQ_SHIFT, align 4
  %10 = shl i32 %8, %9
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %2, align 8
  %15 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @KVASER_PCIEFD_KCAN_CMD_REG, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @iowrite32(i32 %13, i64 %18)
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
