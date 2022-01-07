; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxfw/extr_mlxfw_mfa2.c_mlxfw_mfa2_file_component_tlv_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxfw/extr_mlxfw_mfa2.c_mlxfw_mfa2_file_component_tlv_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxfw_mfa2_tlv_component_descriptor = type { i32 }
%struct.mlxfw_mfa2_file = type { i64, i32 }
%struct.mlxfw_mfa2_tlv_multi = type { i32 }
%struct.mlxfw_mfa2_tlv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxfw_mfa2_tlv_component_descriptor* (%struct.mlxfw_mfa2_file*, i64)* @mlxfw_mfa2_file_component_tlv_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxfw_mfa2_tlv_component_descriptor* @mlxfw_mfa2_file_component_tlv_get(%struct.mlxfw_mfa2_file* %0, i64 %1) #0 {
  %3 = alloca %struct.mlxfw_mfa2_tlv_component_descriptor*, align 8
  %4 = alloca %struct.mlxfw_mfa2_file*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlxfw_mfa2_tlv_multi*, align 8
  %7 = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %8 = alloca %struct.mlxfw_mfa2_tlv*, align 8
  store %struct.mlxfw_mfa2_file* %0, %struct.mlxfw_mfa2_file** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %4, align 8
  %11 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.mlxfw_mfa2_tlv_component_descriptor* null, %struct.mlxfw_mfa2_tlv_component_descriptor** %3, align 8
  br label %43

15:                                               ; preds = %2
  %16 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %4, align 8
  %17 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %4, align 8
  %18 = getelementptr inbounds %struct.mlxfw_mfa2_file, %struct.mlxfw_mfa2_file* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_advance(%struct.mlxfw_mfa2_file* %16, i32 %19, i64 %20)
  store %struct.mlxfw_mfa2_tlv* %21, %struct.mlxfw_mfa2_tlv** %8, align 8
  %22 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %8, align 8
  %23 = icmp ne %struct.mlxfw_mfa2_tlv* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  store %struct.mlxfw_mfa2_tlv_component_descriptor* null, %struct.mlxfw_mfa2_tlv_component_descriptor** %3, align 8
  br label %43

25:                                               ; preds = %15
  %26 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %4, align 8
  %27 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %8, align 8
  %28 = call %struct.mlxfw_mfa2_tlv_multi* @mlxfw_mfa2_tlv_multi_get(%struct.mlxfw_mfa2_file* %26, %struct.mlxfw_mfa2_tlv* %27)
  store %struct.mlxfw_mfa2_tlv_multi* %28, %struct.mlxfw_mfa2_tlv_multi** %6, align 8
  %29 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %6, align 8
  %30 = icmp ne %struct.mlxfw_mfa2_tlv_multi* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store %struct.mlxfw_mfa2_tlv_component_descriptor* null, %struct.mlxfw_mfa2_tlv_component_descriptor** %3, align 8
  br label %43

32:                                               ; preds = %25
  %33 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %4, align 8
  %34 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %6, align 8
  %35 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child(%struct.mlxfw_mfa2_file* %33, %struct.mlxfw_mfa2_tlv_multi* %34)
  store %struct.mlxfw_mfa2_tlv* %35, %struct.mlxfw_mfa2_tlv** %7, align 8
  %36 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %7, align 8
  %37 = icmp ne %struct.mlxfw_mfa2_tlv* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store %struct.mlxfw_mfa2_tlv_component_descriptor* null, %struct.mlxfw_mfa2_tlv_component_descriptor** %3, align 8
  br label %43

39:                                               ; preds = %32
  %40 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %4, align 8
  %41 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %7, align 8
  %42 = call %struct.mlxfw_mfa2_tlv_component_descriptor* @mlxfw_mfa2_tlv_component_descriptor_get(%struct.mlxfw_mfa2_file* %40, %struct.mlxfw_mfa2_tlv* %41)
  store %struct.mlxfw_mfa2_tlv_component_descriptor* %42, %struct.mlxfw_mfa2_tlv_component_descriptor** %3, align 8
  br label %43

43:                                               ; preds = %39, %38, %31, %24, %14
  %44 = load %struct.mlxfw_mfa2_tlv_component_descriptor*, %struct.mlxfw_mfa2_tlv_component_descriptor** %3, align 8
  ret %struct.mlxfw_mfa2_tlv_component_descriptor* %44
}

declare dso_local %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_advance(%struct.mlxfw_mfa2_file*, i32, i64) #1

declare dso_local %struct.mlxfw_mfa2_tlv_multi* @mlxfw_mfa2_tlv_multi_get(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv*) #1

declare dso_local %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_multi_child(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv_multi*) #1

declare dso_local %struct.mlxfw_mfa2_tlv_component_descriptor* @mlxfw_mfa2_tlv_component_descriptor_get(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
