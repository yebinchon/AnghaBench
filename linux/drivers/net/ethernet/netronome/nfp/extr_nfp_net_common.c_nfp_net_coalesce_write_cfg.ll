; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_coalesce_write_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_coalesce_write_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32, i32, i32, i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfp_net_coalesce_write_cfg(%struct.nfp_net* %0) #0 {
  %2 = alloca %struct.nfp_net*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %2, align 8
  %6 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %7 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sdiv i32 %9, 16
  store i32 %10, i32* %4, align 4
  %11 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %12 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = shl i32 %13, 16
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %17 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %15, %18
  %20 = or i32 %14, %19
  store i32 %20, i32* %5, align 4
  store i64 0, i64* %3, align 8
  br label %21

21:                                               ; preds = %34, %1
  %22 = load i64, i64* %3, align 8
  %23 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %24 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %22, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @NFP_NET_CFG_RXR_IRQ_MOD(i64 %30)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @nn_writel(%struct.nfp_net* %29, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %28
  %35 = load i64, i64* %3, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %3, align 8
  br label %21

37:                                               ; preds = %21
  %38 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %39 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = shl i32 %40, 16
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %44 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %42, %45
  %47 = or i32 %41, %46
  store i32 %47, i32* %5, align 4
  store i64 0, i64* %3, align 8
  br label %48

48:                                               ; preds = %61, %37
  %49 = load i64, i64* %3, align 8
  %50 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %51 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %49, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %57 = load i64, i64* %3, align 8
  %58 = call i32 @NFP_NET_CFG_TXR_IRQ_MOD(i64 %57)
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @nn_writel(%struct.nfp_net* %56, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %55
  %62 = load i64, i64* %3, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %3, align 8
  br label %48

64:                                               ; preds = %48
  ret void
}

declare dso_local i32 @nn_writel(%struct.nfp_net*, i32, i32) #1

declare dso_local i32 @NFP_NET_CFG_RXR_IRQ_MOD(i64) #1

declare dso_local i32 @NFP_NET_CFG_TXR_IRQ_MOD(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
