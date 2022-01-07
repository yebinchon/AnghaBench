; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_adminq.c_iavf_init_arq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_adminq.c_iavf_init_arq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }

@IAVF_ERR_NOT_READY = common dso_local global i32 0, align 4
@IAVF_ERR_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_hw*)* @iavf_init_arq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_init_arq(%struct.iavf_hw* %0) #0 {
  %2 = alloca %struct.iavf_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.iavf_hw* %0, %struct.iavf_hw** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %5 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @IAVF_ERR_NOT_READY, align 4
  store i32 %11, i32* %3, align 4
  br label %64

12:                                               ; preds = %1
  %13 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %14 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %20 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18, %12
  %25 = load i32, i32* @IAVF_ERR_CONFIG, align 4
  store i32 %25, i32* %3, align 4
  br label %64

26:                                               ; preds = %18
  %27 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %28 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %32 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %36 = call i32 @iavf_alloc_adminq_arq_ring(%struct.iavf_hw* %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %64

40:                                               ; preds = %26
  %41 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %42 = call i32 @iavf_alloc_arq_bufs(%struct.iavf_hw* %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %61

46:                                               ; preds = %40
  %47 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %48 = call i32 @iavf_config_arq_regs(%struct.iavf_hw* %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %61

52:                                               ; preds = %46
  %53 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %54 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %58 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i64 %56, i64* %60, align 8
  br label %64

61:                                               ; preds = %51, %45
  %62 = load %struct.iavf_hw*, %struct.iavf_hw** %2, align 8
  %63 = call i32 @iavf_free_adminq_arq(%struct.iavf_hw* %62)
  br label %64

64:                                               ; preds = %61, %52, %39, %24, %10
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @iavf_alloc_adminq_arq_ring(%struct.iavf_hw*) #1

declare dso_local i32 @iavf_alloc_arq_bufs(%struct.iavf_hw*) #1

declare dso_local i32 @iavf_config_arq_regs(%struct.iavf_hw*) #1

declare dso_local i32 @iavf_free_adminq_arq(%struct.iavf_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
