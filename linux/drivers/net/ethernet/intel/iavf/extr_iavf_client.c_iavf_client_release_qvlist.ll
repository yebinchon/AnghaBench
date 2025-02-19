; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_client.c_iavf_client_release_qvlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_client.c_iavf_client_release_qvlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_info = type { %struct.iavf_adapter* }
%struct.iavf_adapter = type { %struct.TYPE_6__, %struct.TYPE_4__*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@VIRTCHNL_OP_RELEASE_IWARP_IRQ_MAP = common dso_local global i32 0, align 4
@IAVF_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Unable to send iWarp vector release message to PF, error %d, aq status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_info*)* @iavf_client_release_qvlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_client_release_qvlist(%struct.iavf_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iavf_info*, align 8
  %4 = alloca %struct.iavf_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.iavf_info* %0, %struct.iavf_info** %3, align 8
  %6 = load %struct.iavf_info*, %struct.iavf_info** %3, align 8
  %7 = getelementptr inbounds %struct.iavf_info, %struct.iavf_info* %6, i32 0, i32 0
  %8 = load %struct.iavf_adapter*, %struct.iavf_adapter** %7, align 8
  store %struct.iavf_adapter* %8, %struct.iavf_adapter** %4, align 8
  %9 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EAGAIN, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %38

16:                                               ; preds = %1
  %17 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* @VIRTCHNL_OP_RELEASE_IWARP_IRQ_MAP, align 4
  %20 = load i32, i32* @IAVF_SUCCESS, align 4
  %21 = call i32 @iavf_aq_send_msg_to_pf(%struct.TYPE_6__* %18, i32 %19, i32 %20, i32* null, i32 0, i32* null)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %16
  %25 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %34)
  br label %36

36:                                               ; preds = %24, %16
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %13
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @iavf_aq_send_msg_to_pf(%struct.TYPE_6__*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
