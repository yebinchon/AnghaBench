; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_read_cim_obq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_read_cim_obq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CIM_NUM_OBQ = common dso_local global i32 0, align 4
@CIM_NUM_OBQ_T5 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CIM_QUEUE_CONFIG_REF_A = common dso_local global i32 0, align 4
@OBQSELECT_F = common dso_local global i32 0, align 4
@CIM_QUEUE_CONFIG_CTRL_A = common dso_local global i32 0, align 4
@CIM_OBQ_DBG_CFG_A = common dso_local global i32 0, align 4
@OBQDBGEN_F = common dso_local global i32 0, align 4
@OBQDBGBUSY_F = common dso_local global i32 0, align 4
@CIM_OBQ_DBG_DATA_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_read_cim_obq(%struct.adapter* %0, i32 %1, i32* %2, i64 %3) #0 {
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
  %15 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.adapter*, %struct.adapter** %6, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @is_t4(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @CIM_NUM_OBQ, align 4
  br label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @CIM_NUM_OBQ_T5, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %15, align 4
  %30 = sub nsw i32 %29, 1
  %31 = icmp ugt i32 %28, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %9, align 8
  %34 = and i64 %33, 3
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %26
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %103

39:                                               ; preds = %32
  %40 = load %struct.adapter*, %struct.adapter** %6, align 8
  %41 = load i32, i32* @CIM_QUEUE_CONFIG_REF_A, align 4
  %42 = load i32, i32* @OBQSELECT_F, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @QUENUMSELECT_V(i32 %43)
  %45 = or i32 %42, %44
  %46 = call i32 @t4_write_reg(%struct.adapter* %40, i32 %41, i32 %45)
  %47 = load %struct.adapter*, %struct.adapter** %6, align 8
  %48 = load i32, i32* @CIM_QUEUE_CONFIG_CTRL_A, align 4
  %49 = call i8* @t4_read_reg(%struct.adapter* %47, i32 %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @CIMQBASE_G(i32 %51)
  %53 = mul nsw i32 %52, 64
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @CIMQSIZE_G(i32 %54)
  %56 = mul nsw i32 %55, 64
  store i32 %56, i32* %14, align 4
  %57 = load i64, i64* %9, align 8
  %58 = load i32, i32* %14, align 4
  %59 = zext i32 %58 to i64
  %60 = icmp ugt i64 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %39
  %62 = load i32, i32* %14, align 4
  %63 = zext i32 %62 to i64
  store i64 %63, i64* %9, align 8
  br label %64

64:                                               ; preds = %61, %39
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %93, %64
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %9, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %98

70:                                               ; preds = %65
  %71 = load %struct.adapter*, %struct.adapter** %6, align 8
  %72 = load i32, i32* @CIM_OBQ_DBG_CFG_A, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @OBQDBGADDR_V(i32 %73)
  %75 = load i32, i32* @OBQDBGEN_F, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @t4_write_reg(%struct.adapter* %71, i32 %72, i32 %76)
  %78 = load %struct.adapter*, %struct.adapter** %6, align 8
  %79 = load i32, i32* @CIM_OBQ_DBG_CFG_A, align 4
  %80 = load i32, i32* @OBQDBGBUSY_F, align 4
  %81 = call i32 @t4_wait_op_done(%struct.adapter* %78, i32 %79, i32 %80, i32 0, i32 2, i32 1)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %70
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %5, align 4
  br label %103

86:                                               ; preds = %70
  %87 = load %struct.adapter*, %struct.adapter** %6, align 8
  %88 = load i32, i32* @CIM_OBQ_DBG_DATA_A, align 4
  %89 = call i8* @t4_read_reg(%struct.adapter* %87, i32 %88)
  %90 = ptrtoint i8* %89 to i32
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %8, align 8
  store i32 %90, i32* %91, align 4
  br label %93

93:                                               ; preds = %86
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %12, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %65

98:                                               ; preds = %65
  %99 = load %struct.adapter*, %struct.adapter** %6, align 8
  %100 = load i32, i32* @CIM_OBQ_DBG_CFG_A, align 4
  %101 = call i32 @t4_write_reg(%struct.adapter* %99, i32 %100, i32 0)
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %98, %84, %36
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i64 @is_t4(i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @QUENUMSELECT_V(i32) #1

declare dso_local i8* @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @CIMQBASE_G(i32) #1

declare dso_local i32 @CIMQSIZE_G(i32) #1

declare dso_local i32 @OBQDBGADDR_V(i32) #1

declare dso_local i32 @t4_wait_op_done(%struct.adapter*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
