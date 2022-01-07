; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_dest_ring_lowmark_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_dest_ring_lowmark_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ath10k_hw_ce_dst_src_wm_regs* }
%struct.ath10k_hw_ce_dst_src_wm_regs = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, i32, i32)* @ath10k_ce_dest_ring_lowmark_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_ce_dest_ring_lowmark_set(%struct.ath10k* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath10k_hw_ce_dst_src_wm_regs*, align 8
  %8 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %10 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.ath10k_hw_ce_dst_src_wm_regs*, %struct.ath10k_hw_ce_dst_src_wm_regs** %12, align 8
  store %struct.ath10k_hw_ce_dst_src_wm_regs* %13, %struct.ath10k_hw_ce_dst_src_wm_regs** %7, align 8
  %14 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.ath10k_hw_ce_dst_src_wm_regs*, %struct.ath10k_hw_ce_dst_src_wm_regs** %7, align 8
  %17 = getelementptr inbounds %struct.ath10k_hw_ce_dst_src_wm_regs, %struct.ath10k_hw_ce_dst_src_wm_regs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %15, %18
  %20 = call i32 @ath10k_ce_read32(%struct.ath10k* %14, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.ath10k_hw_ce_dst_src_wm_regs*, %struct.ath10k_hw_ce_dst_src_wm_regs** %7, align 8
  %24 = getelementptr inbounds %struct.ath10k_hw_ce_dst_src_wm_regs, %struct.ath10k_hw_ce_dst_src_wm_regs* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %22, %25
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.ath10k_hw_ce_dst_src_wm_regs*, %struct.ath10k_hw_ce_dst_src_wm_regs** %7, align 8
  %29 = getelementptr inbounds %struct.ath10k_hw_ce_dst_src_wm_regs, %struct.ath10k_hw_ce_dst_src_wm_regs* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %27, %33
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.ath10k_hw_ce_dst_src_wm_regs*, %struct.ath10k_hw_ce_dst_src_wm_regs** %7, align 8
  %37 = getelementptr inbounds %struct.ath10k_hw_ce_dst_src_wm_regs, %struct.ath10k_hw_ce_dst_src_wm_regs* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = call i32 @ath10k_set_ring_byte(i32 %35, %struct.TYPE_4__* %38)
  %40 = or i32 %34, %39
  %41 = call i32 @ath10k_ce_write32(%struct.ath10k* %21, i32 %26, i32 %40)
  ret void
}

declare dso_local i32 @ath10k_ce_read32(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_ce_write32(%struct.ath10k*, i32, i32) #1

declare dso_local i32 @ath10k_set_ring_byte(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
