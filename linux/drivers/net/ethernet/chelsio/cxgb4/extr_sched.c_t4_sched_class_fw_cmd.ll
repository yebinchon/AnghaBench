; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sched.c_t4_sched_class_fw_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sched.c_t4_sched_class_fw_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { %struct.sched_table*, %struct.adapter* }
%struct.sched_table = type { %struct.sched_class* }
%struct.sched_class = type { i32 }
%struct.adapter = type { i32 }
%struct.ch_sched_params = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port_info*, %struct.ch_sched_params*, i32)* @t4_sched_class_fw_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_sched_class_fw_cmd(%struct.port_info* %0, %struct.ch_sched_params* %1, i32 %2) #0 {
  %4 = alloca %struct.port_info*, align 8
  %5 = alloca %struct.ch_sched_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.sched_table*, align 8
  %9 = alloca %struct.sched_class*, align 8
  %10 = alloca i32, align 4
  store %struct.port_info* %0, %struct.port_info** %4, align 8
  store %struct.ch_sched_params* %1, %struct.ch_sched_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.port_info*, %struct.port_info** %4, align 8
  %12 = getelementptr inbounds %struct.port_info, %struct.port_info* %11, i32 0, i32 1
  %13 = load %struct.adapter*, %struct.adapter** %12, align 8
  store %struct.adapter* %13, %struct.adapter** %7, align 8
  %14 = load %struct.port_info*, %struct.port_info** %4, align 8
  %15 = getelementptr inbounds %struct.port_info, %struct.port_info* %14, i32 0, i32 0
  %16 = load %struct.sched_table*, %struct.sched_table** %15, align 8
  store %struct.sched_table* %16, %struct.sched_table** %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.sched_table*, %struct.sched_table** %8, align 8
  %18 = getelementptr inbounds %struct.sched_table, %struct.sched_table* %17, i32 0, i32 0
  %19 = load %struct.sched_class*, %struct.sched_class** %18, align 8
  %20 = load %struct.ch_sched_params*, %struct.ch_sched_params** %5, align 8
  %21 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.sched_class, %struct.sched_class* %19, i64 %24
  store %struct.sched_class* %25, %struct.sched_class** %9, align 8
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %81 [
    i32 128, label %27
  ]

27:                                               ; preds = %3
  %28 = load %struct.adapter*, %struct.adapter** %7, align 8
  %29 = load %struct.ch_sched_params*, %struct.ch_sched_params** %5, align 8
  %30 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ch_sched_params*, %struct.ch_sched_params** %5, align 8
  %33 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ch_sched_params*, %struct.ch_sched_params** %5, align 8
  %38 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ch_sched_params*, %struct.ch_sched_params** %5, align 8
  %43 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ch_sched_params*, %struct.ch_sched_params** %5, align 8
  %48 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ch_sched_params*, %struct.ch_sched_params** %5, align 8
  %53 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.sched_class*, %struct.sched_class** %9, align 8
  %58 = getelementptr inbounds %struct.sched_class, %struct.sched_class* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ch_sched_params*, %struct.ch_sched_params** %5, align 8
  %61 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ch_sched_params*, %struct.ch_sched_params** %5, align 8
  %66 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ch_sched_params*, %struct.ch_sched_params** %5, align 8
  %71 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ch_sched_params*, %struct.ch_sched_params** %5, align 8
  %76 = getelementptr inbounds %struct.ch_sched_params, %struct.ch_sched_params* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @t4_sched_params(%struct.adapter* %28, i32 %31, i32 %36, i32 %41, i32 %46, i32 %51, i32 %56, i32 %59, i32 %64, i32 %69, i32 %74, i32 %79)
  store i32 %80, i32* %10, align 4
  br label %84

81:                                               ; preds = %3
  %82 = load i32, i32* @ENOTSUPP, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %81, %27
  %85 = load i32, i32* %10, align 4
  ret i32 %85
}

declare dso_local i32 @t4_sched_params(%struct.adapter*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
