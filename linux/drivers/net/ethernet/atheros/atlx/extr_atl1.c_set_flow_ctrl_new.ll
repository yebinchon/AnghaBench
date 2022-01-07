; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_set_flow_ctrl_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_set_flow_ctrl_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_hw = type { i64 }

@REG_SRAM_RXF_LEN = common dso_local global i64 0, align 8
@RXQ_RXF_PAUSE_TH_HI_MASK = common dso_local global i32 0, align 4
@RXQ_RXF_PAUSE_TH_HI_SHIFT = common dso_local global i32 0, align 4
@RXQ_RXF_PAUSE_TH_LO_MASK = common dso_local global i32 0, align 4
@RXQ_RXF_PAUSE_TH_LO_SHIFT = common dso_local global i32 0, align 4
@REG_RXQ_RXF_PAUSE_THRESH = common dso_local global i64 0, align 8
@REG_SRAM_RRD_LEN = common dso_local global i64 0, align 8
@RXQ_RRD_PAUSE_TH_HI_MASK = common dso_local global i32 0, align 4
@RXQ_RRD_PAUSE_TH_HI_SHIFT = common dso_local global i32 0, align 4
@RXQ_RRD_PAUSE_TH_LO_MASK = common dso_local global i32 0, align 4
@RXQ_RRD_PAUSE_TH_LO_SHIFT = common dso_local global i32 0, align 4
@REG_RXQ_RRD_PAUSE_THRESH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1_hw*)* @set_flow_ctrl_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_flow_ctrl_new(%struct.atl1_hw* %0) #0 {
  %2 = alloca %struct.atl1_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.atl1_hw* %0, %struct.atl1_hw** %2, align 8
  %6 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %7 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @REG_SRAM_RXF_LEN, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @ioread32(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sdiv i32 %12, 16
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 192
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 192, i32* %4, align 4
  br label %17

17:                                               ; preds = %16, %1
  %18 = load i32, i32* %5, align 4
  %19 = mul nsw i32 %18, 7
  %20 = sdiv i32 %19, 8
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 16
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %17
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @RXQ_RXF_PAUSE_TH_HI_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @RXQ_RXF_PAUSE_TH_HI_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @RXQ_RXF_PAUSE_TH_LO_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @RXQ_RXF_PAUSE_TH_LO_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = or i32 %32, %37
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %41 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @REG_RXQ_RXF_PAUSE_THRESH, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @iowrite32(i32 %39, i64 %44)
  %46 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %47 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @REG_SRAM_RRD_LEN, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @ioread32(i64 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = sdiv i32 %52, 8
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = mul nsw i32 %54, 7
  %56 = sdiv i32 %55, 8
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 2
  br i1 %58, label %59, label %60

59:                                               ; preds = %27
  store i32 2, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %27
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 3
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @RXQ_RRD_PAUSE_TH_HI_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @RXQ_RRD_PAUSE_TH_HI_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @RXQ_RRD_PAUSE_TH_LO_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @RXQ_RRD_PAUSE_TH_LO_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = or i32 %72, %77
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.atl1_hw*, %struct.atl1_hw** %2, align 8
  %81 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @REG_RXQ_RRD_PAUSE_THRESH, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @iowrite32(i32 %79, i64 %84)
  ret void
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
