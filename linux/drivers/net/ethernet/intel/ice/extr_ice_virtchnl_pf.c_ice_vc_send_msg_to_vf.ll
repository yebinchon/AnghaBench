; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_vc_send_msg_to_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_vc_send_msg_to_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vf = type { i64, i32, i32, i32, %struct.ice_pf* }
%struct.ice_pf = type { %struct.TYPE_6__, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"VF %d failed opcode %d, retval: %d\0A\00", align 1
@ICE_DFLT_NUM_INVAL_MSGS_ALLOWED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Number of invalid messages exceeded for VF %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Use PF Control I/F to enable the VF\0A\00", align 1
@ICE_VF_STATE_DIS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ICE_AQ_RC_ENOSYS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"Unable to send the message to VF %d ret %d aq_err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vf*, i32, i32, i32*, i32)* @ice_vc_send_msg_to_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_vc_send_msg_to_vf(%struct.ice_vf* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ice_vf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ice_pf*, align 8
  store %struct.ice_vf* %0, %struct.ice_vf** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %15 = icmp ne %struct.ice_vf* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %5
  %17 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %18 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %21 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %20, i32 0, i32 4
  %22 = load %struct.ice_pf*, %struct.ice_pf** %21, align 8
  %23 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %19, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %16, %5
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %124

29:                                               ; preds = %16
  %30 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %31 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %30, i32 0, i32 4
  %32 = load %struct.ice_pf*, %struct.ice_pf** %31, align 8
  store %struct.ice_pf* %32, %struct.ice_pf** %13, align 8
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %29
  %36 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %37 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.ice_pf*, %struct.ice_pf** %13, align 8
  %41 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %45 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @dev_info(i32* %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47, i32 %48)
  %50 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %51 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ICE_DFLT_NUM_INVAL_MSGS_ALLOWED, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %35
  %56 = load %struct.ice_pf*, %struct.ice_pf** %13, align 8
  %57 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %61 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32*, i8*, ...) @dev_err(i32* %59, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load %struct.ice_pf*, %struct.ice_pf** %13, align 8
  %65 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = call i32 (i32*, i8*, ...) @dev_err(i32* %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @ICE_VF_STATE_DIS, align 4
  %70 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %71 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @set_bit(i32 %69, i32 %72)
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %124

76:                                               ; preds = %35
  br label %84

77:                                               ; preds = %29
  %78 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %79 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %83 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %77, %76
  %85 = load %struct.ice_pf*, %struct.ice_pf** %13, align 8
  %86 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %85, i32 0, i32 0
  %87 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %88 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @ice_aq_send_msg_to_vf(%struct.TYPE_6__* %86, i32 %89, i32 %90, i32 %91, i32* %92, i32 %93, i32* null)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %123

97:                                               ; preds = %84
  %98 = load %struct.ice_pf*, %struct.ice_pf** %13, align 8
  %99 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @ICE_AQ_RC_ENOSYS, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %97
  %106 = load %struct.ice_pf*, %struct.ice_pf** %13, align 8
  %107 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load %struct.ice_vf*, %struct.ice_vf** %7, align 8
  %111 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.ice_pf*, %struct.ice_pf** %13, align 8
  %115 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i32 @dev_info(i32* %109, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %112, i32 %113, i32 %119)
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %6, align 4
  br label %124

123:                                              ; preds = %97, %84
  store i32 0, i32* %6, align 4
  br label %124

124:                                              ; preds = %123, %105, %55, %26
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @ice_aq_send_msg_to_vf(%struct.TYPE_6__*, i32, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
