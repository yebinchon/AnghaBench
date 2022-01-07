; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_check_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_check_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp = type { i32, i32, i32 }

@SFP_F_PRESENT = common dso_local global i32 0, align 4
@SFP_F_LOS = common dso_local global i32 0, align 4
@SFP_F_TX_FAULT = common dso_local global i32 0, align 4
@GPIO_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s %u -> %u\0A\00", align 1
@gpio_of_names = common dso_local global i32* null, align 8
@SFP_F_TX_DISABLE = common dso_local global i32 0, align 4
@SFP_F_RATE_SELECT = common dso_local global i32 0, align 4
@SFP_E_INSERT = common dso_local global i32 0, align 4
@SFP_E_REMOVE = common dso_local global i32 0, align 4
@SFP_E_TX_FAULT = common dso_local global i32 0, align 4
@SFP_E_TX_CLEAR = common dso_local global i32 0, align 4
@SFP_E_LOS_HIGH = common dso_local global i32 0, align 4
@SFP_E_LOS_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfp*)* @sfp_check_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfp_check_state(%struct.sfp* %0) #0 {
  %2 = alloca %struct.sfp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sfp* %0, %struct.sfp** %2, align 8
  %6 = load %struct.sfp*, %struct.sfp** %2, align 8
  %7 = getelementptr inbounds %struct.sfp, %struct.sfp* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.sfp*, %struct.sfp** %2, align 8
  %10 = call i32 @sfp_get_state(%struct.sfp* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.sfp*, %struct.sfp** %2, align 8
  %13 = getelementptr inbounds %struct.sfp, %struct.sfp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = xor i32 %11, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @SFP_F_PRESENT, align 4
  %17 = load i32, i32* @SFP_F_LOS, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SFP_F_TX_FAULT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %62, %1
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @GPIO_MAX, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %65

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %27
  %34 = load %struct.sfp*, %struct.sfp** %2, align 8
  %35 = getelementptr inbounds %struct.sfp, %struct.sfp* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** @gpio_of_names, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sfp*, %struct.sfp** %2, align 8
  %43 = getelementptr inbounds %struct.sfp, %struct.sfp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @BIT(i32 %45)
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @BIT(i32 %53)
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @dev_dbg(i32 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %51, i32 %59)
  br label %61

61:                                               ; preds = %33, %27
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %4, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %23

65:                                               ; preds = %23
  %66 = load %struct.sfp*, %struct.sfp** %2, align 8
  %67 = getelementptr inbounds %struct.sfp, %struct.sfp* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SFP_F_TX_DISABLE, align 4
  %70 = load i32, i32* @SFP_F_RATE_SELECT, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = load i32, i32* %3, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.sfp*, %struct.sfp** %2, align 8
  %77 = getelementptr inbounds %struct.sfp, %struct.sfp* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = call i32 (...) @rtnl_lock()
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @SFP_F_PRESENT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %65
  %84 = load %struct.sfp*, %struct.sfp** %2, align 8
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @SFP_F_PRESENT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* @SFP_E_INSERT, align 4
  br label %93

91:                                               ; preds = %83
  %92 = load i32, i32* @SFP_E_REMOVE, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = call i32 @sfp_sm_event(%struct.sfp* %84, i32 %94)
  br label %96

96:                                               ; preds = %93, %65
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @SFP_F_TX_FAULT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %96
  %102 = load %struct.sfp*, %struct.sfp** %2, align 8
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @SFP_F_TX_FAULT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @SFP_E_TX_FAULT, align 4
  br label %111

109:                                              ; preds = %101
  %110 = load i32, i32* @SFP_E_TX_CLEAR, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = call i32 @sfp_sm_event(%struct.sfp* %102, i32 %112)
  br label %114

114:                                              ; preds = %111, %96
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @SFP_F_LOS, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %114
  %120 = load %struct.sfp*, %struct.sfp** %2, align 8
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* @SFP_F_LOS, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i32, i32* @SFP_E_LOS_HIGH, align 4
  br label %129

127:                                              ; preds = %119
  %128 = load i32, i32* @SFP_E_LOS_LOW, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  %131 = call i32 @sfp_sm_event(%struct.sfp* %120, i32 %130)
  br label %132

132:                                              ; preds = %129, %114
  %133 = call i32 (...) @rtnl_unlock()
  %134 = load %struct.sfp*, %struct.sfp** %2, align 8
  %135 = getelementptr inbounds %struct.sfp, %struct.sfp* %134, i32 0, i32 1
  %136 = call i32 @mutex_unlock(i32* %135)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sfp_get_state(%struct.sfp*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @sfp_sm_event(%struct.sfp*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
