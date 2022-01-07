; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_process_open_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_process_open_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8, i16 }
%struct.TYPE_7__ = type { i64, i32* }
%struct.ibmvmc_crq_msg = type { i8, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.crq_server_adapter = type { i32 }

@ibmvmc = common dso_local global %struct.TYPE_8__ zeroinitializer, align 2
@.str = private unnamed_addr constant [33 x i8] c"open_resp: failed - status 0x%x\0A\00", align 1
@hmcs = common dso_local global %struct.TYPE_7__* null, align 8
@ibmhmc_state_opening = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"open_resp: invalid buffer_id = 0x%x\0A\00", align 1
@ibmhmc_state_failed = common dso_local global i64 0, align 8
@ibmhmc_state_ready = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"open_resp: set hmc state = ready\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"open_resp: invalid hmc state (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvmc_crq_msg*, %struct.crq_server_adapter*)* @ibmvmc_process_open_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvmc_process_open_resp(%struct.ibmvmc_crq_msg* %0, %struct.crq_server_adapter* %1) #0 {
  %3 = alloca %struct.ibmvmc_crq_msg*, align 8
  %4 = alloca %struct.crq_server_adapter*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  store %struct.ibmvmc_crq_msg* %0, %struct.ibmvmc_crq_msg** %3, align 8
  store %struct.crq_server_adapter* %1, %struct.crq_server_adapter** %4, align 8
  %7 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %3, align 8
  %8 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 8
  store i8 %9, i8* %5, align 1
  %10 = load i8, i8* %5, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ibmvmc, i32 0, i32 0), align 2
  %13 = zext i8 %12 to i32
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %17 = call i32 @ibmvmc_reset(%struct.crq_server_adapter* %16, i32 0)
  br label %105

18:                                               ; preds = %2
  %19 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %3, align 8
  %20 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %3, align 8
  %28 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @dev_warn(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hmcs, align 8
  %32 = load i8, i8* %5, align 1
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  %35 = call i32 @ibmvmc_return_hmc(%struct.TYPE_7__* %34, i32 0)
  br label %105

36:                                               ; preds = %18
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hmcs, align 8
  %38 = load i8, i8* %5, align 1
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ibmhmc_state_opening, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %94

45:                                               ; preds = %36
  %46 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %3, align 8
  %47 = getelementptr inbounds %struct.ibmvmc_crq_msg, %struct.ibmvmc_crq_msg* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call zeroext i16 @be16_to_cpu(i32 %49)
  store i16 %50, i16* %6, align 2
  %51 = load i16, i16* %6, align 2
  %52 = zext i16 %51 to i32
  %53 = load i16, i16* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ibmvmc, i32 0, i32 1), align 2
  %54 = zext i16 %53 to i32
  %55 = icmp sge i32 %52, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %45
  %57 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %58 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i16, i16* %6, align 2
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %60)
  %62 = load i64, i64* @ibmhmc_state_failed, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hmcs, align 8
  %64 = load i8, i8* %5, align 1
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i64 %62, i64* %67, align 8
  br label %93

68:                                               ; preds = %45
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hmcs, align 8
  %70 = load i8, i8* %5, align 1
  %71 = zext i8 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %71
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hmcs, align 8
  %74 = load i8, i8* %5, align 1
  %75 = zext i8 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i16, i16* %6, align 2
  %80 = zext i16 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = call i32 @ibmvmc_free_hmc_buffer(%struct.TYPE_7__* %72, i32* %81)
  %83 = load i64, i64* @ibmhmc_state_ready, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hmcs, align 8
  %85 = load i8, i8* %5, align 1
  %86 = zext i8 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i64 %83, i64* %88, align 8
  %89 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %90 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dev_dbg(i32 %91, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %93

93:                                               ; preds = %68, %56
  br label %105

94:                                               ; preds = %36
  %95 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %4, align 8
  %96 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hmcs, align 8
  %99 = load i8, i8* %5, align 1
  %100 = zext i8 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @dev_warn(i32 %97, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %103)
  br label %105

105:                                              ; preds = %15, %23, %94, %93
  ret void
}

declare dso_local i32 @ibmvmc_reset(%struct.crq_server_adapter*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i64) #1

declare dso_local i32 @ibmvmc_return_hmc(%struct.TYPE_7__*, i32) #1

declare dso_local zeroext i16 @be16_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i16 zeroext) #1

declare dso_local i32 @ibmvmc_free_hmc_buffer(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
