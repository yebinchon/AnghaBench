; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_init_interrupt_scheme.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_init_interrupt_scheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Unable to allocate memory for queues\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Unable to setup interrupt capabilities\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Unable to allocate memory for queue vectors\0A\00", align 1
@VIRTCHNL_VF_OFFLOAD_ADQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"ADq Enabled, %u TCs created\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Multiqueue %s: Queue pair count = %u\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iavf_init_interrupt_scheme(%struct.iavf_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iavf_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %3, align 8
  %5 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %6 = call i32 @iavf_alloc_queues(%struct.iavf_adapter* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %84

15:                                               ; preds = %1
  %16 = call i32 (...) @rtnl_lock()
  %17 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %18 = call i32 @iavf_set_interrupt_capability(%struct.iavf_adapter* %17)
  store i32 %18, i32* %4, align 4
  %19 = call i32 (...) @rtnl_unlock()
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %81

28:                                               ; preds = %15
  %29 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %30 = call i32 @iavf_alloc_q_vectors(%struct.iavf_adapter* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %78

39:                                               ; preds = %28
  %40 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %40, i32 0, i32 3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_ADQ, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %39
  %49 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %53, %48, %39
  %64 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %70, 1
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %74 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %73, i32 %76)
  store i32 0, i32* %2, align 4
  br label %86

78:                                               ; preds = %33
  %79 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %80 = call i32 @iavf_reset_interrupt_capability(%struct.iavf_adapter* %79)
  br label %81

81:                                               ; preds = %78, %22
  %82 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %83 = call i32 @iavf_free_queues(%struct.iavf_adapter* %82)
  br label %84

84:                                               ; preds = %81, %9
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %63
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @iavf_alloc_queues(%struct.iavf_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @iavf_set_interrupt_capability(%struct.iavf_adapter*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @iavf_alloc_q_vectors(%struct.iavf_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, ...) #1

declare dso_local i32 @iavf_reset_interrupt_capability(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_free_queues(%struct.iavf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
