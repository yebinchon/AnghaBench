; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_t3_sge_init_rspcntxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_t3_sge_init_rspcntxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@A_SG_CONTEXT_CMD = common dso_local global i32 0, align 4
@F_CONTEXT_CMD_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA0 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA1 = common dso_local global i32 0, align 4
@F_RQ_INTR_EN = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA2 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA3 = common dso_local global i32 0, align 4
@F_RESPONSEQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_sge_init_rspcntxt(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %13, align 4
  %20 = and i32 %19, 4095
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %78

25:                                               ; preds = %8
  %26 = load %struct.adapter*, %struct.adapter** %10, align 8
  %27 = load i32, i32* @A_SG_CONTEXT_CMD, align 4
  %28 = call i32 @t3_read_reg(%struct.adapter* %26, i32 %27)
  %29 = load i32, i32* @F_CONTEXT_CMD_BUSY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %78

35:                                               ; preds = %25
  %36 = load i32, i32* %13, align 4
  %37 = ashr i32 %36, 12
  store i32 %37, i32* %13, align 4
  %38 = load %struct.adapter*, %struct.adapter** %10, align 8
  %39 = load i32, i32* @A_SG_CONTEXT_DATA0, align 4
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @V_CQ_SIZE(i32 %40)
  %42 = load i32, i32* %17, align 4
  %43 = call i32 @V_CQ_INDEX(i32 %42)
  %44 = or i32 %41, %43
  %45 = call i32 @t3_write_reg(%struct.adapter* %38, i32 %39, i32 %44)
  %46 = load %struct.adapter*, %struct.adapter** %10, align 8
  %47 = load i32, i32* @A_SG_CONTEXT_DATA1, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @t3_write_reg(%struct.adapter* %46, i32 %47, i32 %48)
  %50 = load i32, i32* %13, align 4
  %51 = ashr i32 %50, 32
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %35
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @V_RQ_MSI_VEC(i32 %55)
  %57 = load i32, i32* @F_RQ_INTR_EN, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %18, align 4
  br label %59

59:                                               ; preds = %54, %35
  %60 = load %struct.adapter*, %struct.adapter** %10, align 8
  %61 = load i32, i32* @A_SG_CONTEXT_DATA2, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @V_CQ_BASE_HI(i32 %62)
  %64 = load i32, i32* %18, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @V_RQ_GEN(i32 %66)
  %68 = or i32 %65, %67
  %69 = call i32 @t3_write_reg(%struct.adapter* %60, i32 %61, i32 %68)
  %70 = load %struct.adapter*, %struct.adapter** %10, align 8
  %71 = load i32, i32* @A_SG_CONTEXT_DATA3, align 4
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @t3_write_reg(%struct.adapter* %70, i32 %71, i32 %72)
  %74 = load %struct.adapter*, %struct.adapter** %10, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @F_RESPONSEQ, align 4
  %77 = call i32 @t3_sge_write_context(%struct.adapter* %74, i32 %75, i32 %76)
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %59, %32, %22
  %79 = load i32, i32* %9, align 4
  ret i32 %79
}

declare dso_local i32 @t3_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_CQ_SIZE(i32) #1

declare dso_local i32 @V_CQ_INDEX(i32) #1

declare dso_local i32 @V_RQ_MSI_VEC(i32) #1

declare dso_local i32 @V_CQ_BASE_HI(i32) #1

declare dso_local i32 @V_RQ_GEN(i32) #1

declare dso_local i32 @t3_sge_write_context(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
