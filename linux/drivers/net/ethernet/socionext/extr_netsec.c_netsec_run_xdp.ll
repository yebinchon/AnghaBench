; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_run_xdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_run_xdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netsec_priv = type { i32 }
%struct.bpf_prog = type { i32 }
%struct.xdp_buff = type { i32 }

@NETSEC_XDP_PASS = common dso_local global i32 0, align 4
@NETSEC_XDP_TX = common dso_local global i32 0, align 4
@NETSEC_XDP_REDIR = common dso_local global i32 0, align 4
@NETSEC_XDP_CONSUMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netsec_priv*, %struct.bpf_prog*, %struct.xdp_buff*)* @netsec_run_xdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netsec_run_xdp(%struct.netsec_priv* %0, %struct.bpf_prog* %1, %struct.xdp_buff* %2) #0 {
  %4 = alloca %struct.netsec_priv*, align 8
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca %struct.xdp_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.netsec_priv* %0, %struct.netsec_priv** %4, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %5, align 8
  store %struct.xdp_buff* %2, %struct.xdp_buff** %6, align 8
  %10 = load i32, i32* @NETSEC_XDP_PASS, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %12 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %13 = call i32 @bpf_prog_run_xdp(%struct.bpf_prog* %11, %struct.xdp_buff* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %44 [
    i32 130, label %15
    i32 128, label %17
    i32 129, label %28
    i32 132, label %47
    i32 131, label %54
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* @NETSEC_XDP_PASS, align 4
  store i32 %16, i32* %7, align 4
  br label %58

17:                                               ; preds = %3
  %18 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %19 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %20 = call i32 @netsec_xdp_xmit_back(%struct.netsec_priv* %18, %struct.xdp_buff* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @NETSEC_XDP_TX, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %26 = call i32 @xdp_return_buff(%struct.xdp_buff* %25)
  br label %27

27:                                               ; preds = %24, %17
  br label %58

28:                                               ; preds = %3
  %29 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %30 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %33 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %34 = call i32 @xdp_do_redirect(i32 %31, %struct.xdp_buff* %32, %struct.bpf_prog* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @NETSEC_XDP_REDIR, align 4
  store i32 %38, i32* %7, align 4
  br label %43

39:                                               ; preds = %28
  %40 = load i32, i32* @NETSEC_XDP_CONSUMED, align 4
  store i32 %40, i32* %7, align 4
  %41 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %42 = call i32 @xdp_return_buff(%struct.xdp_buff* %41)
  br label %43

43:                                               ; preds = %39, %37
  br label %58

44:                                               ; preds = %3
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @bpf_warn_invalid_xdp_action(i32 %45)
  br label %47

47:                                               ; preds = %3, %44
  %48 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %49 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @trace_xdp_exception(i32 %50, %struct.bpf_prog* %51, i32 %52)
  br label %54

54:                                               ; preds = %3, %47
  %55 = load i32, i32* @NETSEC_XDP_CONSUMED, align 4
  store i32 %55, i32* %7, align 4
  %56 = load %struct.xdp_buff*, %struct.xdp_buff** %6, align 8
  %57 = call i32 @xdp_return_buff(%struct.xdp_buff* %56)
  br label %58

58:                                               ; preds = %54, %43, %27, %15
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @bpf_prog_run_xdp(%struct.bpf_prog*, %struct.xdp_buff*) #1

declare dso_local i32 @netsec_xdp_xmit_back(%struct.netsec_priv*, %struct.xdp_buff*) #1

declare dso_local i32 @xdp_return_buff(%struct.xdp_buff*) #1

declare dso_local i32 @xdp_do_redirect(i32, %struct.xdp_buff*, %struct.bpf_prog*) #1

declare dso_local i32 @bpf_warn_invalid_xdp_action(i32) #1

declare dso_local i32 @trace_xdp_exception(i32, %struct.bpf_prog*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
