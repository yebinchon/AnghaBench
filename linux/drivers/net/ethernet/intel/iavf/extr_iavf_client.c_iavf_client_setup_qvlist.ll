; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_client.c_iavf_client_setup_qvlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_client.c_iavf_client_setup_qvlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_info = type { %struct.iavf_adapter* }
%struct.iavf_adapter = type { i64, i64, i32, %struct.TYPE_6__, %struct.TYPE_4__*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.iavf_client = type { i32 }
%struct.iavf_qvlist_info = type { i64, %struct.iavf_qv_info* }
%struct.iavf_qv_info = type { i64 }
%struct.virtchnl_iwarp_qvlist_info = type { i64 }

@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VIRTCHNL_OP_CONFIG_IWARP_IRQ_MAP = common dso_local global i32 0, align 4
@IAVF_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"Unable to send iWarp vector config message to PF, error %d, aq status %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_info*, %struct.iavf_client*, %struct.iavf_qvlist_info*)* @iavf_client_setup_qvlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_client_setup_qvlist(%struct.iavf_info* %0, %struct.iavf_client* %1, %struct.iavf_qvlist_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iavf_info*, align 8
  %6 = alloca %struct.iavf_client*, align 8
  %7 = alloca %struct.iavf_qvlist_info*, align 8
  %8 = alloca %struct.virtchnl_iwarp_qvlist_info*, align 8
  %9 = alloca %struct.iavf_adapter*, align 8
  %10 = alloca %struct.iavf_qv_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.iavf_info* %0, %struct.iavf_info** %5, align 8
  store %struct.iavf_client* %1, %struct.iavf_client** %6, align 8
  store %struct.iavf_qvlist_info* %2, %struct.iavf_qvlist_info** %7, align 8
  %15 = load %struct.iavf_info*, %struct.iavf_info** %5, align 8
  %16 = getelementptr inbounds %struct.iavf_info, %struct.iavf_info* %15, i32 0, i32 0
  %17 = load %struct.iavf_adapter*, %struct.iavf_adapter** %16, align 8
  store %struct.iavf_adapter* %17, %struct.iavf_adapter** %9, align 8
  %18 = load %struct.iavf_adapter*, %struct.iavf_adapter** %9, align 8
  %19 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %128

25:                                               ; preds = %3
  store i64 0, i64* %13, align 8
  br label %26

26:                                               ; preds = %64, %25
  %27 = load i64, i64* %13, align 8
  %28 = load %struct.iavf_qvlist_info*, %struct.iavf_qvlist_info** %7, align 8
  %29 = getelementptr inbounds %struct.iavf_qvlist_info, %struct.iavf_qvlist_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %67

32:                                               ; preds = %26
  %33 = load %struct.iavf_qvlist_info*, %struct.iavf_qvlist_info** %7, align 8
  %34 = getelementptr inbounds %struct.iavf_qvlist_info, %struct.iavf_qvlist_info* %33, i32 0, i32 1
  %35 = load %struct.iavf_qv_info*, %struct.iavf_qv_info** %34, align 8
  %36 = load i64, i64* %13, align 8
  %37 = getelementptr inbounds %struct.iavf_qv_info, %struct.iavf_qv_info* %35, i64 %36
  store %struct.iavf_qv_info* %37, %struct.iavf_qv_info** %10, align 8
  %38 = load %struct.iavf_qv_info*, %struct.iavf_qv_info** %10, align 8
  %39 = icmp ne %struct.iavf_qv_info* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  br label %64

41:                                               ; preds = %32
  %42 = load %struct.iavf_qv_info*, %struct.iavf_qv_info** %10, align 8
  %43 = getelementptr inbounds %struct.iavf_qv_info, %struct.iavf_qv_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load %struct.iavf_adapter*, %struct.iavf_adapter** %9, align 8
  %47 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.iavf_adapter*, %struct.iavf_adapter** %9, align 8
  %50 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %48, %51
  %53 = icmp uge i64 %45, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %41
  %55 = load i64, i64* %12, align 8
  %56 = load %struct.iavf_adapter*, %struct.iavf_adapter** %9, align 8
  %57 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54, %41
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %128

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %40
  %65 = load i64, i64* %13, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %13, align 8
  br label %26

67:                                               ; preds = %26
  %68 = load %struct.iavf_qvlist_info*, %struct.iavf_qvlist_info** %7, align 8
  %69 = bitcast %struct.iavf_qvlist_info* %68 to %struct.virtchnl_iwarp_qvlist_info*
  store %struct.virtchnl_iwarp_qvlist_info* %69, %struct.virtchnl_iwarp_qvlist_info** %8, align 8
  %70 = load %struct.virtchnl_iwarp_qvlist_info*, %struct.virtchnl_iwarp_qvlist_info** %8, align 8
  %71 = load %struct.iavf_qv_info*, %struct.iavf_qv_info** %10, align 8
  %72 = load %struct.virtchnl_iwarp_qvlist_info*, %struct.virtchnl_iwarp_qvlist_info** %8, align 8
  %73 = getelementptr inbounds %struct.virtchnl_iwarp_qvlist_info, %struct.virtchnl_iwarp_qvlist_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %74, 1
  %76 = call i64 @struct_size(%struct.virtchnl_iwarp_qvlist_info* %70, %struct.iavf_qv_info* %71, i64 %75)
  store i64 %76, i64* %14, align 8
  %77 = load i32, i32* @VIRTCHNL_OP_CONFIG_IWARP_IRQ_MAP, align 4
  %78 = call i32 @BIT(i32 %77)
  %79 = load %struct.iavf_adapter*, %struct.iavf_adapter** %9, align 8
  %80 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.iavf_adapter*, %struct.iavf_adapter** %9, align 8
  %84 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %83, i32 0, i32 3
  %85 = load i32, i32* @VIRTCHNL_OP_CONFIG_IWARP_IRQ_MAP, align 4
  %86 = load i32, i32* @IAVF_SUCCESS, align 4
  %87 = load %struct.virtchnl_iwarp_qvlist_info*, %struct.virtchnl_iwarp_qvlist_info** %8, align 8
  %88 = bitcast %struct.virtchnl_iwarp_qvlist_info* %87 to i32*
  %89 = load i64, i64* %14, align 8
  %90 = call i32 @iavf_aq_send_msg_to_pf(%struct.TYPE_6__* %84, i32 %85, i32 %86, i32* %88, i64 %89, i32* null)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %67
  %94 = load %struct.iavf_adapter*, %struct.iavf_adapter** %9, align 8
  %95 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %94, i32 0, i32 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.iavf_adapter*, %struct.iavf_adapter** %9, align 8
  %100 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %103)
  br label %126

105:                                              ; preds = %67
  %106 = load i32, i32* @EBUSY, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %11, align 4
  store i64 0, i64* %13, align 8
  br label %108

108:                                              ; preds = %122, %105
  %109 = load i64, i64* %13, align 8
  %110 = icmp ult i64 %109, 5
  br i1 %110, label %111, label %125

111:                                              ; preds = %108
  %112 = call i32 @msleep(i32 100)
  %113 = load %struct.iavf_adapter*, %struct.iavf_adapter** %9, align 8
  %114 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @VIRTCHNL_OP_CONFIG_IWARP_IRQ_MAP, align 4
  %117 = call i32 @BIT(i32 %116)
  %118 = and i32 %115, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %111
  store i32 0, i32* %11, align 4
  br label %125

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %13, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %13, align 8
  br label %108

125:                                              ; preds = %120, %108
  br label %126

126:                                              ; preds = %125, %93
  %127 = load i32, i32* %11, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %126, %60, %22
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i64 @struct_size(%struct.virtchnl_iwarp_qvlist_info*, %struct.iavf_qv_info*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @iavf_aq_send_msg_to_pf(%struct.TYPE_6__*, i32, i32, i32*, i64, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
