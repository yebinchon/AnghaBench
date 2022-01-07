; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pppoe.c_get_item.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pppoe.c_get_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pppox_sock = type { i32 }
%struct.pppoe_net = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pppox_sock* (%struct.pppoe_net*, i32, i8*, i32)* @get_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pppox_sock* @get_item(%struct.pppoe_net* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.pppoe_net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pppox_sock*, align 8
  store %struct.pppoe_net* %0, %struct.pppoe_net** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.pppoe_net*, %struct.pppoe_net** %5, align 8
  %11 = getelementptr inbounds %struct.pppoe_net, %struct.pppoe_net* %10, i32 0, i32 0
  %12 = call i32 @read_lock_bh(i32* %11)
  %13 = load %struct.pppoe_net*, %struct.pppoe_net** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.pppox_sock* @__get_item(%struct.pppoe_net* %13, i32 %14, i8* %15, i32 %16)
  store %struct.pppox_sock* %17, %struct.pppox_sock** %9, align 8
  %18 = load %struct.pppox_sock*, %struct.pppox_sock** %9, align 8
  %19 = icmp ne %struct.pppox_sock* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.pppox_sock*, %struct.pppox_sock** %9, align 8
  %22 = call i32 @sk_pppox(%struct.pppox_sock* %21)
  %23 = call i32 @sock_hold(i32 %22)
  br label %24

24:                                               ; preds = %20, %4
  %25 = load %struct.pppoe_net*, %struct.pppoe_net** %5, align 8
  %26 = getelementptr inbounds %struct.pppoe_net, %struct.pppoe_net* %25, i32 0, i32 0
  %27 = call i32 @read_unlock_bh(i32* %26)
  %28 = load %struct.pppox_sock*, %struct.pppox_sock** %9, align 8
  ret %struct.pppox_sock* %28
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.pppox_sock* @__get_item(%struct.pppoe_net*, i32, i8*, i32) #1

declare dso_local i32 @sock_hold(i32) #1

declare dso_local i32 @sk_pppox(%struct.pppox_sock*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
