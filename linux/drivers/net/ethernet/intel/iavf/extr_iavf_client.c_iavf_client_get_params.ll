; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_client.c_iavf_client_get_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_client.c_iavf_client_get_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_vsi = type { i32, %struct.TYPE_5__*, %struct.TYPE_8__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.iavf_params = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64 }

@IAVF_MAX_USER_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iavf_vsi*, %struct.iavf_params*)* @iavf_client_get_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_client_get_params(%struct.iavf_vsi* %0, %struct.iavf_params* %1) #0 {
  %3 = alloca %struct.iavf_vsi*, align 8
  %4 = alloca %struct.iavf_params*, align 8
  %5 = alloca i32, align 4
  store %struct.iavf_vsi* %0, %struct.iavf_vsi** %3, align 8
  store %struct.iavf_params* %1, %struct.iavf_params** %4, align 8
  %6 = load %struct.iavf_params*, %struct.iavf_params** %4, align 8
  %7 = call i32 @memset(%struct.iavf_params* %6, i32 0, i32 16)
  %8 = load %struct.iavf_vsi*, %struct.iavf_vsi** %3, align 8
  %9 = getelementptr inbounds %struct.iavf_vsi, %struct.iavf_vsi* %8, i32 0, i32 2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.iavf_params*, %struct.iavf_params** %4, align 8
  %14 = getelementptr inbounds %struct.iavf_params, %struct.iavf_params* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.iavf_vsi*, %struct.iavf_vsi** %3, align 8
  %16 = getelementptr inbounds %struct.iavf_vsi, %struct.iavf_vsi* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.iavf_params*, %struct.iavf_params** %4, align 8
  %21 = getelementptr inbounds %struct.iavf_params, %struct.iavf_params* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %46, %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @IAVF_MAX_USER_PRIORITY, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load %struct.iavf_params*, %struct.iavf_params** %4, align 8
  %28 = getelementptr inbounds %struct.iavf_params, %struct.iavf_params* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.iavf_vsi*, %struct.iavf_vsi** %3, align 8
  %36 = getelementptr inbounds %struct.iavf_vsi, %struct.iavf_vsi* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.iavf_params*, %struct.iavf_params** %4, align 8
  %39 = getelementptr inbounds %struct.iavf_params, %struct.iavf_params* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %37, i32* %45, align 8
  br label %46

46:                                               ; preds = %26
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %22

49:                                               ; preds = %22
  ret void
}

declare dso_local i32 @memset(%struct.iavf_params*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
