; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_adapter_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_adapter_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CXGB4VF_FULL_INIT_DONE = common dso_local global i32 0, align 4
@CXGB4VF_USING_MSIX = common dso_local global i32 0, align 4
@CXGB4VF_USING_MSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"request_irq failed, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @adapter_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adapter_up(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %5 = load %struct.adapter*, %struct.adapter** %3, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @CXGB4VF_FULL_INIT_DONE, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %1
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = call i32 @setup_sge_queues(%struct.adapter* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %91

18:                                               ; preds = %11
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = call i32 @setup_rss(%struct.adapter* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.adapter*, %struct.adapter** %3, align 8
  %25 = call i32 @t4vf_free_sge_resources(%struct.adapter* %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %91

27:                                               ; preds = %18
  %28 = load %struct.adapter*, %struct.adapter** %3, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CXGB4VF_USING_MSIX, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.adapter*, %struct.adapter** %3, align 8
  %36 = call i32 @name_msix_vecs(%struct.adapter* %35)
  br label %37

37:                                               ; preds = %34, %27
  %38 = load i32, i32* @CXGB4VF_FULL_INIT_DONE, align 4
  %39 = load %struct.adapter*, %struct.adapter** %3, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %37, %1
  %44 = load %struct.adapter*, %struct.adapter** %3, align 8
  %45 = getelementptr inbounds %struct.adapter, %struct.adapter* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @CXGB4VF_USING_MSIX, align 4
  %48 = load i32, i32* @CXGB4VF_USING_MSI, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUG_ON(i32 %52)
  %54 = load %struct.adapter*, %struct.adapter** %3, align 8
  %55 = getelementptr inbounds %struct.adapter, %struct.adapter* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @CXGB4VF_USING_MSIX, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %43
  %61 = load %struct.adapter*, %struct.adapter** %3, align 8
  %62 = call i32 @request_msix_queue_irqs(%struct.adapter* %61)
  store i32 %62, i32* %4, align 4
  br label %76

63:                                               ; preds = %43
  %64 = load %struct.adapter*, %struct.adapter** %3, align 8
  %65 = getelementptr inbounds %struct.adapter, %struct.adapter* %64, i32 0, i32 3
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.adapter*, %struct.adapter** %3, align 8
  %70 = call i32 @t4vf_intr_handler(%struct.adapter* %69)
  %71 = load %struct.adapter*, %struct.adapter** %3, align 8
  %72 = getelementptr inbounds %struct.adapter, %struct.adapter* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.adapter*, %struct.adapter** %3, align 8
  %75 = call i32 @request_irq(i32 %68, i32 %70, i32 0, i32 %73, %struct.adapter* %74)
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %63, %60
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load %struct.adapter*, %struct.adapter** %3, align 8
  %81 = getelementptr inbounds %struct.adapter, %struct.adapter* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %91

86:                                               ; preds = %76
  %87 = load %struct.adapter*, %struct.adapter** %3, align 8
  %88 = call i32 @enable_rx(%struct.adapter* %87)
  %89 = load %struct.adapter*, %struct.adapter** %3, align 8
  %90 = call i32 @t4vf_sge_start(%struct.adapter* %89)
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %86, %79, %23, %16
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @setup_sge_queues(%struct.adapter*) #1

declare dso_local i32 @setup_rss(%struct.adapter*) #1

declare dso_local i32 @t4vf_free_sge_resources(%struct.adapter*) #1

declare dso_local i32 @name_msix_vecs(%struct.adapter*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @request_msix_queue_irqs(%struct.adapter*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.adapter*) #1

declare dso_local i32 @t4vf_intr_handler(%struct.adapter*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @enable_rx(%struct.adapter*) #1

declare dso_local i32 @t4vf_sge_start(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
