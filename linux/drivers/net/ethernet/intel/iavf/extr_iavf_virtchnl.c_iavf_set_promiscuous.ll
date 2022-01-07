; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_set_promiscuous.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_set_promiscuous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.virtchnl_promisc_info = type { i32, i32 }

@VIRTCHNL_OP_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Cannot set promiscuous mode, command %d pending\0A\00", align 1
@FLAG_VF_UNICAST_PROMISC = common dso_local global i32 0, align 4
@FLAG_VF_MULTICAST_PROMISC = common dso_local global i32 0, align 4
@IAVF_FLAG_PROMISC_ON = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_REQUEST_PROMISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Entering promiscuous mode\0A\00", align 1
@IAVF_FLAG_ALLMULTI_ON = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_REQUEST_ALLMULTI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Entering multicast promiscuous mode\0A\00", align 1
@IAVF_FLAG_AQ_RELEASE_PROMISC = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_RELEASE_ALLMULTI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Leaving promiscuous mode\0A\00", align 1
@VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iavf_set_promiscuous(%struct.iavf_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.iavf_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.virtchnl_promisc_info, align 4
  %6 = alloca i32, align 4
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VIRTCHNL_OP_UNKNOWN, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %13, i32 0, i32 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %110

21:                                               ; preds = %2
  %22 = load i32, i32* @FLAG_VF_UNICAST_PROMISC, align 4
  %23 = load i32, i32* @FLAG_VF_MULTICAST_PROMISC, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %21
  %31 = load i32, i32* @IAVF_FLAG_PROMISC_ON, align 4
  %32 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* @IAVF_FLAG_AQ_REQUEST_PROMISC, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %42, i32 0, i32 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @dev_info(i32* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %30, %21
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @FLAG_VF_MULTICAST_PROMISC, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %47
  %53 = load i32, i32* @IAVF_FLAG_ALLMULTI_ON, align 4
  %54 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* @IAVF_FLAG_AQ_REQUEST_ALLMULTI, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %64, i32 0, i32 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = call i32 @dev_info(i32* %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %52, %47
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %94, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @IAVF_FLAG_PROMISC_ON, align 4
  %74 = load i32, i32* @IAVF_FLAG_ALLMULTI_ON, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load i32, i32* @IAVF_FLAG_AQ_RELEASE_PROMISC, align 4
  %82 = load i32, i32* @IAVF_FLAG_AQ_RELEASE_ALLMULTI, align 4
  %83 = or i32 %81, %82
  %84 = xor i32 %83, -1
  %85 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %89, i32 0, i32 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = call i32 @dev_info(i32* %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %94

94:                                               ; preds = %72, %69
  %95 = load i64, i64* @VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE, align 8
  %96 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %97 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %99 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %98, i32 0, i32 3
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.virtchnl_promisc_info, %struct.virtchnl_promisc_info* %5, i32 0, i32 1
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* %4, align 4
  %105 = getelementptr inbounds %struct.virtchnl_promisc_info, %struct.virtchnl_promisc_info* %5, i32 0, i32 0
  store i32 %104, i32* %105, align 4
  %106 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %107 = load i64, i64* @VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE, align 8
  %108 = bitcast %struct.virtchnl_promisc_info* %5 to i32*
  %109 = call i32 @iavf_send_pf_msg(%struct.iavf_adapter* %106, i64 %107, i32* %108, i32 8)
  br label %110

110:                                              ; preds = %94, %12
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @iavf_send_pf_msg(%struct.iavf_adapter*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
