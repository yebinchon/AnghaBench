; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_free_rx_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_free_rx_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.bnxt_rx_ring_info* }
%struct.bnxt_rx_ring_info = type { %struct.bnxt_ring_struct, %struct.bnxt_ring_struct, i32*, i32*, i32, i64 }
%struct.bnxt_ring_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_free_rx_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_free_rx_rings(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt_rx_ring_info*, align 8
  %5 = alloca %struct.bnxt_ring_struct*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %6 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %7 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %6, i32 0, i32 1
  %8 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %9 = icmp ne %struct.bnxt_rx_ring_info* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %73

11:                                               ; preds = %1
  %12 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %13 = call i32 @bnxt_free_tpa_info(%struct.bnxt* %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %70, %11
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %17 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %73

20:                                               ; preds = %14
  %21 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %22 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %21, i32 0, i32 1
  %23 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %23, i64 %25
  store %struct.bnxt_rx_ring_info* %26, %struct.bnxt_rx_ring_info** %4, align 8
  %27 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %4, align 8
  %28 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %20
  %32 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %4, align 8
  %33 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @bpf_prog_put(i64 %34)
  br label %36

36:                                               ; preds = %31, %20
  %37 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %4, align 8
  %38 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %37, i32 0, i32 4
  %39 = call i64 @xdp_rxq_info_is_reg(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %4, align 8
  %43 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %42, i32 0, i32 4
  %44 = call i32 @xdp_rxq_info_unreg(i32* %43)
  br label %45

45:                                               ; preds = %41, %36
  %46 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %4, align 8
  %47 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @page_pool_destroy(i32* %48)
  %50 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %4, align 8
  %51 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %50, i32 0, i32 3
  store i32* null, i32** %51, align 8
  %52 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %4, align 8
  %53 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @kfree(i32* %54)
  %56 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %4, align 8
  %57 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %56, i32 0, i32 2
  store i32* null, i32** %57, align 8
  %58 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %4, align 8
  %59 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %58, i32 0, i32 1
  store %struct.bnxt_ring_struct* %59, %struct.bnxt_ring_struct** %5, align 8
  %60 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %61 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %5, align 8
  %62 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %61, i32 0, i32 0
  %63 = call i32 @bnxt_free_ring(%struct.bnxt* %60, i32* %62)
  %64 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %4, align 8
  %65 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %64, i32 0, i32 0
  store %struct.bnxt_ring_struct* %65, %struct.bnxt_ring_struct** %5, align 8
  %66 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %67 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %5, align 8
  %68 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %67, i32 0, i32 0
  %69 = call i32 @bnxt_free_ring(%struct.bnxt* %66, i32* %68)
  br label %70

70:                                               ; preds = %45
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %14

73:                                               ; preds = %10, %14
  ret void
}

declare dso_local i32 @bnxt_free_tpa_info(%struct.bnxt*) #1

declare dso_local i32 @bpf_prog_put(i64) #1

declare dso_local i64 @xdp_rxq_info_is_reg(i32*) #1

declare dso_local i32 @xdp_rxq_info_unreg(i32*) #1

declare dso_local i32 @page_pool_destroy(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @bnxt_free_ring(%struct.bnxt*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
