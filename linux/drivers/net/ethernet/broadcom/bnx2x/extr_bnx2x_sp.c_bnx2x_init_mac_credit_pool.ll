; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_init_mac_credit_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_init_mac_credit_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_credit_pool_obj = type { i32 }

@MAX_MAC_CREDIT_E1 = common dso_local global i32 0, align 4
@BNX2X_MAX_MULTICAST = common dso_local global i32 0, align 4
@BNX2X_MAX_EMUL_MULTI = common dso_local global i32 0, align 4
@MAX_MAC_CREDIT_E1H = common dso_local global i32 0, align 4
@BNX2X_CAM_SIZE_EMUL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_init_mac_credit_pool(%struct.bnx2x* %0, %struct.bnx2x_credit_pool_obj* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_credit_pool_obj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_credit_pool_obj* %1, %struct.bnx2x_credit_pool_obj** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %11 = call i64 @CHIP_IS_E1(%struct.bnx2x* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %4
  %14 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %15 = call i32 @CHIP_REV_IS_SLOW(%struct.bnx2x* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @MAX_MAC_CREDIT_E1, align 4
  %19 = sdiv i32 %18, 2
  %20 = load i32, i32* @BNX2X_MAX_MULTICAST, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %9, align 4
  br label %25

22:                                               ; preds = %13
  %23 = load i32, i32* @BNX2X_MAX_EMUL_MULTI, align 4
  %24 = sub nsw i32 5, %23
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.bnx2x_credit_pool_obj*, %struct.bnx2x_credit_pool_obj** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %9, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @bnx2x_init_credit_pool(%struct.bnx2x_credit_pool_obj* %26, i32 %29, i32 %30)
  br label %81

32:                                               ; preds = %4
  %33 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %34 = call i64 @CHIP_IS_E1H(%struct.bnx2x* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %41 = call i32 @CHIP_REV_IS_SLOW(%struct.bnx2x* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @MAX_MAC_CREDIT_E1H, align 4
  %45 = load i32, i32* %8, align 4
  %46 = mul nsw i32 2, %45
  %47 = sdiv i32 %44, %46
  store i32 %47, i32* %9, align 4
  br label %49

48:                                               ; preds = %39
  store i32 5, i32* %9, align 4
  br label %49

49:                                               ; preds = %48, %43
  %50 = load %struct.bnx2x_credit_pool_obj*, %struct.bnx2x_credit_pool_obj** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @bnx2x_init_credit_pool(%struct.bnx2x_credit_pool_obj* %50, i32 %53, i32 %54)
  br label %59

56:                                               ; preds = %36
  %57 = load %struct.bnx2x_credit_pool_obj*, %struct.bnx2x_credit_pool_obj** %6, align 8
  %58 = call i32 @bnx2x_init_credit_pool(%struct.bnx2x_credit_pool_obj* %57, i32 0, i32 0)
  br label %59

59:                                               ; preds = %56, %49
  br label %80

60:                                               ; preds = %32
  %61 = load i32, i32* %8, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %65 = call i32 @CHIP_REV_IS_SLOW(%struct.bnx2x* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @PF_MAC_CREDIT_E2(%struct.bnx2x* %68, i32 %69)
  store i32 %70, i32* %9, align 4
  br label %72

71:                                               ; preds = %63
  store i32 5, i32* %9, align 4
  br label %72

72:                                               ; preds = %71, %67
  %73 = load %struct.bnx2x_credit_pool_obj*, %struct.bnx2x_credit_pool_obj** %6, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @bnx2x_init_credit_pool(%struct.bnx2x_credit_pool_obj* %73, i32 -1, i32 %74)
  br label %79

76:                                               ; preds = %60
  %77 = load %struct.bnx2x_credit_pool_obj*, %struct.bnx2x_credit_pool_obj** %6, align 8
  %78 = call i32 @bnx2x_init_credit_pool(%struct.bnx2x_credit_pool_obj* %77, i32 0, i32 0)
  br label %79

79:                                               ; preds = %76, %72
  br label %80

80:                                               ; preds = %79, %59
  br label %81

81:                                               ; preds = %80, %25
  ret void
}

declare dso_local i64 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i32 @CHIP_REV_IS_SLOW(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_init_credit_pool(%struct.bnx2x_credit_pool_obj*, i32, i32) #1

declare dso_local i64 @CHIP_IS_E1H(%struct.bnx2x*) #1

declare dso_local i32 @PF_MAC_CREDIT_E2(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
