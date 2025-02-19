; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_insert_tunnel_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_insert_tunnel_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.udp_tunnel_info = type { i32, i32 }
%struct.fm10k_udp_port = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_head*, %struct.udp_tunnel_info*)* @fm10k_insert_tunnel_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_insert_tunnel_port(%struct.list_head* %0, %struct.udp_tunnel_info* %1) #0 {
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.udp_tunnel_info*, align 8
  %5 = alloca %struct.fm10k_udp_port*, align 8
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  store %struct.udp_tunnel_info* %1, %struct.udp_tunnel_info** %4, align 8
  %6 = load %struct.list_head*, %struct.list_head** %3, align 8
  %7 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %8 = call %struct.fm10k_udp_port* @fm10k_remove_tunnel_port(%struct.list_head* %6, %struct.udp_tunnel_info* %7)
  store %struct.fm10k_udp_port* %8, %struct.fm10k_udp_port** %5, align 8
  %9 = load %struct.fm10k_udp_port*, %struct.fm10k_udp_port** %5, align 8
  %10 = icmp ne %struct.fm10k_udp_port* %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.fm10k_udp_port* @kmalloc(i32 12, i32 %12)
  store %struct.fm10k_udp_port* %13, %struct.fm10k_udp_port** %5, align 8
  %14 = load %struct.fm10k_udp_port*, %struct.fm10k_udp_port** %5, align 8
  %15 = icmp ne %struct.fm10k_udp_port* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %33

17:                                               ; preds = %11
  %18 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %19 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.fm10k_udp_port*, %struct.fm10k_udp_port** %5, align 8
  %22 = getelementptr inbounds %struct.fm10k_udp_port, %struct.fm10k_udp_port* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.udp_tunnel_info*, %struct.udp_tunnel_info** %4, align 8
  %24 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.fm10k_udp_port*, %struct.fm10k_udp_port** %5, align 8
  %27 = getelementptr inbounds %struct.fm10k_udp_port, %struct.fm10k_udp_port* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %17, %2
  %29 = load %struct.fm10k_udp_port*, %struct.fm10k_udp_port** %5, align 8
  %30 = getelementptr inbounds %struct.fm10k_udp_port, %struct.fm10k_udp_port* %29, i32 0, i32 0
  %31 = load %struct.list_head*, %struct.list_head** %3, align 8
  %32 = call i32 @list_add_tail(i32* %30, %struct.list_head* %31)
  br label %33

33:                                               ; preds = %28, %16
  ret void
}

declare dso_local %struct.fm10k_udp_port* @fm10k_remove_tunnel_port(%struct.list_head*, %struct.udp_tunnel_info*) #1

declare dso_local %struct.fm10k_udp_port* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
