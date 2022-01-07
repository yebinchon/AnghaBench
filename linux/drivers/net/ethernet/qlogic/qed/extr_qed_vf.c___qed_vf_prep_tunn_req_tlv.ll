; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c___qed_vf_prep_tunn_req_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c___qed_vf_prep_tunn_req_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfpf_update_tunn_param_tlv = type { i32, i32 }
%struct.qed_tunn_update_type = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfpf_update_tunn_param_tlv*, %struct.qed_tunn_update_type*, i32, i32*)* @__qed_vf_prep_tunn_req_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__qed_vf_prep_tunn_req_tlv(%struct.vfpf_update_tunn_param_tlv* %0, %struct.qed_tunn_update_type* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.vfpf_update_tunn_param_tlv*, align 8
  %6 = alloca %struct.qed_tunn_update_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.vfpf_update_tunn_param_tlv* %0, %struct.vfpf_update_tunn_param_tlv** %5, align 8
  store %struct.qed_tunn_update_type* %1, %struct.qed_tunn_update_type** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load %struct.qed_tunn_update_type*, %struct.qed_tunn_update_type** %6, align 8
  %10 = getelementptr inbounds %struct.qed_tunn_update_type, %struct.qed_tunn_update_type* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @BIT(i32 %14)
  %16 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %5, align 8
  %17 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, %struct.vfpf_update_tunn_param_tlv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.qed_tunn_update_type*, %struct.qed_tunn_update_type** %6, align 8
  %21 = getelementptr inbounds %struct.qed_tunn_update_type, %struct.qed_tunn_update_type* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %13
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = load %struct.vfpf_update_tunn_param_tlv*, %struct.vfpf_update_tunn_param_tlv** %5, align 8
  %28 = getelementptr inbounds %struct.vfpf_update_tunn_param_tlv, %struct.vfpf_update_tunn_param_tlv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %24, %13
  br label %32

32:                                               ; preds = %31, %4
  %33 = load %struct.qed_tunn_update_type*, %struct.qed_tunn_update_type** %6, align 8
  %34 = getelementptr inbounds %struct.qed_tunn_update_type, %struct.qed_tunn_update_type* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  ret void
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
