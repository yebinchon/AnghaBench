; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_tx_rings_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_tx_rings_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32* }
%struct.nfp_net_dp = type { i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_net*, %struct.nfp_net_dp*)* @nfp_net_tx_rings_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_tx_rings_prepare(%struct.nfp_net* %0, %struct.nfp_net_dp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_net*, align 8
  %5 = alloca %struct.nfp_net_dp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %4, align 8
  store %struct.nfp_net_dp* %1, %struct.nfp_net_dp** %5, align 8
  %8 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %9 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32* @kcalloc(i32 %10, i32 4, i32 %11)
  %13 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %14 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %13, i32 0, i32 2
  store i32* %12, i32** %14, align 8
  %15 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %16 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %112

22:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %79, %22
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %26 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %82

29:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %32 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp uge i32 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %37 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %35, %29
  %40 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %41 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %47 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub i32 %49, %50
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @nfp_net_tx_ring_init(i32* %45, i32* %53, i32 %54, i32 %55)
  %57 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %58 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %59 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = call i64 @nfp_net_tx_ring_alloc(%struct.nfp_net_dp* %57, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %39
  br label %83

67:                                               ; preds = %39
  %68 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %69 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %70 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i64 @nfp_net_tx_ring_bufs_alloc(%struct.nfp_net_dp* %68, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %97

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %6, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %23

82:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %112

83:                                               ; preds = %66
  br label %84

84:                                               ; preds = %97, %83
  %85 = load i32, i32* %6, align 4
  %86 = add i32 %85, -1
  store i32 %86, i32* %6, align 4
  %87 = icmp ne i32 %85, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %84
  %89 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %90 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %91 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = call i32 @nfp_net_tx_ring_bufs_free(%struct.nfp_net_dp* %89, i32* %95)
  br label %97

97:                                               ; preds = %88, %77
  %98 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %99 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = call i32 @nfp_net_tx_ring_free(i32* %103)
  br label %84

105:                                              ; preds = %84
  %106 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %5, align 8
  %107 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @kfree(i32* %108)
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %105, %82, %19
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @nfp_net_tx_ring_init(i32*, i32*, i32, i32) #1

declare dso_local i64 @nfp_net_tx_ring_alloc(%struct.nfp_net_dp*, i32*) #1

declare dso_local i64 @nfp_net_tx_ring_bufs_alloc(%struct.nfp_net_dp*, i32*) #1

declare dso_local i32 @nfp_net_tx_ring_bufs_free(%struct.nfp_net_dp*, i32*) #1

declare dso_local i32 @nfp_net_tx_ring_free(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
