; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_attn_int_deasserted0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_attn_int_deasserted0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@MISC_REG_AEU_ENABLE1_FUNC_1_OUT_0 = common dso_local global i32 0, align 4
@MISC_REG_AEU_ENABLE1_FUNC_0_OUT_0 = common dso_local global i32 0, align 4
@AEU_INPUTS_ATTN_BITS_SPIO5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"SPIO5 hw attention\0A\00", align 1
@HW_INTERRUPT_ASSERT_SET_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"FATAL HW block attention set0 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32)* @bnx2x_attn_int_deasserted0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_attn_int_deasserted0(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %9 = call i32 @BP_PORT(%struct.bnx2x* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @MISC_REG_AEU_ENABLE1_FUNC_1_OUT_0, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @MISC_REG_AEU_ENABLE1_FUNC_0_OUT_0, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @AEU_INPUTS_ATTN_BITS_SPIO5, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %16
  %23 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @REG_RD(%struct.bnx2x* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @AEU_INPUTS_ATTN_BITS_SPIO5, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @REG_WR(%struct.bnx2x* %30, i32 %31, i32 %32)
  %34 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %36 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %35, i32 0, i32 0
  %37 = call i32 @bnx2x_hw_reset_phy(i32* %36)
  %38 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %39 = call i32 @bnx2x_fan_failure(%struct.bnx2x* %38)
  br label %40

40:                                               ; preds = %22, %16
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %43 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %41, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %40
  %49 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %50 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %56 = call i32 @bnx2x_acquire_phy_lock(%struct.bnx2x* %55)
  %57 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %58 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %57, i32 0, i32 0
  %59 = call i32 @bnx2x_handle_module_detect_int(i32* %58)
  %60 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %61 = call i32 @bnx2x_release_phy_lock(%struct.bnx2x* %60)
  br label %62

62:                                               ; preds = %54, %48, %40
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @HW_INTERRUPT_ASSERT_SET_0, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %62
  %68 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @REG_RD(%struct.bnx2x* %68, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @HW_INTERRUPT_ASSERT_SET_0, align 4
  %73 = and i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %7, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @REG_WR(%struct.bnx2x* %77, i32 %78, i32 %79)
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @HW_INTERRUPT_ASSERT_SET_0, align 4
  %83 = and i32 %81, %82
  %84 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = call i32 (...) @bnx2x_panic()
  br label %86

86:                                               ; preds = %67, %62
  ret void
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, ...) #1

declare dso_local i32 @bnx2x_hw_reset_phy(i32*) #1

declare dso_local i32 @bnx2x_fan_failure(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_acquire_phy_lock(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_handle_module_detect_int(i32*) #1

declare dso_local i32 @bnx2x_release_phy_lock(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_panic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
