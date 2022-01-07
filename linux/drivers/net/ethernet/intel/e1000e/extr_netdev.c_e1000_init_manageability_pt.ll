; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_init_manageability_pt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_init_manageability_pt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FLAG_MNG_PT_ENABLED = common dso_local global i32 0, align 4
@MANC = common dso_local global i32 0, align 4
@E1000_MANC_EN_MNG2HOST = common dso_local global i32 0, align 4
@MANC2H = common dso_local global i32 0, align 4
@E1000_MANC2H_PORT_623 = common dso_local global i32 0, align 4
@E1000_MANC2H_PORT_664 = common dso_local global i32 0, align 4
@E1000_MDEF_PORT_623 = common dso_local global i32 0, align 4
@E1000_MDEF_PORT_664 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unable to create IPMI pass-through filter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_init_manageability_pt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_init_manageability_pt(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 1
  store %struct.e1000_hw* %10, %struct.e1000_hw** %3, align 8
  %11 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FLAG_MNG_PT_ENABLED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %112

18:                                               ; preds = %1
  %19 = load i32, i32* @MANC, align 4
  %20 = call i32 @er32(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @E1000_MANC_EN_MNG2HOST, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @MANC2H, align 4
  %25 = call i32 @er32(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %27 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %30 [
    i32 129, label %36
    i32 128, label %36
  ]

30:                                               ; preds = %18
  %31 = load i32, i32* @E1000_MANC2H_PORT_623, align 4
  %32 = load i32, i32* @E1000_MANC2H_PORT_664, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %105

36:                                               ; preds = %18, %18
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %64, %36
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 8
  br i1 %39, label %40, label %67

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @MDEF(i32 %41)
  %43 = call i32 @er32(i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @E1000_MDEF_PORT_623, align 4
  %46 = load i32, i32* @E1000_MDEF_PORT_664, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %44, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %64

52:                                               ; preds = %40
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @BIT(i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %55, %52
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %60, %51
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %37

67:                                               ; preds = %37
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @E1000_MDEF_PORT_623, align 4
  %70 = load i32, i32* @E1000_MDEF_PORT_664, align 4
  %71 = or i32 %69, %70
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %105

74:                                               ; preds = %67
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %96, %74
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %76, 8
  br i1 %77, label %78, label %99

78:                                               ; preds = %75
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @MDEF(i32 %79)
  %81 = call i32 @er32(i32 %80)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @MDEF(i32 %84)
  %86 = load i32, i32* @E1000_MDEF_PORT_623, align 4
  %87 = load i32, i32* @E1000_MDEF_PORT_664, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @ew32(i32 %85, i32 %88)
  %90 = call i32 @BIT(i32 1)
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %99

95:                                               ; preds = %78
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %75

99:                                               ; preds = %83, %75
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = call i32 @e_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %99
  br label %105

105:                                              ; preds = %104, %73, %30
  %106 = load i32, i32* @MANC2H, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @ew32(i32 %106, i32 %107)
  %109 = load i32, i32* @MANC, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @ew32(i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %105, %17
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @MDEF(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
