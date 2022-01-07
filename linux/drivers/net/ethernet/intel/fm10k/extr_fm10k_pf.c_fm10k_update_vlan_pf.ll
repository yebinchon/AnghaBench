; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_update_vlan_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_update_vlan_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }

@FM10K_VLAN_TABLE_VSI_MAX = common dso_local global i64 0, align 8
@FM10K_ERR_PARAM = common dso_local global i32 0, align 4
@FM10K_VLAN_TABLE_VID_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_hw*, i32, i64, i32)* @fm10k_update_vlan_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_update_vlan_pf(%struct.fm10k_hw* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fm10k_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @FM10K_VLAN_TABLE_VSI_MAX, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %19, i32* %5, align 4
  br label %90

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = ashr i32 %21, 16
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 %23, 17
  %25 = ashr i32 %24, 17
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* @FM10K_VLAN_TABLE_VID_MAX, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @FM10K_VLAN_TABLE_VID_MAX, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %20
  %34 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %34, i32* %5, align 4
  br label %90

35:                                               ; preds = %29
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sdiv i32 %37, 32
  %39 = call i32 @FM10K_VLAN_TABLE(i64 %36, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %7, align 4
  %41 = srem i32 %40, 32
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %82, %35
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @FM10K_VLAN_TABLE_VID_MAX, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %89

46:                                               ; preds = %42
  %47 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp slt i32 %50, 31
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* %14, align 4
  %54 = sub nsw i32 31, %53
  br label %56

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i32 [ %54, %52 ], [ 0, %55 ]
  %58 = ashr i32 -1, %57
  %59 = load i32, i32* %13, align 4
  %60 = shl i32 %58, %59
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* %10, align 4
  %65 = xor i32 %64, -1
  br label %68

66:                                               ; preds = %56
  %67 = load i32, i32* %10, align 4
  br label %68

68:                                               ; preds = %66, %63
  %69 = phi i32 [ %65, %63 ], [ %67, %66 ]
  %70 = load i32, i32* %12, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load %struct.fm10k_hw*, %struct.fm10k_hw** %6, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %12, align 4
  %79 = xor i32 %77, %78
  %80 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %75, i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %74, %68
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %13, align 4
  %84 = sub nsw i32 32, %83
  %85 = load i32, i32* %14, align 4
  %86 = sub nsw i32 %85, %84
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %42

89:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %89, %33, %18
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @FM10K_VLAN_TABLE(i64, i32) #1

declare dso_local i32 @fm10k_read_reg(%struct.fm10k_hw*, i32) #1

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
