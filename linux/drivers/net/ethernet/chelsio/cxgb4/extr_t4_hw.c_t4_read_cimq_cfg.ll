; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_read_cimq_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_read_cimq_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CIM_NUM_OBQ = common dso_local global i32 0, align 4
@CIM_NUM_OBQ_T5 = common dso_local global i32 0, align 4
@CIM_NUM_IBQ = common dso_local global i32 0, align 4
@CIM_QUEUE_CONFIG_REF_A = common dso_local global i32 0, align 4
@IBQSELECT_F = common dso_local global i32 0, align 4
@CIM_QUEUE_CONFIG_CTRL_A = common dso_local global i32 0, align 4
@OBQSELECT_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_read_cimq_cfg(%struct.adapter* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.adapter*, %struct.adapter** %5, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @is_t4(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @CIM_NUM_OBQ, align 4
  br label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @CIM_NUM_OBQ_T5, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %54, %22
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @CIM_NUM_IBQ, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %57

28:                                               ; preds = %24
  %29 = load %struct.adapter*, %struct.adapter** %5, align 8
  %30 = load i32, i32* @CIM_QUEUE_CONFIG_REF_A, align 4
  %31 = load i32, i32* @IBQSELECT_F, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @QUENUMSELECT_V(i32 %32)
  %34 = or i32 %31, %33
  %35 = call i32 @t4_write_reg(%struct.adapter* %29, i32 %30, i32 %34)
  %36 = load %struct.adapter*, %struct.adapter** %5, align 8
  %37 = load i32, i32* @CIM_QUEUE_CONFIG_CTRL_A, align 4
  %38 = call i32 @t4_read_reg(%struct.adapter* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @CIMQBASE_G(i32 %39)
  %41 = mul nsw i32 %40, 256
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @CIMQSIZE_G(i32 %44)
  %46 = mul nsw i32 %45, 256
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @QUEFULLTHRSH_G(i32 %49)
  %51 = mul nsw i32 %50, 8
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %8, align 8
  store i32 %51, i32* %52, align 4
  br label %54

54:                                               ; preds = %28
  %55 = load i32, i32* %9, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %24

57:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %83, %57
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %58
  %63 = load %struct.adapter*, %struct.adapter** %5, align 8
  %64 = load i32, i32* @CIM_QUEUE_CONFIG_REF_A, align 4
  %65 = load i32, i32* @OBQSELECT_F, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @QUENUMSELECT_V(i32 %66)
  %68 = or i32 %65, %67
  %69 = call i32 @t4_write_reg(%struct.adapter* %63, i32 %64, i32 %68)
  %70 = load %struct.adapter*, %struct.adapter** %5, align 8
  %71 = load i32, i32* @CIM_QUEUE_CONFIG_CTRL_A, align 4
  %72 = call i32 @t4_read_reg(%struct.adapter* %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @CIMQBASE_G(i32 %73)
  %75 = mul nsw i32 %74, 256
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %6, align 8
  store i32 %75, i32* %76, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @CIMQSIZE_G(i32 %78)
  %80 = mul nsw i32 %79, 256
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %7, align 8
  store i32 %80, i32* %81, align 4
  br label %83

83:                                               ; preds = %62
  %84 = load i32, i32* %9, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %58

86:                                               ; preds = %58
  ret void
}

declare dso_local i64 @is_t4(i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @QUENUMSELECT_V(i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @CIMQBASE_G(i32) #1

declare dso_local i32 @CIMQSIZE_G(i32) #1

declare dso_local i32 @QUEFULLTHRSH_G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
