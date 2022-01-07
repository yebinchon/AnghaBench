; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32, i32 }
%struct.mei_me_hw = type { i64 }

@H_RST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"H_RST is set = 0x%08X\00", align 1
@H_IG = common dso_local global i32 0, align 4
@H_CSR_IS_MASK = common dso_local global i32 0, align 4
@H_CSR_IE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"H_RST is not set = 0x%08X\00", align 1
@H_RDY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"H_RDY is not cleared 0x%08X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*, i32)* @mei_me_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_me_hw_reset(%struct.mei_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mei_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mei_me_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %10 = call %struct.mei_me_hw* @to_me_hw(%struct.mei_device* %9)
  store %struct.mei_me_hw* %10, %struct.mei_me_hw** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %15 = call i32 @mei_me_intr_enable(%struct.mei_device* %14)
  %16 = load %struct.mei_me_hw*, %struct.mei_me_hw** %6, align 8
  %17 = getelementptr inbounds %struct.mei_me_hw, %struct.mei_me_hw* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %22 = call i32 @mei_me_d0i3_exit_sync(%struct.mei_device* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %121

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %13
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %31 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pm_runtime_set_active(i32 %32)
  %34 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %35 = call i32 @mei_hcsr_read(%struct.mei_device* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @H_RST, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @H_RST, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %29
  %42 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %43 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @dev_warn(i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @H_RST, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @mei_hcsr_set(%struct.mei_device* %51, i32 %52)
  %54 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %55 = call i32 @mei_hcsr_read(%struct.mei_device* %54)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %41, %29
  %57 = load i32, i32* @H_RST, align 4
  %58 = load i32, i32* @H_IG, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @H_CSR_IS_MASK, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %56
  %67 = load i32, i32* @H_CSR_IE_MASK, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %66, %56
  %72 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %73 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %72, i32 0, i32 0
  store i32 0, i32* %73, align 4
  %74 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @mei_hcsr_write(%struct.mei_device* %74, i32 %75)
  %77 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %78 = call i32 @mei_hcsr_read(%struct.mei_device* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @H_RST, align 4
  %81 = and i32 %79, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %71
  %84 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %85 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @dev_warn(i32 %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %83, %71
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @H_RDY, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* @H_RDY, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %97 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @dev_warn(i32 %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %95, %89
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %120, label %104

104:                                              ; preds = %101
  %105 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %106 = call i32 @mei_me_hw_reset_release(%struct.mei_device* %105)
  %107 = load %struct.mei_me_hw*, %struct.mei_me_hw** %6, align 8
  %108 = getelementptr inbounds %struct.mei_me_hw, %struct.mei_me_hw* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %104
  %112 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %113 = call i32 @mei_me_d0i3_enter(%struct.mei_device* %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %3, align 4
  br label %121

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %104
  br label %120

120:                                              ; preds = %119, %101
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %116, %25
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.mei_me_hw* @to_me_hw(%struct.mei_device*) #1

declare dso_local i32 @mei_me_intr_enable(%struct.mei_device*) #1

declare dso_local i32 @mei_me_d0i3_exit_sync(%struct.mei_device*) #1

declare dso_local i32 @pm_runtime_set_active(i32) #1

declare dso_local i32 @mei_hcsr_read(%struct.mei_device*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @mei_hcsr_set(%struct.mei_device*, i32) #1

declare dso_local i32 @mei_hcsr_write(%struct.mei_device*, i32) #1

declare dso_local i32 @mei_me_hw_reset_release(%struct.mei_device*) #1

declare dso_local i32 @mei_me_d0i3_enter(%struct.mei_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
