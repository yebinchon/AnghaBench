; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_enable_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_enable_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"enabling internal access for vf %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_vf_enable_access(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @FW_VF_HANDLE(i32 %6)
  %8 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %9 = call i32 @BP_FUNC(%struct.bnx2x* %8)
  %10 = call i32 @storm_memset_vf_to_pf(%struct.bnx2x* %5, i32 %7, i32 %9)
  %11 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @FW_VF_HANDLE(i32 %12)
  %14 = call i32 @storm_memset_func_en(%struct.bnx2x* %11, i32 %13, i32 1)
  %15 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @bnx2x_vf_semi_clear_err(%struct.bnx2x* %15, i32 %16)
  %18 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @bnx2x_vf_pglue_clear_err(%struct.bnx2x* %18, i32 %19)
  %21 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %22 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @HW_VF_HANDLE(%struct.bnx2x* %22, i32 %23)
  %25 = call i32 @bnx2x_pretend_func(%struct.bnx2x* %21, i32 %24)
  %26 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @DP(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %30 = call i32 @bnx2x_vf_enable_internal(%struct.bnx2x* %29, i32 1)
  %31 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %32 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %33 = call i32 @BP_ABS_FUNC(%struct.bnx2x* %32)
  %34 = call i32 @bnx2x_pretend_func(%struct.bnx2x* %31, i32 %33)
  ret void
}

declare dso_local i32 @storm_memset_vf_to_pf(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @FW_VF_HANDLE(i32) #1

declare dso_local i32 @BP_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @storm_memset_func_en(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_vf_semi_clear_err(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_vf_pglue_clear_err(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_pretend_func(%struct.bnx2x*, i32) #1

declare dso_local i32 @HW_VF_HANDLE(%struct.bnx2x*, i32) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @bnx2x_vf_enable_internal(%struct.bnx2x*, i32) #1

declare dso_local i32 @BP_ABS_FUNC(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
