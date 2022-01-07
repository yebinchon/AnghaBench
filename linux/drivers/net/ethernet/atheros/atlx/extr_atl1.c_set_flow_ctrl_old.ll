; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_set_flow_ctrl_old.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_set_flow_ctrl_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_adapter = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@RXQ_RXF_PAUSE_TH_HI_MASK = common dso_local global i32 0, align 4
@RXQ_RXF_PAUSE_TH_HI_SHIFT = common dso_local global i32 0, align 4
@RXQ_RXF_PAUSE_TH_LO_MASK = common dso_local global i32 0, align 4
@RXQ_RXF_PAUSE_TH_LO_SHIFT = common dso_local global i32 0, align 4
@REG_RXQ_RXF_PAUSE_THRESH = common dso_local global i64 0, align 8
@RXQ_RRD_PAUSE_TH_HI_MASK = common dso_local global i32 0, align 4
@RXQ_RRD_PAUSE_TH_HI_SHIFT = common dso_local global i32 0, align 4
@RXQ_RRD_PAUSE_TH_LO_MASK = common dso_local global i32 0, align 4
@RXQ_RRD_PAUSE_TH_LO_SHIFT = common dso_local global i32 0, align 4
@REG_RXQ_RRD_PAUSE_THRESH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1_adapter*)* @set_flow_ctrl_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_flow_ctrl_old(%struct.atl1_adapter* %0) #0 {
  %2 = alloca %struct.atl1_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.atl1_adapter* %0, %struct.atl1_adapter** %2, align 8
  %6 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sdiv i32 %10, 16
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 2, i32* %3, align 4
  br label %15

15:                                               ; preds = %14, %1
  %16 = load i32, i32* %5, align 4
  %17 = mul nsw i32 %16, 7
  %18 = sdiv i32 %17, 8
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @RXQ_RXF_PAUSE_TH_HI_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @RXQ_RXF_PAUSE_TH_HI_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @RXQ_RXF_PAUSE_TH_LO_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @RXQ_RXF_PAUSE_TH_LO_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = or i32 %23, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @REG_RXQ_RXF_PAUSE_THRESH, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @iowrite32(i32 %30, i64 %36)
  %38 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sdiv i32 %42, 16
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = mul nsw i32 %44, 7
  %46 = sdiv i32 %45, 8
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %49, label %50

49:                                               ; preds = %15
  store i32 2, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %15
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @RXQ_RRD_PAUSE_TH_HI_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @RXQ_RRD_PAUSE_TH_HI_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @RXQ_RRD_PAUSE_TH_LO_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @RXQ_RRD_PAUSE_TH_LO_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = or i32 %55, %60
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @REG_RXQ_RRD_PAUSE_THRESH, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @iowrite32(i32 %62, i64 %68)
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
