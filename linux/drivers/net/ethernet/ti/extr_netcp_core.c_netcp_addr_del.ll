; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_addr_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_addr_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netcp_intf = type { i32 }
%struct.netcp_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netcp_intf*, %struct.netcp_addr*)* @netcp_addr_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netcp_addr_del(%struct.netcp_intf* %0, %struct.netcp_addr* %1) #0 {
  %3 = alloca %struct.netcp_intf*, align 8
  %4 = alloca %struct.netcp_addr*, align 8
  store %struct.netcp_intf* %0, %struct.netcp_intf** %3, align 8
  store %struct.netcp_addr* %1, %struct.netcp_addr** %4, align 8
  %5 = load %struct.netcp_addr*, %struct.netcp_addr** %4, align 8
  %6 = getelementptr inbounds %struct.netcp_addr, %struct.netcp_addr* %5, i32 0, i32 0
  %7 = call i32 @list_del(i32* %6)
  %8 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %9 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.netcp_addr*, %struct.netcp_addr** %4, align 8
  %12 = call i32 @devm_kfree(i32 %10, %struct.netcp_addr* %11)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @devm_kfree(i32, %struct.netcp_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
