; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_adjust_itr_by_size_and_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_adjust_itr_by_size_and_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ICE_ITR_MASK = common dso_local global i32 0, align 4
@ICE_ITR_ADAPTIVE_MAX_USECS = common dso_local global i32 0, align 4
@ICE_ITR_ADAPTIVE_LATENCY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_port_info*, i32, i32)* @ice_adjust_itr_by_size_and_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_adjust_itr_by_size_and_speed(%struct.ice_port_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ice_port_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ice_port_info* %0, %struct.ice_port_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ice_port_info*, %struct.ice_port_info** %4, align 8
  %8 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %58 [
    i32 133, label %12
    i32 128, label %21
    i32 129, label %30
    i32 130, label %39
    i32 131, label %48
    i32 132, label %57
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = add i32 %13, 24
  %15 = mul i32 17, %14
  %16 = load i32, i32* %5, align 4
  %17 = add i32 %16, 640
  %18 = call i32 @DIV_ROUND_UP(i32 %15, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = add i32 %19, %18
  store i32 %20, i32* %6, align 4
  br label %67

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = add i32 %22, 24
  %24 = mul i32 34, %23
  %25 = load i32, i32* %5, align 4
  %26 = add i32 %25, 640
  %27 = call i32 @DIV_ROUND_UP(i32 %24, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = add i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %67

30:                                               ; preds = %3
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %31, 24
  %33 = mul i32 43, %32
  %34 = load i32, i32* %5, align 4
  %35 = add i32 %34, 640
  %36 = call i32 @DIV_ROUND_UP(i32 %33, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %67

39:                                               ; preds = %3
  %40 = load i32, i32* %5, align 4
  %41 = add i32 %40, 24
  %42 = mul i32 68, %41
  %43 = load i32, i32* %5, align 4
  %44 = add i32 %43, 640
  %45 = call i32 @DIV_ROUND_UP(i32 %42, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = add i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %67

48:                                               ; preds = %3
  %49 = load i32, i32* %5, align 4
  %50 = add i32 %49, 24
  %51 = mul i32 85, %50
  %52 = load i32, i32* %5, align 4
  %53 = add i32 %52, 640
  %54 = call i32 @DIV_ROUND_UP(i32 %51, i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = add i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %67

57:                                               ; preds = %3
  br label %58

58:                                               ; preds = %3, %57
  %59 = load i32, i32* %5, align 4
  %60 = add i32 %59, 24
  %61 = mul i32 170, %60
  %62 = load i32, i32* %5, align 4
  %63 = add i32 %62, 640
  %64 = call i32 @DIV_ROUND_UP(i32 %61, i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = add i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %58, %48, %39, %30, %21, %12
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @ICE_ITR_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @ICE_ITR_ADAPTIVE_MAX_USECS, align 4
  %72 = icmp ugt i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load i32, i32* @ICE_ITR_ADAPTIVE_LATENCY, align 4
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* @ICE_ITR_ADAPTIVE_MAX_USECS, align 4
  %78 = load i32, i32* %6, align 4
  %79 = add i32 %78, %77
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %73, %67
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
