; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_get_global_fd_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_get_global_fd_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32 }

@I40E_GLQF_FDCNT_0 = common dso_local global i32 0, align 4
@I40E_GLQF_FDCNT_0_GUARANT_CNT_MASK = common dso_local global i32 0, align 4
@I40E_GLQF_FDCNT_0_BESTCNT_MASK = common dso_local global i32 0, align 4
@I40E_GLQF_FDCNT_0_BESTCNT_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_get_global_fd_count(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  %5 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %6 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %5, i32 0, i32 0
  %7 = load i32, i32* @I40E_GLQF_FDCNT_0, align 4
  %8 = call i32 @rd32(i32* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @I40E_GLQF_FDCNT_0_GUARANT_CNT_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @I40E_GLQF_FDCNT_0_BESTCNT_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @I40E_GLQF_FDCNT_0_BESTCNT_SHIFT, align 4
  %16 = ashr i32 %14, %15
  %17 = add nsw i32 %11, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  ret i32 %18
}

declare dso_local i32 @rd32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
