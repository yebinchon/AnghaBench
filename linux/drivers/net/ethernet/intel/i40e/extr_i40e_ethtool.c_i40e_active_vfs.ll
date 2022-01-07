; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_active_vfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_active_vfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, %struct.i40e_vf* }
%struct.i40e_vf = type { i32 }

@I40E_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_pf*)* @i40e_active_vfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_active_vfs(%struct.i40e_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca %struct.i40e_vf*, align 8
  %5 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %3, align 8
  %6 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %7 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %6, i32 0, i32 1
  %8 = load %struct.i40e_vf*, %struct.i40e_vf** %7, align 8
  store %struct.i40e_vf* %8, %struct.i40e_vf** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %26, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %12 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = load i32, i32* @I40E_VF_STATE_ACTIVE, align 4
  %17 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %17, i64 %19
  %21 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %16, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %30

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %9

29:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %24
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
