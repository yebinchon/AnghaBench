; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_core.c_ipvlan_handle_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_core.c_ipvlan_handle_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ipvl_port = type { i32 }

@RX_HANDLER_PASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"ipvlan_handle_frame() called for mode = [%hx]\0A\00", align 1
@RX_HANDLER_CONSUMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipvlan_handle_frame(%struct.sk_buff** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff**, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ipvl_port*, align 8
  store %struct.sk_buff** %0, %struct.sk_buff*** %3, align 8
  %6 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %7, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ipvl_port* @ipvlan_port_get_rcu(i32 %10)
  store %struct.ipvl_port* %11, %struct.ipvl_port** %5, align 8
  %12 = load %struct.ipvl_port*, %struct.ipvl_port** %5, align 8
  %13 = icmp ne %struct.ipvl_port* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @RX_HANDLER_PASS, align 4
  store i32 %15, i32* %2, align 4
  br label %36

16:                                               ; preds = %1
  %17 = load %struct.ipvl_port*, %struct.ipvl_port** %5, align 8
  %18 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %28 [
    i32 130, label %20
    i32 129, label %24
  ]

20:                                               ; preds = %16
  %21 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  %22 = load %struct.ipvl_port*, %struct.ipvl_port** %5, align 8
  %23 = call i32 @ipvlan_handle_mode_l2(%struct.sk_buff** %21, %struct.ipvl_port* %22)
  store i32 %23, i32* %2, align 4
  br label %36

24:                                               ; preds = %16
  %25 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  %26 = load %struct.ipvl_port*, %struct.ipvl_port** %5, align 8
  %27 = call i32 @ipvlan_handle_mode_l3(%struct.sk_buff** %25, %struct.ipvl_port* %26)
  store i32 %27, i32* %2, align 4
  br label %36

28:                                               ; preds = %16
  %29 = load %struct.ipvl_port*, %struct.ipvl_port** %5, align 8
  %30 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i32 @kfree_skb(%struct.sk_buff* %33)
  %35 = load i32, i32* @RX_HANDLER_CONSUMED, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %28, %24, %20, %14
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.ipvl_port* @ipvlan_port_get_rcu(i32) #1

declare dso_local i32 @ipvlan_handle_mode_l2(%struct.sk_buff**, %struct.ipvl_port*) #1

declare dso_local i32 @ipvlan_handle_mode_l3(%struct.sk_buff**, %struct.ipvl_port*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
