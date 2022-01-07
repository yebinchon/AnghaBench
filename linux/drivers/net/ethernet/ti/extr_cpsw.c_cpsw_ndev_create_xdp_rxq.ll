; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_ndev_create_xdp_rxq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_ndev_create_xdp_rxq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_priv = type { i32, %struct.xdp_rxq_info*, %struct.cpsw_common* }
%struct.xdp_rxq_info = type { i32 }
%struct.cpsw_common = type { %struct.page_pool** }
%struct.page_pool = type { i32 }

@MEM_TYPE_PAGE_POOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpsw_priv*, i32)* @cpsw_ndev_create_xdp_rxq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_ndev_create_xdp_rxq(%struct.cpsw_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpsw_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpsw_common*, align 8
  %7 = alloca %struct.xdp_rxq_info*, align 8
  %8 = alloca %struct.page_pool*, align 8
  %9 = alloca i32, align 4
  store %struct.cpsw_priv* %0, %struct.cpsw_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %11 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %10, i32 0, i32 2
  %12 = load %struct.cpsw_common*, %struct.cpsw_common** %11, align 8
  store %struct.cpsw_common* %12, %struct.cpsw_common** %6, align 8
  %13 = load %struct.cpsw_common*, %struct.cpsw_common** %6, align 8
  %14 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %13, i32 0, i32 0
  %15 = load %struct.page_pool**, %struct.page_pool*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.page_pool*, %struct.page_pool** %15, i64 %17
  %19 = load %struct.page_pool*, %struct.page_pool** %18, align 8
  store %struct.page_pool* %19, %struct.page_pool** %8, align 8
  %20 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %21 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %20, i32 0, i32 1
  %22 = load %struct.xdp_rxq_info*, %struct.xdp_rxq_info** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.xdp_rxq_info, %struct.xdp_rxq_info* %22, i64 %24
  store %struct.xdp_rxq_info* %25, %struct.xdp_rxq_info** %7, align 8
  %26 = load %struct.xdp_rxq_info*, %struct.xdp_rxq_info** %7, align 8
  %27 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %28 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @xdp_rxq_info_reg(%struct.xdp_rxq_info* %26, i32 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %48

36:                                               ; preds = %2
  %37 = load %struct.xdp_rxq_info*, %struct.xdp_rxq_info** %7, align 8
  %38 = load i32, i32* @MEM_TYPE_PAGE_POOL, align 4
  %39 = load %struct.page_pool*, %struct.page_pool** %8, align 8
  %40 = call i32 @xdp_rxq_info_reg_mem_model(%struct.xdp_rxq_info* %37, i32 %38, %struct.page_pool* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.xdp_rxq_info*, %struct.xdp_rxq_info** %7, align 8
  %45 = call i32 @xdp_rxq_info_unreg(%struct.xdp_rxq_info* %44)
  br label %46

46:                                               ; preds = %43, %36
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %34
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @xdp_rxq_info_reg(%struct.xdp_rxq_info*, i32, i32) #1

declare dso_local i32 @xdp_rxq_info_reg_mem_model(%struct.xdp_rxq_info*, i32, %struct.page_pool*) #1

declare dso_local i32 @xdp_rxq_info_unreg(%struct.xdp_rxq_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
