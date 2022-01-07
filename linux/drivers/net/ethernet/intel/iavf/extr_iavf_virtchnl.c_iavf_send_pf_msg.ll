; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_send_pf_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_virtchnl.c_iavf_send_pf_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i32, %struct.TYPE_4__*, %struct.iavf_hw }
%struct.TYPE_4__ = type { i32 }
%struct.iavf_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IAVF_FLAG_PF_COMMS_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Unable to send opcode %d to PF, err %s, aq_err %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_adapter*, i32, i32*, i32)* @iavf_send_pf_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_send_pf_msg(%struct.iavf_adapter* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iavf_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iavf_hw*, align 8
  %11 = alloca i32, align 4
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.iavf_adapter*, %struct.iavf_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %12, i32 0, i32 2
  store %struct.iavf_hw* %13, %struct.iavf_hw** %10, align 8
  %14 = load %struct.iavf_adapter*, %struct.iavf_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IAVF_FLAG_PF_COMMS_FAILED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %47

21:                                               ; preds = %4
  %22 = load %struct.iavf_hw*, %struct.iavf_hw** %10, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @iavf_aq_send_msg_to_pf(%struct.iavf_hw* %22, i32 %23, i32 0, i32* %24, i32 %25, i32* null)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %21
  %30 = load %struct.iavf_adapter*, %struct.iavf_adapter** %6, align 8
  %31 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.iavf_hw*, %struct.iavf_hw** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @iavf_stat_str(%struct.iavf_hw* %35, i32 %36)
  %38 = load %struct.iavf_hw*, %struct.iavf_hw** %10, align 8
  %39 = load %struct.iavf_hw*, %struct.iavf_hw** %10, align 8
  %40 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @iavf_aq_str(%struct.iavf_hw* %38, i32 %42)
  %44 = call i32 @dev_dbg(i32* %33, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37, i32 %43)
  br label %45

45:                                               ; preds = %29, %21
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %45, %20
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @iavf_aq_send_msg_to_pf(%struct.iavf_hw*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @iavf_stat_str(%struct.iavf_hw*, i32) #1

declare dso_local i32 @iavf_aq_str(%struct.iavf_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
