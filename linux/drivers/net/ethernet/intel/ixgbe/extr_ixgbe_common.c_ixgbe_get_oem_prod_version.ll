; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_get_oem_prod_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_get_oem_prod_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_nvm_version = type { i32, i32, i32, i32 }

@NVM_OEM_PROD_VER_PTR = common dso_local global i32 0, align 4
@NVM_INVALID_PTR = common dso_local global i32 0, align 4
@NVM_OEM_PROD_VER_CAP_OFF = common dso_local global i32 0, align 4
@NVM_OEM_PROD_VER_MOD_LEN = common dso_local global i32 0, align 4
@NVM_OEM_PROD_VER_CAP_MASK = common dso_local global i32 0, align 4
@NVM_OEM_PROD_VER_OFF_L = common dso_local global i32 0, align 4
@NVM_OEM_PROD_VER_OFF_H = common dso_local global i32 0, align 4
@NVM_VER_INVALID = common dso_local global i32 0, align 4
@NVM_VER_SHIFT = common dso_local global i32 0, align 4
@NVM_VER_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_get_oem_prod_version(%struct.ixgbe_hw* %0, %struct.ixgbe_nvm_version* %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.ixgbe_nvm_version*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store %struct.ixgbe_nvm_version* %1, %struct.ixgbe_nvm_version** %4, align 8
  %10 = load %struct.ixgbe_nvm_version*, %struct.ixgbe_nvm_version** %4, align 8
  %11 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32*)** %15, align 8
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %18 = bitcast %struct.ixgbe_hw* %17 to %struct.ixgbe_hw.0*
  %19 = load i32, i32* @NVM_OEM_PROD_VER_PTR, align 4
  %20 = call i32 %16(%struct.ixgbe_hw.0* %18, i32 %19, i32* %9)
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @NVM_INVALID_PTR, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %2
  br label %110

28:                                               ; preds = %23
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32*)** %32, align 8
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %35 = bitcast %struct.ixgbe_hw* %34 to %struct.ixgbe_hw.0*
  %36 = load i32, i32* %9, align 4
  %37 = call i32 %33(%struct.ixgbe_hw.0* %35, i32 %36, i32* %7)
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %39 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32*)** %41, align 8
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %44 = bitcast %struct.ixgbe_hw* %43 to %struct.ixgbe_hw.0*
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @NVM_OEM_PROD_VER_CAP_OFF, align 4
  %47 = add nsw i32 %45, %46
  %48 = call i32 %42(%struct.ixgbe_hw.0* %44, i32 %47, i32* %8)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @NVM_OEM_PROD_VER_MOD_LEN, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %28
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @NVM_OEM_PROD_VER_CAP_MASK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %28
  br label %110

58:                                               ; preds = %52
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %60 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32*)** %62, align 8
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %65 = bitcast %struct.ixgbe_hw* %64 to %struct.ixgbe_hw.0*
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @NVM_OEM_PROD_VER_OFF_L, align 4
  %68 = add nsw i32 %66, %67
  %69 = call i32 %63(%struct.ixgbe_hw.0* %65, i32 %68, i32* %6)
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %71 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32 (%struct.ixgbe_hw.0*, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32*)** %73, align 8
  %75 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %76 = bitcast %struct.ixgbe_hw* %75 to %struct.ixgbe_hw.0*
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @NVM_OEM_PROD_VER_OFF_H, align 4
  %79 = add nsw i32 %77, %78
  %80 = call i32 %74(%struct.ixgbe_hw.0* %76, i32 %79, i32* %5)
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %81, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %58
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @NVM_VER_INVALID, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @NVM_VER_INVALID, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89, %85, %58
  br label %110

94:                                               ; preds = %89
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @NVM_VER_SHIFT, align 4
  %97 = ashr i32 %95, %96
  %98 = load %struct.ixgbe_nvm_version*, %struct.ixgbe_nvm_version** %4, align 8
  %99 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @NVM_VER_MASK, align 4
  %102 = and i32 %100, %101
  %103 = load %struct.ixgbe_nvm_version*, %struct.ixgbe_nvm_version** %4, align 8
  %104 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.ixgbe_nvm_version*, %struct.ixgbe_nvm_version** %4, align 8
  %107 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load %struct.ixgbe_nvm_version*, %struct.ixgbe_nvm_version** %4, align 8
  %109 = getelementptr inbounds %struct.ixgbe_nvm_version, %struct.ixgbe_nvm_version* %108, i32 0, i32 0
  store i32 1, i32* %109, align 4
  br label %110

110:                                              ; preds = %94, %93, %57, %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
