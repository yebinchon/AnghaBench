; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_func_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_func_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_func_state_params = type { i32, i64, %struct.bnx2x_func_sp_obj* }
%struct.bnx2x_func_sp_obj = type { i64, i32 (%struct.bnx2x.0*, %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_state_params*)*, i32 (%struct.bnx2x.1*, %struct.bnx2x_func_state_params*)*, i32 (%struct.bnx2x.2*, %struct.bnx2x_func_sp_obj*, i32)*, i32, i32 }
%struct.bnx2x.0 = type opaque
%struct.bnx2x.1 = type opaque
%struct.bnx2x.2 = type opaque

@EBUSY = common dso_local global i32 0, align 4
@RAMROD_RETRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"timeout waiting for previous ramrod completion\0A\00", align 1
@RAMROD_DRV_CLR_ONLY = common dso_local global i32 0, align 4
@BNX2X_F_STATE_MAX = common dso_local global i32 0, align 4
@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_func_state_change(%struct.bnx2x* %0, %struct.bnx2x_func_state_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_func_state_params*, align 8
  %6 = alloca %struct.bnx2x_func_sp_obj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_func_state_params* %1, %struct.bnx2x_func_state_params** %5, align 8
  %11 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %5, align 8
  %12 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %11, i32 0, i32 2
  %13 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %12, align 8
  store %struct.bnx2x_func_sp_obj* %13, %struct.bnx2x_func_sp_obj** %6, align 8
  store i32 300, i32* %8, align 4
  %14 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %5, align 8
  %15 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %18 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %17, i32 0, i32 0
  store i64* %18, i64** %10, align 8
  %19 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %20 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %19, i32 0, i32 5
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %23 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %22, i32 0, i32 1
  %24 = load i32 (%struct.bnx2x.0*, %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_state_params*)*, i32 (%struct.bnx2x.0*, %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_state_params*)** %23, align 8
  %25 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %26 = bitcast %struct.bnx2x* %25 to %struct.bnx2x.0*
  %27 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %28 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %5, align 8
  %29 = call i32 %24(%struct.bnx2x.0* %26, %struct.bnx2x_func_sp_obj* %27, %struct.bnx2x_func_state_params* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %80

34:                                               ; preds = %2
  %35 = load i32, i32* @RAMROD_RETRY, align 4
  %36 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %5, align 8
  %37 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %36, i32 0, i32 1
  %38 = call i64 @test_bit(i32 %35, i64* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %80

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %52, %40
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %8, align 4
  %49 = icmp sgt i32 %48, 0
  br label %50

50:                                               ; preds = %46, %41
  %51 = phi i1 [ false, %41 ], [ %49, %46 ]
  br i1 %51, label %52, label %68

52:                                               ; preds = %50
  %53 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %54 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %53, i32 0, i32 5
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = call i32 @msleep(i32 10)
  %57 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %58 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %57, i32 0, i32 5
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %61 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %60, i32 0, i32 1
  %62 = load i32 (%struct.bnx2x.0*, %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_state_params*)*, i32 (%struct.bnx2x.0*, %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_state_params*)** %61, align 8
  %63 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %64 = bitcast %struct.bnx2x* %63 to %struct.bnx2x.0*
  %65 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %66 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %5, align 8
  %67 = call i32 %62(%struct.bnx2x.0* %64, %struct.bnx2x_func_sp_obj* %65, %struct.bnx2x_func_state_params* %66)
  store i32 %67, i32* %7, align 4
  br label %41

68:                                               ; preds = %50
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @EBUSY, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %75 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %74, i32 0, i32 5
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %3, align 4
  br label %157

79:                                               ; preds = %68
  br label %89

80:                                               ; preds = %34, %2
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %85 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %84, i32 0, i32 5
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %3, align 4
  br label %157

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %79
  %90 = load i32, i32* %9, align 4
  %91 = load i64*, i64** %10, align 8
  %92 = call i32 @set_bit(i32 %90, i64* %91)
  %93 = load i32, i32* @RAMROD_DRV_CLR_ONLY, align 4
  %94 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %5, align 8
  %95 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %94, i32 0, i32 1
  %96 = call i64 @test_bit(i32 %93, i64* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %89
  %99 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %100 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @bnx2x_func_state_change_comp(%struct.bnx2x* %99, %struct.bnx2x_func_sp_obj* %100, i32 %101)
  %103 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %104 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %103, i32 0, i32 5
  %105 = call i32 @mutex_unlock(i32* %104)
  br label %149

106:                                              ; preds = %89
  %107 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %108 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %107, i32 0, i32 2
  %109 = load i32 (%struct.bnx2x.1*, %struct.bnx2x_func_state_params*)*, i32 (%struct.bnx2x.1*, %struct.bnx2x_func_state_params*)** %108, align 8
  %110 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %111 = bitcast %struct.bnx2x* %110 to %struct.bnx2x.1*
  %112 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %5, align 8
  %113 = call i32 %109(%struct.bnx2x.1* %111, %struct.bnx2x_func_state_params* %112)
  store i32 %113, i32* %7, align 4
  %114 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %115 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %114, i32 0, i32 5
  %116 = call i32 @mutex_unlock(i32* %115)
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %106
  %120 = load i32, i32* @BNX2X_F_STATE_MAX, align 4
  %121 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %122 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load i64*, i64** %10, align 8
  %125 = call i32 @clear_bit(i32 %123, i64* %124)
  %126 = call i32 (...) @smp_mb__after_atomic()
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %3, align 4
  br label %157

128:                                              ; preds = %106
  %129 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %130 = load %struct.bnx2x_func_state_params*, %struct.bnx2x_func_state_params** %5, align 8
  %131 = getelementptr inbounds %struct.bnx2x_func_state_params, %struct.bnx2x_func_state_params* %130, i32 0, i32 1
  %132 = call i64 @test_bit(i32 %129, i64* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %148

134:                                              ; preds = %128
  %135 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %136 = getelementptr inbounds %struct.bnx2x_func_sp_obj, %struct.bnx2x_func_sp_obj* %135, i32 0, i32 3
  %137 = load i32 (%struct.bnx2x.2*, %struct.bnx2x_func_sp_obj*, i32)*, i32 (%struct.bnx2x.2*, %struct.bnx2x_func_sp_obj*, i32)** %136, align 8
  %138 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %139 = bitcast %struct.bnx2x* %138 to %struct.bnx2x.2*
  %140 = load %struct.bnx2x_func_sp_obj*, %struct.bnx2x_func_sp_obj** %6, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i32 %137(%struct.bnx2x.2* %139, %struct.bnx2x_func_sp_obj* %140, i32 %141)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %134
  %146 = load i32, i32* %7, align 4
  store i32 %146, i32* %3, align 4
  br label %157

147:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %157

148:                                              ; preds = %128
  br label %149

149:                                              ; preds = %148, %98
  %150 = load i32, i32* %9, align 4
  %151 = load i64*, i64** %10, align 8
  %152 = call i64 @test_bit(i32 %150, i64* %151)
  %153 = icmp ne i64 %152, 0
  %154 = xor i1 %153, true
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %149, %147, %145, %119, %83, %73
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @bnx2x_func_state_change_comp(%struct.bnx2x*, %struct.bnx2x_func_sp_obj*, i32) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
