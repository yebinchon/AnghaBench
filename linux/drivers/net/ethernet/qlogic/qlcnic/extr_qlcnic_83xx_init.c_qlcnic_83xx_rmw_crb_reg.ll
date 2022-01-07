; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_rmw_crb_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_rmw_crb_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.qlc_83xx_rmw = type { i32, i32, i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*, i32, i32, %struct.qlc_83xx_rmw*)* @qlcnic_83xx_rmw_crb_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_83xx_rmw_crb_reg(%struct.qlcnic_adapter* %0, i32 %1, i32 %2, %struct.qlc_83xx_rmw* %3) #0 {
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qlc_83xx_rmw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.qlc_83xx_rmw* %3, %struct.qlc_83xx_rmw** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.qlc_83xx_rmw*, %struct.qlc_83xx_rmw** %8, align 8
  %12 = getelementptr inbounds %struct.qlc_83xx_rmw, %struct.qlc_83xx_rmw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %4
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.qlc_83xx_rmw*, %struct.qlc_83xx_rmw** %8, align 8
  %23 = getelementptr inbounds %struct.qlc_83xx_rmw, %struct.qlc_83xx_rmw* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  br label %38

28:                                               ; preds = %4
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @QLCRD32(%struct.qlcnic_adapter* %29, i32 %30, i32* %9)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %68

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %15
  %39 = load %struct.qlc_83xx_rmw*, %struct.qlc_83xx_rmw** %8, align 8
  %40 = getelementptr inbounds %struct.qlc_83xx_rmw, %struct.qlc_83xx_rmw* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %10, align 4
  %44 = load %struct.qlc_83xx_rmw*, %struct.qlc_83xx_rmw** %8, align 8
  %45 = getelementptr inbounds %struct.qlc_83xx_rmw, %struct.qlc_83xx_rmw* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = shl i32 %47, %46
  store i32 %48, i32* %10, align 4
  %49 = load %struct.qlc_83xx_rmw*, %struct.qlc_83xx_rmw** %8, align 8
  %50 = getelementptr inbounds %struct.qlc_83xx_rmw, %struct.qlc_83xx_rmw* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = ashr i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load %struct.qlc_83xx_rmw*, %struct.qlc_83xx_rmw** %8, align 8
  %55 = getelementptr inbounds %struct.qlc_83xx_rmw, %struct.qlc_83xx_rmw* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load %struct.qlc_83xx_rmw*, %struct.qlc_83xx_rmw** %8, align 8
  %60 = getelementptr inbounds %struct.qlc_83xx_rmw, %struct.qlc_83xx_rmw* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %10, align 4
  %63 = xor i32 %62, %61
  store i32 %63, i32* %10, align 4
  %64 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %38, %36
  ret void
}

declare dso_local i32 @QLCRD32(%struct.qlcnic_adapter*, i32, i32*) #1

declare dso_local i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
