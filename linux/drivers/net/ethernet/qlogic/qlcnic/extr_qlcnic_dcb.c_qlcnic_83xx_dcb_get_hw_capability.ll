; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_83xx_dcb_get_hw_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_83xx_dcb_get_hw_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_dcb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qlcnic_dcb_capability }
%struct.qlcnic_dcb_capability = type { i32, i64, i64 }

@BIT_2 = common dso_local global i32 0, align 4
@DCB_CAP_DCBX_VER_CEE = common dso_local global i32 0, align 4
@BIT_3 = common dso_local global i32 0, align 4
@DCB_CAP_DCBX_VER_IEEE = common dso_local global i32 0, align 4
@DCB_CAP_DCBX_LLD_MANAGED = common dso_local global i32 0, align 4
@QLCNIC_DCB_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_dcb*)* @qlcnic_83xx_dcb_get_hw_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_dcb_get_hw_capability(%struct.qlcnic_dcb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_dcb*, align 8
  %4 = alloca %struct.qlcnic_dcb_capability*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qlcnic_dcb* %0, %struct.qlcnic_dcb** %3, align 8
  %7 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %3, align 8
  %8 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.qlcnic_dcb_capability* %10, %struct.qlcnic_dcb_capability** %4, align 8
  %11 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %3, align 8
  %12 = call i32 @__qlcnic_dcb_get_capability(%struct.qlcnic_dcb* %11, i32* %5)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %70

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @BIT_2, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @DCB_CAP_DCBX_VER_CEE, align 4
  %24 = load %struct.qlcnic_dcb_capability*, %struct.qlcnic_dcb_capability** %4, align 8
  %25 = getelementptr inbounds %struct.qlcnic_dcb_capability, %struct.qlcnic_dcb_capability* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @BIT_3, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* @DCB_CAP_DCBX_VER_IEEE, align 4
  %33 = load %struct.qlcnic_dcb_capability*, %struct.qlcnic_dcb_capability** %4, align 8
  %34 = getelementptr inbounds %struct.qlcnic_dcb_capability, %struct.qlcnic_dcb_capability* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.qlcnic_dcb_capability*, %struct.qlcnic_dcb_capability** %4, align 8
  %39 = getelementptr inbounds %struct.qlcnic_dcb_capability, %struct.qlcnic_dcb_capability* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @DCB_CAP_DCBX_LLD_MANAGED, align 4
  %44 = load %struct.qlcnic_dcb_capability*, %struct.qlcnic_dcb_capability** %4, align 8
  %45 = getelementptr inbounds %struct.qlcnic_dcb_capability, %struct.qlcnic_dcb_capability* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.qlcnic_dcb_capability*, %struct.qlcnic_dcb_capability** %4, align 8
  %50 = getelementptr inbounds %struct.qlcnic_dcb_capability, %struct.qlcnic_dcb_capability* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %48
  %54 = load %struct.qlcnic_dcb_capability*, %struct.qlcnic_dcb_capability** %4, align 8
  %55 = getelementptr inbounds %struct.qlcnic_dcb_capability, %struct.qlcnic_dcb_capability* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.qlcnic_dcb_capability*, %struct.qlcnic_dcb_capability** %4, align 8
  %60 = getelementptr inbounds %struct.qlcnic_dcb_capability, %struct.qlcnic_dcb_capability* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32, i32* @QLCNIC_DCB_STATE, align 4
  %65 = load %struct.qlcnic_dcb*, %struct.qlcnic_dcb** %3, align 8
  %66 = getelementptr inbounds %struct.qlcnic_dcb, %struct.qlcnic_dcb* %65, i32 0, i32 0
  %67 = call i32 @set_bit(i32 %64, i32* %66)
  br label %68

68:                                               ; preds = %63, %58, %53, %48
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %15
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @__qlcnic_dcb_get_capability(%struct.qlcnic_dcb*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
