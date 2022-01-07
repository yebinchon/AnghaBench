; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rx_rings_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rx_rings_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32* }
%struct.nfp_net_dp = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_net*, %struct.nfp_net_dp*)* @nfp_net_rx_rings_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_rx_rings_prepare(%struct.nfp_net* %0, %struct.nfp_net_dp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_net*, align 8
  %5 = alloca %struct.nfp_net_dp*, align 8
  %6 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %4, align 8
  store %struct.nfp_net_dp* %1, %struct.nfp_net_dp** %5, align 8
  %7 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %8 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32* @kcalloc(i32 %9, i32 4, i32 %10)
  %12 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %13 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %12, i32 0, i32 1
  store i32* %11, i32** %13, align 8
  %14 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %15 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %98

21:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %65, %21
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %25 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %22
  %29 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %30 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %36 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @nfp_net_rx_ring_init(i32* %34, i32* %40, i32 %41)
  %43 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %44 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %45 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i64 @nfp_net_rx_ring_alloc(%struct.nfp_net_dp* %43, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %28
  br label %69

53:                                               ; preds = %28
  %54 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %55 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %56 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i64 @nfp_net_rx_ring_bufs_alloc(%struct.nfp_net_dp* %54, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %83

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %22

68:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %98

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %83, %69
  %71 = load i32, i32* %6, align 4
  %72 = add i32 %71, -1
  store i32 %72, i32* %6, align 4
  %73 = icmp ne i32 %71, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %70
  %75 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %76 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %77 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = call i32 @nfp_net_rx_ring_bufs_free(%struct.nfp_net_dp* %75, i32* %81)
  br label %83

83:                                               ; preds = %74, %63
  %84 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %85 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = call i32 @nfp_net_rx_ring_free(i32* %89)
  br label %70

91:                                               ; preds = %70
  %92 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %93 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @kfree(i32* %94)
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %91, %68, %18
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @nfp_net_rx_ring_init(i32*, i32*, i32) #1

declare dso_local i64 @nfp_net_rx_ring_alloc(%struct.nfp_net_dp*, i32*) #1

declare dso_local i64 @nfp_net_rx_ring_bufs_alloc(%struct.nfp_net_dp*, i32*) #1

declare dso_local i32 @nfp_net_rx_ring_bufs_free(%struct.nfp_net_dp*, i32*) #1

declare dso_local i32 @nfp_net_rx_ring_free(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
