; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_client.c_iavf_client_virtchnl_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_client.c_iavf_client_virtchnl_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_info = type { %struct.iavf_adapter* }
%struct.iavf_adapter = type { %struct.TYPE_6__, %struct.TYPE_5__*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.iavf_client = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@VIRTCHNL_OP_IWARP = common dso_local global i32 0, align 4
@IAVF_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Unable to send iWarp message to PF, error %d, aq status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_info*, %struct.iavf_client*, i32*, i32)* @iavf_client_virtchnl_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_client_virtchnl_send(%struct.iavf_info* %0, %struct.iavf_client* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iavf_info*, align 8
  %7 = alloca %struct.iavf_client*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iavf_adapter*, align 8
  %11 = alloca i32, align 4
  store %struct.iavf_info* %0, %struct.iavf_info** %6, align 8
  store %struct.iavf_client* %1, %struct.iavf_client** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.iavf_info*, %struct.iavf_info** %6, align 8
  %13 = getelementptr inbounds %struct.iavf_info, %struct.iavf_info* %12, i32 0, i32 0
  %14 = load %struct.iavf_adapter*, %struct.iavf_adapter** %13, align 8
  store %struct.iavf_adapter* %14, %struct.iavf_adapter** %10, align 8
  %15 = load %struct.iavf_adapter*, %struct.iavf_adapter** %10, align 8
  %16 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EAGAIN, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %46

22:                                               ; preds = %4
  %23 = load %struct.iavf_adapter*, %struct.iavf_adapter** %10, align 8
  %24 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* @VIRTCHNL_OP_IWARP, align 4
  %26 = load i32, i32* @IAVF_SUCCESS, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @iavf_aq_send_msg_to_pf(%struct.TYPE_6__* %24, i32 %25, i32 %26, i32* %27, i32 %28, i32* null)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %22
  %33 = load %struct.iavf_adapter*, %struct.iavf_adapter** %10, align 8
  %34 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.iavf_adapter*, %struct.iavf_adapter** %10, align 8
  %39 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %42)
  br label %44

44:                                               ; preds = %32, %22
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %19
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @iavf_aq_send_msg_to_pf(%struct.TYPE_6__*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
