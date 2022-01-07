; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_tpc_mbist_workaround.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_tpc_mbist_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i64, %struct.goya_device* }
%struct.goya_device = type { i32 }

@HW_CAP_TPC_MBIST = common dso_local global i32 0, align 4
@TPC_MAX_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*)* @goya_tpc_mbist_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goya_tpc_mbist_workaround(%struct.hl_device* %0) #0 {
  %2 = alloca %struct.hl_device*, align 8
  %3 = alloca %struct.goya_device*, align 8
  %4 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %2, align 8
  %5 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %6 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %5, i32 0, i32 1
  %7 = load %struct.goya_device*, %struct.goya_device** %6, align 8
  store %struct.goya_device* %7, %struct.goya_device** %3, align 8
  %8 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %9 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %39

13:                                               ; preds = %1
  %14 = load %struct.goya_device*, %struct.goya_device** %3, align 8
  %15 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HW_CAP_TPC_MBIST, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %39

21:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %30, %21
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @TPC_MAX_NUM, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @_goya_tpc_mbist_workaround(%struct.hl_device* %27, i32 %28)
  br label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %22

33:                                               ; preds = %22
  %34 = load i32, i32* @HW_CAP_TPC_MBIST, align 4
  %35 = load %struct.goya_device*, %struct.goya_device** %3, align 8
  %36 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %20, %12
  ret void
}

declare dso_local i32 @_goya_tpc_mbist_workaround(%struct.hl_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
