; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_link_flows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_link_flows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_fl_payload = type { i32 }
%struct.nfp_fl_payload_link = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.nfp_fl_payload* }
%struct.TYPE_3__ = type { i32, %struct.nfp_fl_payload* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_fl_payload*, %struct.nfp_fl_payload*)* @nfp_flower_link_flows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_link_flows(%struct.nfp_fl_payload* %0, %struct.nfp_fl_payload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_fl_payload*, align 8
  %5 = alloca %struct.nfp_fl_payload*, align 8
  %6 = alloca %struct.nfp_fl_payload_link*, align 8
  store %struct.nfp_fl_payload* %0, %struct.nfp_fl_payload** %4, align 8
  store %struct.nfp_fl_payload* %1, %struct.nfp_fl_payload** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.nfp_fl_payload_link* @kmalloc(i32 32, i32 %7)
  store %struct.nfp_fl_payload_link* %8, %struct.nfp_fl_payload_link** %6, align 8
  %9 = load %struct.nfp_fl_payload_link*, %struct.nfp_fl_payload_link** %6, align 8
  %10 = icmp ne %struct.nfp_fl_payload_link* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %35

14:                                               ; preds = %2
  %15 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %4, align 8
  %16 = load %struct.nfp_fl_payload_link*, %struct.nfp_fl_payload_link** %6, align 8
  %17 = getelementptr inbounds %struct.nfp_fl_payload_link, %struct.nfp_fl_payload_link* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store %struct.nfp_fl_payload* %15, %struct.nfp_fl_payload** %18, align 8
  %19 = load %struct.nfp_fl_payload_link*, %struct.nfp_fl_payload_link** %6, align 8
  %20 = getelementptr inbounds %struct.nfp_fl_payload_link, %struct.nfp_fl_payload_link* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %4, align 8
  %23 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %22, i32 0, i32 0
  %24 = call i32 @list_add_tail(i32* %21, i32* %23)
  %25 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %5, align 8
  %26 = load %struct.nfp_fl_payload_link*, %struct.nfp_fl_payload_link** %6, align 8
  %27 = getelementptr inbounds %struct.nfp_fl_payload_link, %struct.nfp_fl_payload_link* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store %struct.nfp_fl_payload* %25, %struct.nfp_fl_payload** %28, align 8
  %29 = load %struct.nfp_fl_payload_link*, %struct.nfp_fl_payload_link** %6, align 8
  %30 = getelementptr inbounds %struct.nfp_fl_payload_link, %struct.nfp_fl_payload_link* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %5, align 8
  %33 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %32, i32 0, i32 0
  %34 = call i32 @list_add_tail(i32* %31, i32* %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %14, %11
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.nfp_fl_payload_link* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
