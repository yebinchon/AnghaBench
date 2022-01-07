; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_adminq.c_iavf_init_adminq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_adminq.c_iavf_init_adminq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i32 }

@IAVF_ERR_CONFIG = common dso_local global i32 0, align 4
@IAVF_ASQ_CMD_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iavf_init_adminq(%struct.iavf_hw* %0) #0 {
  %2 = alloca %struct.iavf_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.iavf_hw* %0, %struct.iavf_hw** %2, align 8
  %4 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %5 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %1
  %10 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %11 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %9
  %16 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %17 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %23 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21, %15, %9, %1
  %28 = load i32, i32* @IAVF_ERR_CONFIG, align 4
  store i32 %28, i32* %3, align 4
  br label %52

29:                                               ; preds = %21
  %30 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %31 = call i32 @iavf_adminq_init_regs(%struct.iavf_hw* %30)
  %32 = load i32, i32* @IAVF_ASQ_CMD_TIMEOUT, align 4
  %33 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %34 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  store i32 %32, i32* %35, align 8
  %36 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %37 = call i32 @iavf_init_asq(%struct.iavf_hw* %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %51

41:                                               ; preds = %29
  %42 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %43 = call i32 @iavf_init_arq(%struct.iavf_hw* %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %48

47:                                               ; preds = %41
  br label %52

48:                                               ; preds = %46
  %49 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %50 = call i32 @iavf_shutdown_asq(%struct.iavf_hw* %49)
  br label %51

51:                                               ; preds = %48, %40
  br label %52

52:                                               ; preds = %51, %47, %27
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @iavf_adminq_init_regs(%struct.iavf_hw*) #1

declare dso_local i32 @iavf_init_asq(%struct.iavf_hw*) #1

declare dso_local i32 @iavf_init_arq(%struct.iavf_hw*) #1

declare dso_local i32 @iavf_shutdown_asq(%struct.iavf_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
