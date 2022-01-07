; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_xmit_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_xmit_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.be_tx_obj = type { %struct.be_queue_info }
%struct.be_queue_info = type { i8* }
%struct.be_eth_wrb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*, %struct.be_tx_obj*, i8*, i32, i8*)* @be_xmit_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_xmit_restore(%struct.be_adapter* %0, %struct.be_tx_obj* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca %struct.be_tx_obj*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.be_eth_wrb*, align 8
  %13 = alloca %struct.be_queue_info*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %6, align 8
  store %struct.be_tx_obj* %1, %struct.be_tx_obj** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = load %struct.be_tx_obj*, %struct.be_tx_obj** %7, align 8
  %15 = getelementptr inbounds %struct.be_tx_obj, %struct.be_tx_obj* %14, i32 0, i32 0
  store %struct.be_queue_info* %15, %struct.be_queue_info** %13, align 8
  %16 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.be_queue_info*, %struct.be_queue_info** %13, align 8
  %22 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.be_queue_info*, %struct.be_queue_info** %13, align 8
  %24 = call i32 @queue_head_inc(%struct.be_queue_info* %23)
  br label %25

25:                                               ; preds = %28, %5
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load %struct.be_queue_info*, %struct.be_queue_info** %13, align 8
  %30 = call %struct.be_eth_wrb* @queue_head_node(%struct.be_queue_info* %29)
  store %struct.be_eth_wrb* %30, %struct.be_eth_wrb** %12, align 8
  %31 = load %struct.device*, %struct.device** %11, align 8
  %32 = load %struct.be_eth_wrb*, %struct.be_eth_wrb** %12, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @unmap_tx_frag(%struct.device* %31, %struct.be_eth_wrb* %32, i32 %33)
  store i32 0, i32* %9, align 4
  %35 = load %struct.be_eth_wrb*, %struct.be_eth_wrb** %12, align 8
  %36 = getelementptr inbounds %struct.be_eth_wrb, %struct.be_eth_wrb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @le32_to_cpu(i32 %37)
  %39 = load i8*, i8** %10, align 8
  %40 = ptrtoint i8* %39 to i64
  %41 = ptrtoint i8* %38 to i64
  %42 = sub i64 %40, %41
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %10, align 8
  %44 = load %struct.be_queue_info*, %struct.be_queue_info** %13, align 8
  %45 = call i32 @queue_head_inc(%struct.be_queue_info* %44)
  br label %25

46:                                               ; preds = %25
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.be_queue_info*, %struct.be_queue_info** %13, align 8
  %49 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  ret void
}

declare dso_local i32 @queue_head_inc(%struct.be_queue_info*) #1

declare dso_local %struct.be_eth_wrb* @queue_head_node(%struct.be_queue_info*) #1

declare dso_local i32 @unmap_tx_frag(%struct.device*, %struct.be_eth_wrb*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
