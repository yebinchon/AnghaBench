; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e.h_i40e_nvm_version_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e.h_i40e_nvm_version_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }

@i40e_nvm_version_str.buf = internal global [32 x i8] zeroinitializer, align 16
@I40E_OEM_EETRACK_ID = common dso_local global i64 0, align 8
@I40E_OEM_GEN_SHIFT = common dso_local global i32 0, align 4
@I40E_OEM_SNAP_MASK = common dso_local global i32 0, align 4
@I40E_OEM_SNAP_SHIFT = common dso_local global i32 0, align 4
@I40E_OEM_RELEASE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%x.%x.%x\00", align 1
@I40E_OEM_VER_SHIFT = common dso_local global i32 0, align 4
@I40E_OEM_VER_BUILD_SHIFT = common dso_local global i32 0, align 4
@I40E_OEM_VER_BUILD_MASK = common dso_local global i32 0, align 4
@I40E_OEM_VER_PATCH_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%x.%02x 0x%x %d.%d.%d\00", align 1
@I40E_NVM_VERSION_HI_MASK = common dso_local global i32 0, align 4
@I40E_NVM_VERSION_HI_SHIFT = common dso_local global i32 0, align 4
@I40E_NVM_VERSION_LO_MASK = common dso_local global i32 0, align 4
@I40E_NVM_VERSION_LO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.i40e_hw*)* @i40e_nvm_version_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @i40e_nvm_version_str(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  %10 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %11 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %3, align 4
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %15 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @I40E_OEM_EETRACK_ID, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @I40E_OEM_GEN_SHIFT, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @I40E_OEM_SNAP_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @I40E_OEM_SNAP_SHIFT, align 4
  %28 = ashr i32 %26, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @I40E_OEM_RELEASE_MASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = call i32 (i8*, i32, i8*, i32, i32, i64, ...) @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @i40e_nvm_version_str.buf, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i64 %35)
  br label %73

37:                                               ; preds = %1
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @I40E_OEM_VER_SHIFT, align 4
  %40 = ashr i32 %38, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @I40E_OEM_VER_BUILD_SHIFT, align 4
  %43 = ashr i32 %41, %42
  %44 = load i32, i32* @I40E_OEM_VER_BUILD_MASK, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @I40E_OEM_VER_PATCH_MASK, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %8, align 4
  %49 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %50 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @I40E_NVM_VERSION_HI_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @I40E_NVM_VERSION_HI_SHIFT, align 4
  %56 = ashr i32 %54, %55
  %57 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %58 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @I40E_NVM_VERSION_LO_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @I40E_NVM_VERSION_LO_SHIFT, align 4
  %64 = ashr i32 %62, %63
  %65 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %66 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 (i8*, i32, i8*, i32, i32, i64, ...) @snprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @i40e_nvm_version_str.buf, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %64, i64 %68, i32 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %37, %20
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @i40e_nvm_version_str.buf, i64 0, i64 0)
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
