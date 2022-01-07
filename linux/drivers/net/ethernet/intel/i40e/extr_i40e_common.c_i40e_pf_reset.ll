; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_pf_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_pf_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i64 }

@I40E_GLGEN_RSTCTL = common dso_local global i32 0, align 4
@I40E_GLGEN_RSTCTL_GRSTDEL_MASK = common dso_local global i32 0, align 4
@I40E_GLGEN_RSTCTL_GRSTDEL_SHIFT = common dso_local global i32 0, align 4
@I40E_GLGEN_RSTAT = common dso_local global i32 0, align 4
@I40E_GLGEN_RSTAT_DEVSTATE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Global reset polling failed to complete.\0A\00", align 1
@I40E_ERR_RESET_FAILED = common dso_local global i32 0, align 4
@I40E_PF_RESET_WAIT_COUNT = common dso_local global i32 0, align 4
@I40E_GLNVM_ULD = common dso_local global i32 0, align 4
@I40E_GLNVM_ULD_CONF_CORE_DONE_MASK = common dso_local global i32 0, align 4
@I40E_GLNVM_ULD_CONF_GLOBAL_DONE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Core and Global modules ready %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"wait for FW Reset complete timedout\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"I40E_GLNVM_ULD = 0x%x\0A\00", align 1
@I40E_PF_RESET_WAIT_COUNT_A0 = common dso_local global i32 0, align 4
@I40E_PFGEN_CTRL = common dso_local global i32 0, align 4
@I40E_PFGEN_CTRL_PFSWR_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"PF reset polling failed to complete.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_pf_reset(%struct.i40e_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %10 = load i32, i32* @I40E_GLGEN_RSTCTL, align 4
  %11 = call i32 @rd32(%struct.i40e_hw* %9, i32 %10)
  %12 = load i32, i32* @I40E_GLGEN_RSTCTL_GRSTDEL_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @I40E_GLGEN_RSTCTL_GRSTDEL_SHIFT, align 4
  %15 = ashr i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = mul nsw i32 %16, 20
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %33, %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %24 = load i32, i32* @I40E_GLGEN_RSTAT, align 4
  %25 = call i32 @rd32(%struct.i40e_hw* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @I40E_GLGEN_RSTAT_DEVSTATE_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  br label %36

31:                                               ; preds = %22
  %32 = call i32 @msleep(i32 100)
  br label %33

33:                                               ; preds = %31
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %18

36:                                               ; preds = %30, %18
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @I40E_GLGEN_RSTAT_DEVSTATE_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %43 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @I40E_ERR_RESET_FAILED, align 4
  store i32 %44, i32* %2, align 4
  br label %162

45:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %70, %45
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @I40E_PF_RESET_WAIT_COUNT, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %46
  %51 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %52 = load i32, i32* @I40E_GLNVM_ULD, align 4
  %53 = call i32 @rd32(%struct.i40e_hw* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @I40E_GLNVM_ULD_CONF_CORE_DONE_MASK, align 4
  %55 = load i32, i32* @I40E_GLNVM_ULD_CONF_GLOBAL_DONE_MASK, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @I40E_GLNVM_ULD_CONF_CORE_DONE_MASK, align 4
  %61 = load i32, i32* @I40E_GLNVM_ULD_CONF_GLOBAL_DONE_MASK, align 4
  %62 = or i32 %60, %61
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %50
  %65 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %73

68:                                               ; preds = %50
  %69 = call i32 @usleep_range(i32 10000, i32 20000)
  br label %70

70:                                               ; preds = %68
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %46

73:                                               ; preds = %64, %46
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @I40E_GLNVM_ULD_CONF_CORE_DONE_MASK, align 4
  %76 = load i32, i32* @I40E_GLNVM_ULD_CONF_GLOBAL_DONE_MASK, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %74, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %82 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @I40E_ERR_RESET_FAILED, align 4
  store i32 %86, i32* %2, align 4
  br label %162

87:                                               ; preds = %73
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %159, label %90

90:                                               ; preds = %87
  store i32 0, i32* %8, align 4
  %91 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %92 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @I40E_PF_RESET_WAIT_COUNT_A0, align 4
  store i32 %96, i32* %4, align 4
  br label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @I40E_PF_RESET_WAIT_COUNT, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %97, %95
  %100 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %101 = load i32, i32* @I40E_PFGEN_CTRL, align 4
  %102 = call i32 @rd32(%struct.i40e_hw* %100, i32 %101)
  store i32 %102, i32* %6, align 4
  %103 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %104 = load i32, i32* @I40E_PFGEN_CTRL, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @I40E_PFGEN_CTRL_PFSWR_MASK, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @wr32(%struct.i40e_hw* %103, i32 %104, i32 %107)
  br label %109

109:                                              ; preds = %132, %99
  %110 = load i32, i32* %4, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %135

112:                                              ; preds = %109
  %113 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %114 = load i32, i32* @I40E_PFGEN_CTRL, align 4
  %115 = call i32 @rd32(%struct.i40e_hw* %113, i32 %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @I40E_PFGEN_CTRL_PFSWR_MASK, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %112
  br label %135

121:                                              ; preds = %112
  %122 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %123 = load i32, i32* @I40E_GLGEN_RSTAT, align 4
  %124 = call i32 @rd32(%struct.i40e_hw* %122, i32 %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @I40E_GLGEN_RSTAT_DEVSTATE_MASK, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  br label %135

130:                                              ; preds = %121
  %131 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %132

132:                                              ; preds = %130
  %133 = load i32, i32* %4, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %4, align 4
  br label %109

135:                                              ; preds = %129, %120, %109
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @I40E_GLGEN_RSTAT_DEVSTATE_MASK, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %135
  %141 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %142 = load i32, i32* %7, align 4
  %143 = call i64 @i40e_poll_globr(%struct.i40e_hw* %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = load i32, i32* @I40E_ERR_RESET_FAILED, align 4
  store i32 %146, i32* %2, align 4
  br label %162

147:                                              ; preds = %140
  br label %158

148:                                              ; preds = %135
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @I40E_PFGEN_CTRL_PFSWR_MASK, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %155 = call i32 (%struct.i40e_hw*, i8*, ...) @hw_dbg(%struct.i40e_hw* %154, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %156 = load i32, i32* @I40E_ERR_RESET_FAILED, align 4
  store i32 %156, i32* %2, align 4
  br label %162

157:                                              ; preds = %148
  br label %158

158:                                              ; preds = %157, %147
  br label %159

159:                                              ; preds = %158, %87
  %160 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %161 = call i32 @i40e_clear_pxe_mode(%struct.i40e_hw* %160)
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %159, %153, %145, %80, %41
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hw_dbg(%struct.i40e_hw*, i8*, ...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i64 @i40e_poll_globr(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_clear_pxe_mode(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
