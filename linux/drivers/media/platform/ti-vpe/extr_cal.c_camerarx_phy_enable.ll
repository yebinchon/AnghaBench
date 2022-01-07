; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_camerarx_phy_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_camerarx_phy_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal_ctx = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"cm not mapped\0A\00", align 1
@CM_CTRL_CORE_CAMERRX_CONTROL = common dso_local global i32 0, align 4
@CM_CAMERRX_CTRL_CSI0_CTRLCLKEN_MASK = common dso_local global i32 0, align 4
@CM_CAMERRX_CTRL_CSI0_CAMMODE_MASK = common dso_local global i32 0, align 4
@CM_CAMERRX_CTRL_CSI0_LANEENABLE_MASK = common dso_local global i32 0, align 4
@CM_CAMERRX_CTRL_CSI0_MODE_MASK = common dso_local global i32 0, align 4
@CM_CAMERRX_CTRL_CSI1_CTRLCLKEN_MASK = common dso_local global i32 0, align 4
@CM_CAMERRX_CTRL_CSI1_CAMMODE_MASK = common dso_local global i32 0, align 4
@CM_CAMERRX_CTRL_CSI1_LANEENABLE_MASK = common dso_local global i32 0, align 4
@CM_CAMERRX_CTRL_CSI1_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cal_ctx*)* @camerarx_phy_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camerarx_phy_enable(%struct.cal_ctx* %0) #0 {
  %2 = alloca %struct.cal_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.cal_ctx* %0, %struct.cal_ctx** %2, align 8
  %4 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %14 = call i32 @ctx_err(%struct.cal_ctx* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %60

15:                                               ; preds = %1
  %16 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i32, i32* @CM_CTRL_CORE_CAMERRX_CONTROL, align 4
  %22 = call i32 @reg_read(%struct.TYPE_5__* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %36

27:                                               ; preds = %15
  %28 = load i32, i32* @CM_CAMERRX_CTRL_CSI0_CTRLCLKEN_MASK, align 4
  %29 = call i32 @set_field(i32* %3, i32 1, i32 %28)
  %30 = load i32, i32* @CM_CAMERRX_CTRL_CSI0_CAMMODE_MASK, align 4
  %31 = call i32 @set_field(i32* %3, i32 0, i32 %30)
  %32 = load i32, i32* @CM_CAMERRX_CTRL_CSI0_LANEENABLE_MASK, align 4
  %33 = call i32 @set_field(i32* %3, i32 15, i32 %32)
  %34 = load i32, i32* @CM_CAMERRX_CTRL_CSI0_MODE_MASK, align 4
  %35 = call i32 @set_field(i32* %3, i32 1, i32 %34)
  br label %51

36:                                               ; preds = %15
  %37 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %38 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load i32, i32* @CM_CAMERRX_CTRL_CSI1_CTRLCLKEN_MASK, align 4
  %43 = call i32 @set_field(i32* %3, i32 1, i32 %42)
  %44 = load i32, i32* @CM_CAMERRX_CTRL_CSI1_CAMMODE_MASK, align 4
  %45 = call i32 @set_field(i32* %3, i32 0, i32 %44)
  %46 = load i32, i32* @CM_CAMERRX_CTRL_CSI1_LANEENABLE_MASK, align 4
  %47 = call i32 @set_field(i32* %3, i32 3, i32 %46)
  %48 = load i32, i32* @CM_CAMERRX_CTRL_CSI1_MODE_MASK, align 4
  %49 = call i32 @set_field(i32* %3, i32 1, i32 %48)
  br label %50

50:                                               ; preds = %41, %36
  br label %51

51:                                               ; preds = %50, %27
  %52 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %53 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i32, i32* @CM_CTRL_CORE_CAMERRX_CONTROL, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @reg_write(%struct.TYPE_5__* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %51, %12
  ret void
}

declare dso_local i32 @ctx_err(%struct.cal_ctx*, i8*) #1

declare dso_local i32 @reg_read(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @set_field(i32*, i32, i32) #1

declare dso_local i32 @reg_write(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
