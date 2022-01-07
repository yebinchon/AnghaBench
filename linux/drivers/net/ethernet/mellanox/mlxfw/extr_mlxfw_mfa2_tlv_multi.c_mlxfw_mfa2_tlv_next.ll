; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxfw/extr_mlxfw_mfa2_tlv_multi.c_mlxfw_mfa2_tlv_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxfw/extr_mlxfw_mfa2_tlv_multi.c_mlxfw_mfa2_tlv_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxfw_mfa2_file = type { i32 }
%struct.mlxfw_mfa2_tlv = type { i64 }
%struct.mlxfw_mfa2_tlv_multi = type { i32 }

@MLXFW_MFA2_TLV_MULTI_PART = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_next(%struct.mlxfw_mfa2_file* %0, %struct.mlxfw_mfa2_tlv* %1) #0 {
  %3 = alloca %struct.mlxfw_mfa2_file*, align 8
  %4 = alloca %struct.mlxfw_mfa2_tlv*, align 8
  %5 = alloca %struct.mlxfw_mfa2_tlv_multi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.mlxfw_mfa2_file* %0, %struct.mlxfw_mfa2_file** %3, align 8
  store %struct.mlxfw_mfa2_tlv* %1, %struct.mlxfw_mfa2_tlv** %4, align 8
  %8 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %4, align 8
  %9 = call i32 @MLXFW_MFA2_TLV_TOTAL_SIZE(%struct.mlxfw_mfa2_tlv* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %4, align 8
  %11 = getelementptr inbounds %struct.mlxfw_mfa2_tlv, %struct.mlxfw_mfa2_tlv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MLXFW_MFA2_TLV_MULTI_PART, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %3, align 8
  %17 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %4, align 8
  %18 = call %struct.mlxfw_mfa2_tlv_multi* @mlxfw_mfa2_tlv_multi_get(%struct.mlxfw_mfa2_file* %16, %struct.mlxfw_mfa2_tlv* %17)
  store %struct.mlxfw_mfa2_tlv_multi* %18, %struct.mlxfw_mfa2_tlv_multi** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.mlxfw_mfa2_tlv_multi*, %struct.mlxfw_mfa2_tlv_multi** %5, align 8
  %21 = getelementptr inbounds %struct.mlxfw_mfa2_tlv_multi, %struct.mlxfw_mfa2_tlv_multi* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @be16_to_cpu(i32 %22)
  %24 = add nsw i32 %19, %23
  %25 = call i32 @NLA_ALIGN(i32 %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %15, %2
  %27 = load %struct.mlxfw_mfa2_tlv*, %struct.mlxfw_mfa2_tlv** %4, align 8
  %28 = bitcast %struct.mlxfw_mfa2_tlv* %27 to i8*
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr i8, i8* %28, i64 %30
  store i8* %31, i8** %7, align 8
  %32 = load %struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_file** %3, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_get(%struct.mlxfw_mfa2_file* %32, i8* %33)
  ret %struct.mlxfw_mfa2_tlv* %34
}

declare dso_local i32 @MLXFW_MFA2_TLV_TOTAL_SIZE(%struct.mlxfw_mfa2_tlv*) #1

declare dso_local %struct.mlxfw_mfa2_tlv_multi* @mlxfw_mfa2_tlv_multi_get(%struct.mlxfw_mfa2_file*, %struct.mlxfw_mfa2_tlv*) #1

declare dso_local i32 @NLA_ALIGN(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local %struct.mlxfw_mfa2_tlv* @mlxfw_mfa2_tlv_get(%struct.mlxfw_mfa2_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
