; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_init_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_init_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i32, i32, i64, %struct.TYPE_2__*, %struct.iavf_hw }
%struct.TYPE_2__ = type { i32 }
%struct.iavf_hw = type { i32 }

@VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2 = common dso_local global i32 0, align 4
@IAVF_DEFAULT_RSS_HENA_EXPANDED = common dso_local global i32 0, align 4
@IAVF_DEFAULT_RSS_HENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_adapter*)* @iavf_init_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_init_rss(%struct.iavf_adapter* %0) #0 {
  %2 = alloca %struct.iavf_adapter*, align 8
  %3 = alloca %struct.iavf_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %2, align 8
  %5 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %5, i32 0, i32 4
  store %struct.iavf_hw* %6, %struct.iavf_hw** %3, align 8
  %7 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %8 = call i32 @RSS_PF(%struct.iavf_adapter* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %41, label %10

10:                                               ; preds = %1
  %11 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  %20 = load i32, i32* @IAVF_DEFAULT_RSS_HENA_EXPANDED, align 4
  %21 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  br label %27

23:                                               ; preds = %10
  %24 = load i32, i32* @IAVF_DEFAULT_RSS_HENA, align 4
  %25 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.iavf_hw*, %struct.iavf_hw** %3, align 8
  %29 = call i32 @IAVF_VFQF_HENA(i32 0)
  %30 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @wr32(%struct.iavf_hw* %28, i32 %29, i32 %32)
  %34 = load %struct.iavf_hw*, %struct.iavf_hw** %3, align 8
  %35 = call i32 @IAVF_VFQF_HENA(i32 1)
  %36 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = ashr i32 %38, 32
  %40 = call i32 @wr32(%struct.iavf_hw* %34, i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %27, %1
  %42 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %43 = call i32 @iavf_fill_rss_lut(%struct.iavf_adapter* %42)
  %44 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @netdev_rss_key_fill(i8* %47, i32 %50)
  %52 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %53 = call i32 @iavf_config_rss(%struct.iavf_adapter* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @RSS_PF(%struct.iavf_adapter*) #1

declare dso_local i32 @wr32(%struct.iavf_hw*, i32, i32) #1

declare dso_local i32 @IAVF_VFQF_HENA(i32) #1

declare dso_local i32 @iavf_fill_rss_lut(%struct.iavf_adapter*) #1

declare dso_local i32 @netdev_rss_key_fill(i8*, i32) #1

declare dso_local i32 @iavf_config_rss(%struct.iavf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
