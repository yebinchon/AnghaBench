; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_receive_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_receive_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp = type { i32 }
%struct.sk_buff = type { i64 }
%struct.channel = type { i32 }

@PPP_MP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppp*, %struct.sk_buff*, %struct.channel*)* @ppp_receive_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppp_receive_frame(%struct.ppp* %0, %struct.sk_buff* %1, %struct.channel* %2) #0 {
  %4 = alloca %struct.ppp*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.channel*, align 8
  store %struct.ppp* %0, %struct.ppp** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.channel* %2, %struct.channel** %6, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call i32 @skb_checksum_complete_unset(%struct.sk_buff* %12)
  %14 = load %struct.ppp*, %struct.ppp** %4, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call i32 @ppp_receive_nonmp_frame(%struct.ppp* %14, %struct.sk_buff* %15)
  br label %22

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call i32 @kfree_skb(%struct.sk_buff* %18)
  %20 = load %struct.ppp*, %struct.ppp** %4, align 8
  %21 = call i32 @ppp_receive_error(%struct.ppp* %20)
  br label %22

22:                                               ; preds = %17, %11
  ret void
}

declare dso_local i32 @skb_checksum_complete_unset(%struct.sk_buff*) #1

declare dso_local i32 @ppp_receive_nonmp_frame(%struct.ppp*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ppp_receive_error(%struct.ppp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
