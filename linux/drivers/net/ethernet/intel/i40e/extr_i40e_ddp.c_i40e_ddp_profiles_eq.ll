; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ddp.c_i40e_ddp_profiles_eq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ddp.c_i40e_ddp_profiles_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_profile_info = type { i64, i32, i32 }

@I40E_DDP_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_profile_info*, %struct.i40e_profile_info*)* @i40e_ddp_profiles_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_ddp_profiles_eq(%struct.i40e_profile_info* %0, %struct.i40e_profile_info* %1) #0 {
  %3 = alloca %struct.i40e_profile_info*, align 8
  %4 = alloca %struct.i40e_profile_info*, align 8
  store %struct.i40e_profile_info* %0, %struct.i40e_profile_info** %3, align 8
  store %struct.i40e_profile_info* %1, %struct.i40e_profile_info** %4, align 8
  %5 = load %struct.i40e_profile_info*, %struct.i40e_profile_info** %3, align 8
  %6 = getelementptr inbounds %struct.i40e_profile_info, %struct.i40e_profile_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.i40e_profile_info*, %struct.i40e_profile_info** %4, align 8
  %9 = getelementptr inbounds %struct.i40e_profile_info, %struct.i40e_profile_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load %struct.i40e_profile_info*, %struct.i40e_profile_info** %3, align 8
  %14 = getelementptr inbounds %struct.i40e_profile_info, %struct.i40e_profile_info* %13, i32 0, i32 2
  %15 = load %struct.i40e_profile_info*, %struct.i40e_profile_info** %4, align 8
  %16 = getelementptr inbounds %struct.i40e_profile_info, %struct.i40e_profile_info* %15, i32 0, i32 2
  %17 = call i32 @memcmp(i32* %14, i32* %16, i32 4)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %12
  %20 = load %struct.i40e_profile_info*, %struct.i40e_profile_info** %3, align 8
  %21 = getelementptr inbounds %struct.i40e_profile_info, %struct.i40e_profile_info* %20, i32 0, i32 1
  %22 = load %struct.i40e_profile_info*, %struct.i40e_profile_info** %4, align 8
  %23 = getelementptr inbounds %struct.i40e_profile_info, %struct.i40e_profile_info* %22, i32 0, i32 1
  %24 = load i32, i32* @I40E_DDP_NAME_SIZE, align 4
  %25 = call i32 @memcmp(i32* %21, i32* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %19, %12, %2
  %29 = phi i1 [ false, %12 ], [ false, %2 ], [ %27, %19 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
