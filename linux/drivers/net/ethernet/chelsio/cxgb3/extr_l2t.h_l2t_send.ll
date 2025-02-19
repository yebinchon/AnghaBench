; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_l2t.h_l2t_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_l2t.h_l2t_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.l2t_entry = type { i64 }

@L2T_STATE_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t3cdev*, %struct.sk_buff*, %struct.l2t_entry*)* @l2t_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2t_send(%struct.t3cdev* %0, %struct.sk_buff* %1, %struct.l2t_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.t3cdev*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.l2t_entry*, align 8
  store %struct.t3cdev* %0, %struct.t3cdev** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.l2t_entry* %2, %struct.l2t_entry** %7, align 8
  %8 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %9 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @L2T_STATE_VALID, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @likely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.t3cdev*, %struct.t3cdev** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32 @cxgb3_ofld_send(%struct.t3cdev* %17, %struct.sk_buff* %18)
  store i32 %19, i32* %4, align 4
  br label %25

20:                                               ; preds = %3
  %21 = load %struct.t3cdev*, %struct.t3cdev** %5, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %24 = call i32 @t3_l2t_send_slow(%struct.t3cdev* %21, %struct.sk_buff* %22, %struct.l2t_entry* %23)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %20, %16
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @cxgb3_ofld_send(%struct.t3cdev*, %struct.sk_buff*) #1

declare dso_local i32 @t3_l2t_send_slow(%struct.t3cdev*, %struct.sk_buff*, %struct.l2t_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
