; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_sq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_sq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32 }

@NIC_QSET_SQ_0_7_CFG = common dso_local global i32 0, align 4
@NICVF_SQ_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nicvf_sq_disable(%struct.nicvf* %0, i32 %1) #0 {
  %3 = alloca %struct.nicvf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %7 = load i32, i32* @NIC_QSET_SQ_0_7_CFG, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %6, i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @NICVF_SQ_EN, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %15 = load i32, i32* @NIC_QSET_SQ_0_7_CFG, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @nicvf_queue_reg_write(%struct.nicvf* %14, i32 %15, i32 %16, i32 %17)
  ret void
}

declare dso_local i32 @nicvf_queue_reg_read(%struct.nicvf*, i32, i32) #1

declare dso_local i32 @nicvf_queue_reg_write(%struct.nicvf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
