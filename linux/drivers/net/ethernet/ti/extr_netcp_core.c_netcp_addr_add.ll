; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_addr_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_addr_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netcp_addr = type { i32, i32, i32, %struct.netcp_intf*, i64 }
%struct.netcp_intf = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netcp_addr* (%struct.netcp_intf*, i32*, i32)* @netcp_addr_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netcp_addr* @netcp_addr_add(%struct.netcp_intf* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.netcp_addr*, align 8
  %5 = alloca %struct.netcp_intf*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netcp_addr*, align 8
  store %struct.netcp_intf* %0, %struct.netcp_intf** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.netcp_intf*, %struct.netcp_intf** %5, align 8
  %10 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.netcp_addr* @devm_kmalloc(i32 %11, i32 32, i32 %12)
  store %struct.netcp_addr* %13, %struct.netcp_addr** %8, align 8
  %14 = load %struct.netcp_addr*, %struct.netcp_addr** %8, align 8
  %15 = icmp ne %struct.netcp_addr* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.netcp_addr* null, %struct.netcp_addr** %4, align 8
  br label %46

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.netcp_addr*, %struct.netcp_addr** %8, align 8
  %20 = getelementptr inbounds %struct.netcp_addr, %struct.netcp_addr* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.netcp_addr*, %struct.netcp_addr** %8, align 8
  %22 = getelementptr inbounds %struct.netcp_addr, %struct.netcp_addr* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.netcp_intf*, %struct.netcp_intf** %5, align 8
  %24 = load %struct.netcp_addr*, %struct.netcp_addr** %8, align 8
  %25 = getelementptr inbounds %struct.netcp_addr, %struct.netcp_addr* %24, i32 0, i32 3
  store %struct.netcp_intf* %23, %struct.netcp_intf** %25, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %17
  %29 = load %struct.netcp_addr*, %struct.netcp_addr** %8, align 8
  %30 = getelementptr inbounds %struct.netcp_addr, %struct.netcp_addr* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @ether_addr_copy(i32 %31, i32* %32)
  br label %39

34:                                               ; preds = %17
  %35 = load %struct.netcp_addr*, %struct.netcp_addr** %8, align 8
  %36 = getelementptr inbounds %struct.netcp_addr, %struct.netcp_addr* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @eth_zero_addr(i32 %37)
  br label %39

39:                                               ; preds = %34, %28
  %40 = load %struct.netcp_addr*, %struct.netcp_addr** %8, align 8
  %41 = getelementptr inbounds %struct.netcp_addr, %struct.netcp_addr* %40, i32 0, i32 1
  %42 = load %struct.netcp_intf*, %struct.netcp_intf** %5, align 8
  %43 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %42, i32 0, i32 0
  %44 = call i32 @list_add_tail(i32* %41, i32* %43)
  %45 = load %struct.netcp_addr*, %struct.netcp_addr** %8, align 8
  store %struct.netcp_addr* %45, %struct.netcp_addr** %4, align 8
  br label %46

46:                                               ; preds = %39, %16
  %47 = load %struct.netcp_addr*, %struct.netcp_addr** %4, align 8
  ret %struct.netcp_addr* %47
}

declare dso_local %struct.netcp_addr* @devm_kmalloc(i32, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
