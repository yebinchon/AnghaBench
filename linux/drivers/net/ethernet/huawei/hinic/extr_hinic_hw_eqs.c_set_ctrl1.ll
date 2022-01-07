; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_eqs.c_set_ctrl1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_eqs.c_set_ctrl1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_eq = type { i32, i32, i32, i32 }

@HINIC_AEQ = common dso_local global i32 0, align 4
@LEN = common dso_local global i32 0, align 4
@ELEM_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@HINIC_CEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_eq*)* @set_ctrl1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ctrl1(%struct.hinic_eq* %0) #0 {
  %2 = alloca %struct.hinic_eq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hinic_eq* %0, %struct.hinic_eq** %2, align 8
  %9 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %10 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @HINIC_AEQ, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %62

15:                                               ; preds = %1
  %16 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %17 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @HINIC_CSR_AEQ_CTRL_1_ADDR(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %21 = call i32 @EQ_SET_HW_PAGE_SIZE_VAL(%struct.hinic_eq* %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %23 = call i32 @EQ_SET_HW_ELEM_SIZE_VAL(%struct.hinic_eq* %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %25 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @hinic_hwif_read_reg(i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @LEN, align 4
  %31 = call i32 @HINIC_AEQ_CTRL_1_CLEAR(i32 %29, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @ELEM_SIZE, align 4
  %34 = call i32 @HINIC_AEQ_CTRL_1_CLEAR(i32 %32, i32 %33)
  %35 = and i32 %31, %34
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = call i32 @HINIC_AEQ_CTRL_1_CLEAR(i32 %36, i32 %37)
  %39 = and i32 %35, %38
  store i32 %39, i32* %7, align 4
  %40 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %41 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @LEN, align 4
  %44 = call i32 @HINIC_AEQ_CTRL_1_SET(i32 %42, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @ELEM_SIZE, align 4
  %47 = call i32 @HINIC_AEQ_CTRL_1_SET(i32 %45, i32 %46)
  %48 = or i32 %44, %47
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = call i32 @HINIC_AEQ_CTRL_1_SET(i32 %49, i32 %50)
  %52 = or i32 %48, %51
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %57 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @hinic_hwif_write_reg(i32 %58, i32 %59, i32 %60)
  br label %104

62:                                               ; preds = %1
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @HINIC_CEQ, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %103

66:                                               ; preds = %62
  %67 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %68 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @HINIC_CSR_CEQ_CTRL_1_ADDR(i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %72 = call i32 @EQ_SET_HW_PAGE_SIZE_VAL(%struct.hinic_eq* %71)
  store i32 %72, i32* %4, align 4
  %73 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %74 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @hinic_hwif_read_reg(i32 %75, i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @LEN, align 4
  %80 = call i32 @HINIC_CEQ_CTRL_1_CLEAR(i32 %78, i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @PAGE_SIZE, align 4
  %83 = call i32 @HINIC_CEQ_CTRL_1_CLEAR(i32 %81, i32 %82)
  %84 = and i32 %80, %83
  store i32 %84, i32* %7, align 4
  %85 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %86 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @LEN, align 4
  %89 = call i32 @HINIC_CEQ_CTRL_1_SET(i32 %87, i32 %88)
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @PAGE_SIZE, align 4
  %92 = call i32 @HINIC_CEQ_CTRL_1_SET(i32 %90, i32 %91)
  %93 = or i32 %89, %92
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  %97 = load %struct.hinic_eq*, %struct.hinic_eq** %2, align 8
  %98 = getelementptr inbounds %struct.hinic_eq, %struct.hinic_eq* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @hinic_hwif_write_reg(i32 %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %66, %62
  br label %104

104:                                              ; preds = %103, %15
  ret void
}

declare dso_local i32 @HINIC_CSR_AEQ_CTRL_1_ADDR(i32) #1

declare dso_local i32 @EQ_SET_HW_PAGE_SIZE_VAL(%struct.hinic_eq*) #1

declare dso_local i32 @EQ_SET_HW_ELEM_SIZE_VAL(%struct.hinic_eq*) #1

declare dso_local i32 @hinic_hwif_read_reg(i32, i32) #1

declare dso_local i32 @HINIC_AEQ_CTRL_1_CLEAR(i32, i32) #1

declare dso_local i32 @HINIC_AEQ_CTRL_1_SET(i32, i32) #1

declare dso_local i32 @hinic_hwif_write_reg(i32, i32, i32) #1

declare dso_local i32 @HINIC_CSR_CEQ_CTRL_1_ADDR(i32) #1

declare dso_local i32 @HINIC_CEQ_CTRL_1_CLEAR(i32, i32) #1

declare dso_local i32 @HINIC_CEQ_CTRL_1_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
