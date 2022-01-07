; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_tx_setup_wrb_frag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_tx_setup_wrb_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_tx_obj = type { %struct.be_queue_info }
%struct.be_queue_info = type { i32 }
%struct.be_eth_wrb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_tx_obj*, i32, i32)* @be_tx_setup_wrb_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_tx_setup_wrb_frag(%struct.be_tx_obj* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.be_tx_obj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.be_eth_wrb*, align 8
  %8 = alloca %struct.be_queue_info*, align 8
  store %struct.be_tx_obj* %0, %struct.be_tx_obj** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.be_tx_obj*, %struct.be_tx_obj** %4, align 8
  %10 = getelementptr inbounds %struct.be_tx_obj, %struct.be_tx_obj* %9, i32 0, i32 0
  store %struct.be_queue_info* %10, %struct.be_queue_info** %8, align 8
  %11 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %12 = call %struct.be_eth_wrb* @queue_head_node(%struct.be_queue_info* %11)
  store %struct.be_eth_wrb* %12, %struct.be_eth_wrb** %7, align 8
  %13 = load %struct.be_eth_wrb*, %struct.be_eth_wrb** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @wrb_fill(%struct.be_eth_wrb* %13, i32 %14, i32 %15)
  %17 = load %struct.be_queue_info*, %struct.be_queue_info** %8, align 8
  %18 = call i32 @queue_head_inc(%struct.be_queue_info* %17)
  ret void
}

declare dso_local %struct.be_eth_wrb* @queue_head_node(%struct.be_queue_info*) #1

declare dso_local i32 @wrb_fill(%struct.be_eth_wrb*, i32, i32) #1

declare dso_local i32 @queue_head_inc(%struct.be_queue_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
