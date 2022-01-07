; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_ebpf_select_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_ebpf_select_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_struct = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.tun_prog = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tun_struct*, %struct.sk_buff*)* @tun_ebpf_select_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tun_ebpf_select_queue(%struct.tun_struct* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tun_struct*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tun_prog*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tun_struct* %0, %struct.tun_struct** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.tun_struct*, %struct.tun_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @READ_ONCE(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

16:                                               ; preds = %2
  %17 = load %struct.tun_struct*, %struct.tun_struct** %4, align 8
  %18 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.tun_prog* @rcu_dereference(i32 %19)
  store %struct.tun_prog* %20, %struct.tun_prog** %6, align 8
  %21 = load %struct.tun_prog*, %struct.tun_prog** %6, align 8
  %22 = icmp ne %struct.tun_prog* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load %struct.tun_prog*, %struct.tun_prog** %6, align 8
  %25 = getelementptr inbounds %struct.tun_prog, %struct.tun_prog* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call i32 @bpf_prog_run_clear_cb(i32 %26, %struct.sk_buff* %27)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %23, %16
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = srem i32 %30, %31
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %15
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local %struct.tun_prog* @rcu_dereference(i32) #1

declare dso_local i32 @bpf_prog_run_clear_cb(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
