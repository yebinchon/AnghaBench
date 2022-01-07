; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_xdp_act.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_xdp_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_struct = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bpf_prog = type { i32 }
%struct.xdp_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tun_struct*, %struct.bpf_prog*, %struct.xdp_buff*, i32)* @tun_xdp_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tun_xdp_act(%struct.tun_struct* %0, %struct.bpf_prog* %1, %struct.xdp_buff* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tun_struct*, align 8
  %7 = alloca %struct.bpf_prog*, align 8
  %8 = alloca %struct.xdp_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tun_struct* %0, %struct.tun_struct** %6, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %7, align 8
  store %struct.xdp_buff* %2, %struct.xdp_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  switch i32 %11, label %36 [
    i32 129, label %12
    i32 128, label %24
    i32 130, label %35
    i32 132, label %39
    i32 131, label %46
  ]

12:                                               ; preds = %4
  %13 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %14 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %17 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %18 = call i32 @xdp_do_redirect(i32 %15, %struct.xdp_buff* %16, %struct.bpf_prog* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %5, align 4
  br label %55

23:                                               ; preds = %12
  br label %53

24:                                               ; preds = %4
  %25 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %26 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %29 = call i32 @tun_xdp_tx(i32 %27, %struct.xdp_buff* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %55

34:                                               ; preds = %24
  br label %53

35:                                               ; preds = %4
  br label %53

36:                                               ; preds = %4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @bpf_warn_invalid_xdp_action(i32 %37)
  br label %39

39:                                               ; preds = %4, %36
  %40 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %41 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @trace_xdp_exception(i32 %42, %struct.bpf_prog* %43, i32 %44)
  br label %46

46:                                               ; preds = %4, %39
  %47 = load %struct.tun_struct*, %struct.tun_struct** %6, align 8
  %48 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @this_cpu_inc(i32 %51)
  br label %53

53:                                               ; preds = %46, %35, %34, %23
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %32, %21
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @xdp_do_redirect(i32, %struct.xdp_buff*, %struct.bpf_prog*) #1

declare dso_local i32 @tun_xdp_tx(i32, %struct.xdp_buff*) #1

declare dso_local i32 @bpf_warn_invalid_xdp_action(i32) #1

declare dso_local i32 @trace_xdp_exception(i32, %struct.bpf_prog*, i32) #1

declare dso_local i32 @this_cpu_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
