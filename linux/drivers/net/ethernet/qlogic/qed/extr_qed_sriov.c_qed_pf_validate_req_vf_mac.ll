; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_pf_validate_req_vf_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_pf_validate_req_vf_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_public_vf_info = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32*, %struct.qed_public_vf_info*)* @qed_pf_validate_req_vf_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_pf_validate_req_vf_mac(%struct.qed_hwfn* %0, i32* %1, %struct.qed_public_vf_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.qed_public_vf_info*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.qed_public_vf_info* %2, %struct.qed_public_vf_info** %7, align 8
  %8 = load %struct.qed_public_vf_info*, %struct.qed_public_vf_info** %7, align 8
  %9 = getelementptr inbounds %struct.qed_public_vf_info, %struct.qed_public_vf_info* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load %struct.qed_public_vf_info*, %struct.qed_public_vf_info** %7, align 8
  %14 = getelementptr inbounds %struct.qed_public_vf_info, %struct.qed_public_vf_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @is_valid_ether_addr(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.qed_public_vf_info*, %struct.qed_public_vf_info** %7, align 8
  %24 = getelementptr inbounds %struct.qed_public_vf_info, %struct.qed_public_vf_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ether_addr_equal(i32* %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21, %18
  store i32 1, i32* %4, align 4
  br label %49

29:                                               ; preds = %21, %12
  br label %48

30:                                               ; preds = %3
  %31 = load %struct.qed_public_vf_info*, %struct.qed_public_vf_info** %7, align 8
  %32 = getelementptr inbounds %struct.qed_public_vf_info, %struct.qed_public_vf_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @is_valid_ether_addr(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = load i32*, i32** %6, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.qed_public_vf_info*, %struct.qed_public_vf_info** %7, align 8
  %42 = getelementptr inbounds %struct.qed_public_vf_info, %struct.qed_public_vf_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ether_addr_equal(i32* %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39, %36
  store i32 1, i32* %4, align 4
  br label %49

47:                                               ; preds = %39, %30
  br label %48

48:                                               ; preds = %47, %29
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %46, %28
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @is_valid_ether_addr(i32) #1

declare dso_local i32 @ether_addr_equal(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
