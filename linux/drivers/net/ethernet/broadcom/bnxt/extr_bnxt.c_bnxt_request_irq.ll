; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_5__*, %struct.TYPE_6__**, %struct.bnxt_irq* }
%struct.TYPE_7__ = type { %struct.cpu_rmap* }
%struct.cpu_rmap = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.bnxt_irq = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"bnxt_setup_int_mode err: %x\0A\00", align 1
@BNXT_FLAG_USING_MSIX = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Set affinity failed, IRQ = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_request_irq(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnxt_irq*, align 8
  %10 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %11 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %12 = call i32 @bnxt_setup_int_mode(%struct.bnxt* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %17 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %16, i32 0, i32 2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @netdev_err(%struct.TYPE_7__* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %116

22:                                               ; preds = %1
  %23 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %24 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BNXT_FLAG_USING_MSIX, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = load i64, i64* @IRQF_SHARED, align 8
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %29, %22
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %111, %31
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %35 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %114

38:                                               ; preds = %32
  %39 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @bnxt_cp_num_to_irq_num(%struct.bnxt* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %43 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %42, i32 0, i32 5
  %44 = load %struct.bnxt_irq*, %struct.bnxt_irq** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.bnxt_irq, %struct.bnxt_irq* %44, i64 %46
  store %struct.bnxt_irq* %47, %struct.bnxt_irq** %9, align 8
  %48 = load %struct.bnxt_irq*, %struct.bnxt_irq** %9, align 8
  %49 = getelementptr inbounds %struct.bnxt_irq, %struct.bnxt_irq* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.bnxt_irq*, %struct.bnxt_irq** %9, align 8
  %52 = getelementptr inbounds %struct.bnxt_irq, %struct.bnxt_irq* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.bnxt_irq*, %struct.bnxt_irq** %9, align 8
  %56 = getelementptr inbounds %struct.bnxt_irq, %struct.bnxt_irq* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %59 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %58, i32 0, i32 4
  %60 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %60, i64 %62
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = call i32 @request_irq(i32 %50, i32 %53, i64 %54, i32 %57, %struct.TYPE_6__* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %38
  br label %114

69:                                               ; preds = %38
  %70 = load %struct.bnxt_irq*, %struct.bnxt_irq** %9, align 8
  %71 = getelementptr inbounds %struct.bnxt_irq, %struct.bnxt_irq* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  %72 = load %struct.bnxt_irq*, %struct.bnxt_irq** %9, align 8
  %73 = getelementptr inbounds %struct.bnxt_irq, %struct.bnxt_irq* %72, i32 0, i32 3
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i64 @zalloc_cpumask_var(i32* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %110

77:                                               ; preds = %69
  %78 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %79 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %78, i32 0, i32 3
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = call i32 @dev_to_node(i32* %81)
  store i32 %82, i32* %10, align 4
  %83 = load %struct.bnxt_irq*, %struct.bnxt_irq** %9, align 8
  %84 = getelementptr inbounds %struct.bnxt_irq, %struct.bnxt_irq* %83, i32 0, i32 2
  store i32 1, i32* %84, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @cpumask_local_spread(i32 %85, i32 %86)
  %88 = load %struct.bnxt_irq*, %struct.bnxt_irq** %9, align 8
  %89 = getelementptr inbounds %struct.bnxt_irq, %struct.bnxt_irq* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @cpumask_set_cpu(i32 %87, i32 %90)
  %92 = load %struct.bnxt_irq*, %struct.bnxt_irq** %9, align 8
  %93 = getelementptr inbounds %struct.bnxt_irq, %struct.bnxt_irq* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.bnxt_irq*, %struct.bnxt_irq** %9, align 8
  %96 = getelementptr inbounds %struct.bnxt_irq, %struct.bnxt_irq* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @irq_set_affinity_hint(i32 %94, i32 %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %77
  %102 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %103 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %102, i32 0, i32 2
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = load %struct.bnxt_irq*, %struct.bnxt_irq** %9, align 8
  %106 = getelementptr inbounds %struct.bnxt_irq, %struct.bnxt_irq* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @netdev_warn(%struct.TYPE_7__* %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  br label %114

109:                                              ; preds = %77
  br label %110

110:                                              ; preds = %109, %69
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  br label %32

114:                                              ; preds = %101, %68, %32
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %114, %15
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @bnxt_setup_int_mode(%struct.bnxt*) #1

declare dso_local i32 @netdev_err(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @bnxt_cp_num_to_irq_num(%struct.bnxt*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i64, i32, %struct.TYPE_6__*) #1

declare dso_local i64 @zalloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @cpumask_local_spread(i32, i32) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32) #1

declare dso_local i32 @netdev_warn(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
