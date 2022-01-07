; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grukservices.c_gru_load_kernel_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grukservices.c_gru_load_kernel_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_blade_state = type { i32, i32, i32, %struct.gru_thread_state*, i64, i64 }
%struct.gru_thread_state = type { i32, i32, %struct.gru_state*, i32, i32 }
%struct.gru_state = type { i8* }

@load_kernel_context = common dso_local global i32 0, align 4
@GRU_NUM_KERNEL_CBR = common dso_local global i32 0, align 4
@GRU_NUM_KERNEL_DSR_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gru_blade_state*, i32)* @gru_load_kernel_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gru_load_kernel_context(%struct.gru_blade_state* %0, i32 %1) #0 {
  %3 = alloca %struct.gru_blade_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gru_state*, align 8
  %6 = alloca %struct.gru_thread_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gru_blade_state* %0, %struct.gru_blade_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %11 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %10, i32 0, i32 0
  %12 = call i32 @up_read(i32* %11)
  %13 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %14 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %13, i32 0, i32 0
  %15 = call i32 @down_write(i32* %14)
  %16 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %17 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %16, i32 0, i32 3
  %18 = load %struct.gru_thread_state*, %struct.gru_thread_state** %17, align 8
  %19 = icmp ne %struct.gru_thread_state* %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %33, %20
  %22 = call %struct.gru_thread_state* @gru_alloc_gts(i32* null, i32 0, i32 0, i32 0, i32 0, i32 0)
  %23 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %24 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %23, i32 0, i32 3
  store %struct.gru_thread_state* %22, %struct.gru_thread_state** %24, align 8
  %25 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %26 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %25, i32 0, i32 3
  %27 = load %struct.gru_thread_state*, %struct.gru_thread_state** %26, align 8
  %28 = call i32 @IS_ERR(%struct.gru_thread_state* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  br label %34

31:                                               ; preds = %21
  %32 = call i32 @msleep(i32 1)
  br label %33

33:                                               ; preds = %31
  br i1 true, label %21, label %34

34:                                               ; preds = %33, %30
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %37 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %36, i32 0, i32 3
  %38 = load %struct.gru_thread_state*, %struct.gru_thread_state** %37, align 8
  %39 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 8
  br label %40

40:                                               ; preds = %34, %2
  %41 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %42 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %41, i32 0, i32 3
  %43 = load %struct.gru_thread_state*, %struct.gru_thread_state** %42, align 8
  store %struct.gru_thread_state* %43, %struct.gru_thread_state** %6, align 8
  %44 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %45 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %44, i32 0, i32 2
  %46 = load %struct.gru_state*, %struct.gru_state** %45, align 8
  %47 = icmp ne %struct.gru_state* %46, null
  br i1 %47, label %108, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* @load_kernel_context, align 4
  %50 = call i32 @STAT(i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @uv_blade_nr_possible_cpus(i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* @GRU_NUM_KERNEL_CBR, align 4
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %58 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = call i32 @GRU_CB_COUNT_TO_AU(i64 %60)
  %62 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %63 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @GRU_NUM_KERNEL_DSR_BYTES, align 4
  %65 = load i32, i32* %9, align 4
  %66 = mul nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %69 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = call i32 @GRU_DS_BYTES_TO_AU(i64 %71)
  %73 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %74 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %80, %48
  %76 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %77 = call i32 @gru_assign_gru_context(%struct.gru_thread_state* %76)
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = call i32 @msleep(i32 1)
  %82 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %83 = call i32 @gru_steal_context(%struct.gru_thread_state* %82)
  br label %75

84:                                               ; preds = %75
  %85 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %86 = call i32 @gru_load_context(%struct.gru_thread_state* %85)
  %87 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %88 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %87, i32 0, i32 3
  %89 = load %struct.gru_thread_state*, %struct.gru_thread_state** %88, align 8
  %90 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %89, i32 0, i32 2
  %91 = load %struct.gru_state*, %struct.gru_state** %90, align 8
  store %struct.gru_state* %91, %struct.gru_state** %5, align 8
  %92 = load %struct.gru_state*, %struct.gru_state** %5, align 8
  %93 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %7, align 8
  %95 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %96 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %8, align 4
  %98 = load i8*, i8** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @get_gseg_base_address_cb(i8* %98, i32 %99, i32 0)
  %101 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %102 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @get_gseg_base_address_ds(i8* %103, i32 %104, i32 0)
  %106 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %107 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %84, %40
  %109 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %110 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %109, i32 0, i32 0
  %111 = call i32 @downgrade_write(i32* %110)
  ret void
}

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.gru_thread_state* @gru_alloc_gts(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.gru_thread_state*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @STAT(i32) #1

declare dso_local i32 @uv_blade_nr_possible_cpus(i32) #1

declare dso_local i32 @GRU_CB_COUNT_TO_AU(i64) #1

declare dso_local i32 @GRU_DS_BYTES_TO_AU(i64) #1

declare dso_local i32 @gru_assign_gru_context(%struct.gru_thread_state*) #1

declare dso_local i32 @gru_steal_context(%struct.gru_thread_state*) #1

declare dso_local i32 @gru_load_context(%struct.gru_thread_state*) #1

declare dso_local i32 @get_gseg_base_address_cb(i8*, i32, i32) #1

declare dso_local i32 @get_gseg_base_address_ds(i8*, i32, i32) #1

declare dso_local i32 @downgrade_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
