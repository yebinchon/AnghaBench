; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_camerarx_phy_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_cal.c_camerarx_phy_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cal_ctx = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"cm not mapped\0A\00", align 1
@CM_CTRL_CORE_CAMERRX_CONTROL = common dso_local global i32 0, align 4
@CM_CAMERRX_CTRL_CSI0_CTRLCLKEN_MASK = common dso_local global i32 0, align 4
@CM_CAMERRX_CTRL_CSI1_CTRLCLKEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cal_ctx*)* @camerarx_phy_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camerarx_phy_disable(%struct.cal_ctx* %0) #0 {
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
  br label %48

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
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = load i32, i32* @CM_CAMERRX_CTRL_CSI0_CTRLCLKEN_MASK, align 4
  %29 = call i32 @set_field(i32* %3, i32 0, i32 %28)
  br label %39

30:                                               ; preds = %15
  %31 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @CM_CAMERRX_CTRL_CSI1_CTRLCLKEN_MASK, align 4
  %37 = call i32 @set_field(i32* %3, i32 0, i32 %36)
  br label %38

38:                                               ; preds = %35, %30
  br label %39

39:                                               ; preds = %38, %27
  %40 = load %struct.cal_ctx*, %struct.cal_ctx** %2, align 8
  %41 = getelementptr inbounds %struct.cal_ctx, %struct.cal_ctx* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i32, i32* @CM_CTRL_CORE_CAMERRX_CONTROL, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @reg_write(%struct.TYPE_5__* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %39, %12
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
