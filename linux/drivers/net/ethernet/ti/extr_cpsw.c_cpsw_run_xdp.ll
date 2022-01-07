; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_run_xdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_run_xdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_priv = type { i32, %struct.net_device*, %struct.cpsw_common* }
%struct.net_device = type { i32 }
%struct.cpsw_common = type { i32* }
%struct.xdp_buff = type { i32 }
%struct.page = type { i32 }
%struct.xdp_frame = type { i32 }
%struct.bpf_prog = type { i32 }

@CPSW_XDP_CONSUMED = common dso_local global i32 0, align 4
@CPSW_XDP_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpsw_priv*, i32, %struct.xdp_buff*, %struct.page*)* @cpsw_run_xdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_run_xdp(%struct.cpsw_priv* %0, i32 %1, %struct.xdp_buff* %2, %struct.page* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpsw_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xdp_buff*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.cpsw_common*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.xdp_frame*, align 8
  %14 = alloca %struct.bpf_prog*, align 8
  %15 = alloca i32, align 4
  store %struct.cpsw_priv* %0, %struct.cpsw_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.xdp_buff* %2, %struct.xdp_buff** %8, align 8
  store %struct.page* %3, %struct.page** %9, align 8
  %16 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %17 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %16, i32 0, i32 2
  %18 = load %struct.cpsw_common*, %struct.cpsw_common** %17, align 8
  store %struct.cpsw_common* %18, %struct.cpsw_common** %10, align 8
  %19 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %20 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %19, i32 0, i32 1
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %11, align 8
  %22 = load i32, i32* @CPSW_XDP_CONSUMED, align 4
  store i32 %22, i32* %12, align 4
  %23 = call i32 (...) @rcu_read_lock()
  %24 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %25 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.bpf_prog* @READ_ONCE(i32 %26)
  store %struct.bpf_prog* %27, %struct.bpf_prog** %14, align 8
  %28 = load %struct.bpf_prog*, %struct.bpf_prog** %14, align 8
  %29 = icmp ne %struct.bpf_prog* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* @CPSW_XDP_PASS, align 4
  store i32 %31, i32* %12, align 4
  br label %73

32:                                               ; preds = %4
  %33 = load %struct.bpf_prog*, %struct.bpf_prog** %14, align 8
  %34 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %35 = call i32 @bpf_prog_run_xdp(%struct.bpf_prog* %33, %struct.xdp_buff* %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  switch i32 %36, label %63 [
    i32 130, label %37
    i32 128, label %39
    i32 129, label %54
    i32 132, label %66
    i32 131, label %71
  ]

37:                                               ; preds = %32
  %38 = load i32, i32* @CPSW_XDP_PASS, align 4
  store i32 %38, i32* %12, align 4
  br label %72

39:                                               ; preds = %32
  %40 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %41 = call %struct.xdp_frame* @convert_to_xdp_frame(%struct.xdp_buff* %40)
  store %struct.xdp_frame* %41, %struct.xdp_frame** %13, align 8
  %42 = load %struct.xdp_frame*, %struct.xdp_frame** %13, align 8
  %43 = icmp ne %struct.xdp_frame* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @unlikely(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %76

49:                                               ; preds = %39
  %50 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %51 = load %struct.xdp_frame*, %struct.xdp_frame** %13, align 8
  %52 = load %struct.page*, %struct.page** %9, align 8
  %53 = call i32 @cpsw_xdp_tx_frame(%struct.cpsw_priv* %50, %struct.xdp_frame* %51, %struct.page* %52)
  br label %72

54:                                               ; preds = %32
  %55 = load %struct.net_device*, %struct.net_device** %11, align 8
  %56 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %57 = load %struct.bpf_prog*, %struct.bpf_prog** %14, align 8
  %58 = call i32 @xdp_do_redirect(%struct.net_device* %55, %struct.xdp_buff* %56, %struct.bpf_prog* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %76

61:                                               ; preds = %54
  %62 = call i32 (...) @xdp_do_flush_map()
  br label %72

63:                                               ; preds = %32
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @bpf_warn_invalid_xdp_action(i32 %64)
  br label %66

66:                                               ; preds = %32, %63
  %67 = load %struct.net_device*, %struct.net_device** %11, align 8
  %68 = load %struct.bpf_prog*, %struct.bpf_prog** %14, align 8
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @trace_xdp_exception(%struct.net_device* %67, %struct.bpf_prog* %68, i32 %69)
  br label %71

71:                                               ; preds = %32, %66
  br label %76

72:                                               ; preds = %61, %49, %37
  br label %73

73:                                               ; preds = %72, %30
  %74 = call i32 (...) @rcu_read_unlock()
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %5, align 4
  br label %88

76:                                               ; preds = %71, %60, %48
  %77 = call i32 (...) @rcu_read_unlock()
  %78 = load %struct.cpsw_common*, %struct.cpsw_common** %10, align 8
  %79 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.page*, %struct.page** %9, align 8
  %86 = call i32 @page_pool_recycle_direct(i32 %84, %struct.page* %85)
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %76, %73
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.bpf_prog* @READ_ONCE(i32) #1

declare dso_local i32 @bpf_prog_run_xdp(%struct.bpf_prog*, %struct.xdp_buff*) #1

declare dso_local %struct.xdp_frame* @convert_to_xdp_frame(%struct.xdp_buff*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @cpsw_xdp_tx_frame(%struct.cpsw_priv*, %struct.xdp_frame*, %struct.page*) #1

declare dso_local i32 @xdp_do_redirect(%struct.net_device*, %struct.xdp_buff*, %struct.bpf_prog*) #1

declare dso_local i32 @xdp_do_flush_map(...) #1

declare dso_local i32 @bpf_warn_invalid_xdp_action(i32) #1

declare dso_local i32 @trace_xdp_exception(%struct.net_device*, %struct.bpf_prog*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @page_pool_recycle_direct(i32, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
