; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_core.c_ipvlan_handle_mode_l3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_core.c_ipvlan_handle_mode_l3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ipvl_port = type { i32 }
%struct.ipvl_addr = type { i32 }

@RX_HANDLER_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff**, %struct.ipvl_port*)* @ipvlan_handle_mode_l3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvlan_handle_mode_l3(%struct.sk_buff** %0, %struct.ipvl_port* %1) #0 {
  %3 = alloca %struct.sk_buff**, align 8
  %4 = alloca %struct.ipvl_port*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipvl_addr*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff** %0, %struct.sk_buff*** %3, align 8
  store %struct.ipvl_port* %1, %struct.ipvl_port** %4, align 8
  %10 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %11, %struct.sk_buff** %8, align 8
  %12 = load i32, i32* @RX_HANDLER_PASS, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.ipvl_port*, %struct.ipvl_port** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = call i8* @ipvlan_get_L3_hdr(%struct.ipvl_port* %13, %struct.sk_buff* %14, i32* %6)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %31

19:                                               ; preds = %2
  %20 = load %struct.ipvl_port*, %struct.ipvl_port** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.ipvl_addr* @ipvlan_addr_lookup(%struct.ipvl_port* %20, i8* %21, i32 %22, i32 1)
  store %struct.ipvl_addr* %23, %struct.ipvl_addr** %7, align 8
  %24 = load %struct.ipvl_addr*, %struct.ipvl_addr** %7, align 8
  %25 = icmp ne %struct.ipvl_addr* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.ipvl_addr*, %struct.ipvl_addr** %7, align 8
  %28 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  %29 = call i32 @ipvlan_rcv_frame(%struct.ipvl_addr* %27, %struct.sk_buff** %28, i32 0)
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %26, %19
  br label %31

31:                                               ; preds = %30, %18
  %32 = load i32, i32* %9, align 4
  ret i32 %32
}

declare dso_local i8* @ipvlan_get_L3_hdr(%struct.ipvl_port*, %struct.sk_buff*, i32*) #1

declare dso_local %struct.ipvl_addr* @ipvlan_addr_lookup(%struct.ipvl_port*, i8*, i32, i32) #1

declare dso_local i32 @ipvlan_rcv_frame(%struct.ipvl_addr*, %struct.sk_buff**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
