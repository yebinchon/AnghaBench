; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_set_rss_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_set_rss_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i64, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.virtchnl_rss_lut = type { i32, i32, i32 }

@VIRTCHNL_OP_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Cannot set RSS LUT, command %d pending\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@VIRTCHNL_OP_CONFIG_RSS_LUT = common dso_local global i64 0, align 8
@IAVF_FLAG_AQ_SET_RSS_LUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iavf_set_rss_lut(%struct.iavf_adapter* %0) #0 {
  %2 = alloca %struct.iavf_adapter*, align 8
  %3 = alloca %struct.virtchnl_rss_lut*, align 8
  %4 = alloca i32, align 4
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %2, align 8
  %5 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @VIRTCHNL_OP_UNKNOWN, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %11, i32 0, i32 5
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %17)
  br label %73

19:                                               ; preds = %1
  %20 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = add i64 12, %24
  %26 = sub i64 %25, 1
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.virtchnl_rss_lut* @kzalloc(i32 %28, i32 %29)
  store %struct.virtchnl_rss_lut* %30, %struct.virtchnl_rss_lut** %3, align 8
  %31 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %3, align 8
  %32 = icmp ne %struct.virtchnl_rss_lut* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %19
  br label %73

34:                                               ; preds = %19
  %35 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %3, align 8
  %40 = getelementptr inbounds %struct.virtchnl_rss_lut, %struct.virtchnl_rss_lut* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %3, align 8
  %45 = getelementptr inbounds %struct.virtchnl_rss_lut, %struct.virtchnl_rss_lut* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %3, align 8
  %47 = getelementptr inbounds %struct.virtchnl_rss_lut, %struct.virtchnl_rss_lut* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @memcpy(i32 %48, i32 %51, i32 %54)
  %56 = load i64, i64* @VIRTCHNL_OP_CONFIG_RSS_LUT, align 8
  %57 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* @IAVF_FLAG_AQ_SET_RSS_LUT, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %62 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.iavf_adapter*, %struct.iavf_adapter** %2, align 8
  %66 = load i64, i64* @VIRTCHNL_OP_CONFIG_RSS_LUT, align 8
  %67 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %3, align 8
  %68 = bitcast %struct.virtchnl_rss_lut* %67 to i32*
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @iavf_send_pf_msg(%struct.iavf_adapter* %65, i64 %66, i32* %68, i32 %69)
  %71 = load %struct.virtchnl_rss_lut*, %struct.virtchnl_rss_lut** %3, align 8
  %72 = call i32 @kfree(%struct.virtchnl_rss_lut* %71)
  br label %73

73:                                               ; preds = %34, %33, %10
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local %struct.virtchnl_rss_lut* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @iavf_send_pf_msg(%struct.iavf_adapter*, i64, i32*, i32) #1

declare dso_local i32 @kfree(%struct.virtchnl_rss_lut*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
