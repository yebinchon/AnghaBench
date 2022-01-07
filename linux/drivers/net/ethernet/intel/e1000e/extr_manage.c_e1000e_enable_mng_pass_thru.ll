; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_manage.c_e1000e_enable_mng_pass_thru.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_manage.c_e1000e_enable_mng_pass_thru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@MANC = common dso_local global i32 0, align 4
@E1000_MANC_RCV_TCO_EN = common dso_local global i32 0, align 4
@FWSM = common dso_local global i32 0, align 4
@FACTPS = common dso_local global i32 0, align 4
@E1000_FACTPS_MNGCG = common dso_local global i32 0, align 4
@E1000_FWSM_MODE_MASK = common dso_local global i32 0, align 4
@e1000_mng_mode_pt = common dso_local global i32 0, align 4
@E1000_FWSM_MODE_SHIFT = common dso_local global i32 0, align 4
@e1000_82574 = common dso_local global i64 0, align 8
@e1000_82583 = common dso_local global i64 0, align 8
@NVM_INIT_CONTROL2_REG = common dso_local global i32 0, align 4
@E1000_NVM_INIT_CTRL2_MNGM = common dso_local global i32 0, align 4
@E1000_MANC_SMBUS_EN = common dso_local global i32 0, align 4
@E1000_MANC_ASF_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000e_enable_mng_pass_thru(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %9 = load i32, i32* @MANC, align 4
  %10 = call i32 @er32(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @E1000_MANC_RCV_TCO_EN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %92

16:                                               ; preds = %1
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = load i32, i32* @FWSM, align 4
  %24 = call i32 @er32(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @FACTPS, align 4
  %26 = call i32 @er32(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @E1000_FACTPS_MNGCG, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @E1000_FWSM_MODE_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @e1000_mng_mode_pt, align 4
  %36 = load i32, i32* @E1000_FWSM_MODE_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %92

40:                                               ; preds = %31, %22
  br label %91

41:                                               ; preds = %16
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %43 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @e1000_82574, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %50 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @e1000_82583, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %48, %41
  %56 = load i32, i32* @FACTPS, align 4
  %57 = call i32 @er32(i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %59 = load i32, i32* @NVM_INIT_CONTROL2_REG, align 4
  %60 = call i64 @e1000_read_nvm(%struct.e1000_hw* %58, i32 %59, i32 1, i32* %7)
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %92

64:                                               ; preds = %55
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @E1000_FACTPS_MNGCG, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @E1000_NVM_INIT_CTRL2_MNGM, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* @e1000_mng_mode_pt, align 4
  %74 = shl i32 %73, 13
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  store i32 1, i32* %2, align 4
  br label %92

77:                                               ; preds = %69, %64
  br label %90

78:                                               ; preds = %48
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @E1000_MANC_SMBUS_EN, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @E1000_MANC_ASF_EN, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  store i32 1, i32* %2, align 4
  br label %92

89:                                               ; preds = %83, %78
  br label %90

90:                                               ; preds = %89, %77
  br label %91

91:                                               ; preds = %90, %40
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %88, %76, %63, %39, %15
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @er32(i32) #1

declare dso_local i64 @e1000_read_nvm(%struct.e1000_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
