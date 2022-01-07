; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_reset_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_reset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32, i64, i64, i32, i64, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Initialization sequence timed out\0A\00", align 1
@VNIC_OPEN = common dso_local global i32 0, align 4
@VNIC_RESET_MOBILITY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Initialization of sub crqs failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to initialize sub crq irqs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvnic_adapter*)* @ibmvnic_reset_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvnic_reset_init(%struct.ibmvnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibmvnic_adapter*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %3, align 8
  %9 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %9, i32 0, i32 9
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = call i64 @msecs_to_jiffies(i32 30000)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  %19 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %22, i32 0, i32 8
  %24 = call i32 @reinit_completion(i32* %23)
  %25 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %25, i32 0, i32 3
  store i32 0, i32* %26, align 8
  %27 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %28 = call i32 @ibmvnic_send_crq_init(%struct.ibmvnic_adapter* %27)
  %29 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %29, i32 0, i32 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @wait_for_completion_timeout(i32* %30, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %1
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %120

37:                                               ; preds = %1
  %38 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %44 = call i32 @release_crq_queue(%struct.ibmvnic_adapter* %43)
  %45 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %2, align 4
  br label %120

48:                                               ; preds = %37
  %49 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32, i32* @VNIC_OPEN, align 4
  %55 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 8
  %57 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  store i32 -1, i32* %2, align 4
  br label %120

59:                                               ; preds = %48
  %60 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %60, i32 0, i32 6
  %62 = call i64 @test_bit(i32 0, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %96

64:                                               ; preds = %59
  %65 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %96, label %69

69:                                               ; preds = %64
  %70 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @VNIC_RESET_MOBILITY, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %69
  %76 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %7, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %81, %75
  %88 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %89 = call i32 @release_sub_crqs(%struct.ibmvnic_adapter* %88, i32 0)
  %90 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %91 = call i32 @init_sub_crqs(%struct.ibmvnic_adapter* %90)
  store i32 %91, i32* %8, align 4
  br label %95

92:                                               ; preds = %81
  %93 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %94 = call i32 @reset_sub_crq_queues(%struct.ibmvnic_adapter* %93)
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %92, %87
  br label %99

96:                                               ; preds = %69, %64, %59
  %97 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %98 = call i32 @init_sub_crqs(%struct.ibmvnic_adapter* %97)
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %96, %95
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = call i32 @dev_err(%struct.device* %103, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %105 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %106 = call i32 @release_crq_queue(%struct.ibmvnic_adapter* %105)
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %2, align 4
  br label %120

108:                                              ; preds = %99
  %109 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %110 = call i32 @init_sub_crq_irqs(%struct.ibmvnic_adapter* %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.device*, %struct.device** %4, align 8
  %115 = call i32 @dev_err(%struct.device* %114, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %116 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %117 = call i32 @release_crq_queue(%struct.ibmvnic_adapter* %116)
  br label %118

118:                                              ; preds = %113, %108
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %118, %102, %53, %42, %34
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @ibmvnic_send_crq_init(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @release_crq_queue(%struct.ibmvnic_adapter*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @release_sub_crqs(%struct.ibmvnic_adapter*, i32) #1

declare dso_local i32 @init_sub_crqs(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @reset_sub_crq_queues(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @init_sub_crq_irqs(%struct.ibmvnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
