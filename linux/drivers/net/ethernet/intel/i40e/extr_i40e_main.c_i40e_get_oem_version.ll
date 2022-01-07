; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_get_oem_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_get_oem_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@I40E_OEM_SNAP_SHIFT = common dso_local global i32 0, align 4
@I40E_OEM_EETRACK_ID = common dso_local global i32 0, align 4
@I40E_NVM_OEM_CAPABILITIES_MASK = common dso_local global i32 0, align 4
@I40E_NVM_OEM_CAPABILITIES_OFFSET = common dso_local global i64 0, align 8
@I40E_NVM_OEM_GEN_OFFSET = common dso_local global i64 0, align 8
@I40E_NVM_OEM_LENGTH = common dso_local global i32 0, align 4
@I40E_NVM_OEM_LENGTH_OFFSET = common dso_local global i64 0, align 8
@I40E_NVM_OEM_RELEASE_OFFSET = common dso_local global i64 0, align 8
@I40E_SR_NVM_OEM_VERSION_PTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_hw*)* @i40e_get_oem_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_get_oem_version(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  store i32 65535, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %9 = call i32 @i40e_read_nvm_word(%struct.i40e_hw* %8, i64 27, i32* %3)
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 65535
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %55

13:                                               ; preds = %1
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 0
  %17 = sext i32 %16 to i64
  %18 = call i32 @i40e_read_nvm_word(%struct.i40e_hw* %14, i64 %17, i32* %4)
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %55

22:                                               ; preds = %13
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = call i32 @i40e_read_nvm_word(%struct.i40e_hw* %23, i64 %26, i32* %5)
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 15
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %55

32:                                               ; preds = %22
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 2
  %36 = sext i32 %35 to i64
  %37 = call i32 @i40e_read_nvm_word(%struct.i40e_hw* %33, i64 %36, i32* %6)
  %38 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 3
  %41 = sext i32 %40 to i64
  %42 = call i32 @i40e_read_nvm_word(%struct.i40e_hw* %38, i64 %41, i32* %7)
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @I40E_OEM_SNAP_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %49 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @I40E_OEM_EETRACK_ID, align 4
  %52 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %53 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  br label %55

55:                                               ; preds = %32, %31, %21, %12
  ret void
}

declare dso_local i32 @i40e_read_nvm_word(%struct.i40e_hw*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
