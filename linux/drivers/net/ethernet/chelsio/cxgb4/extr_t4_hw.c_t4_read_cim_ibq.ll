; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_read_cim_ibq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_read_cim_ibq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@CIM_IBQ_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CIM_IBQ_DBG_CFG_A = common dso_local global i32 0, align 4
@IBQDBGEN_F = common dso_local global i32 0, align 4
@IBQDBGBUSY_F = common dso_local global i32 0, align 4
@CIM_IBQ_DBG_DATA_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_read_cim_ibq(%struct.adapter* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32, i32* @CIM_IBQ_SIZE, align 4
  %16 = mul nsw i32 %15, 4
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ugt i32 %17, 5
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* %9, align 8
  %21 = and i64 %20, 3
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %76

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %14, align 4
  %29 = mul i32 %27, %28
  store i32 %29, i32* %13, align 4
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* %14, align 4
  %32 = zext i32 %31 to i64
  %33 = icmp ugt i64 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* %14, align 4
  %36 = zext i32 %35 to i64
  store i64 %36, i64* %9, align 8
  br label %37

37:                                               ; preds = %34, %26
  store i32 1000000, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %66, %37
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %9, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %38
  %44 = load %struct.adapter*, %struct.adapter** %6, align 8
  %45 = load i32, i32* @CIM_IBQ_DBG_CFG_A, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @IBQDBGADDR_V(i32 %46)
  %48 = load i32, i32* @IBQDBGEN_F, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @t4_write_reg(%struct.adapter* %44, i32 %45, i32 %49)
  %51 = load %struct.adapter*, %struct.adapter** %6, align 8
  %52 = load i32, i32* @CIM_IBQ_DBG_CFG_A, align 4
  %53 = load i32, i32* @IBQDBGBUSY_F, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @t4_wait_op_done(%struct.adapter* %51, i32 %52, i32 %53, i32 0, i32 %54, i32 1)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %43
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %5, align 4
  br label %76

60:                                               ; preds = %43
  %61 = load %struct.adapter*, %struct.adapter** %6, align 8
  %62 = load i32, i32* @CIM_IBQ_DBG_DATA_A, align 4
  %63 = call i32 @t4_read_reg(%struct.adapter* %61, i32 %62)
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %8, align 8
  store i32 %63, i32* %64, align 4
  br label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %13, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %13, align 4
  br label %38

71:                                               ; preds = %38
  %72 = load %struct.adapter*, %struct.adapter** %6, align 8
  %73 = load i32, i32* @CIM_IBQ_DBG_CFG_A, align 4
  %74 = call i32 @t4_write_reg(%struct.adapter* %72, i32 %73, i32 0)
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %71, %58, %23
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @IBQDBGADDR_V(i32) #1

declare dso_local i32 @t4_wait_op_done(%struct.adapter*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
