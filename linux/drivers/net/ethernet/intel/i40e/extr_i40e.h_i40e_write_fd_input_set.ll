; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e.h_i40e_write_fd_input_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e.h_i40e_write_fd_input_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_pf*, i32, i32)* @i40e_write_fd_input_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_write_fd_input_set(%struct.i40e_pf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %8 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %7, i32 0, i32 0
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @I40E_PRTQF_FD_INSET(i32 %9, i32 1)
  %11 = load i32, i32* %6, align 4
  %12 = ashr i32 %11, 32
  %13 = call i32 @i40e_write_rx_ctl(i32* %8, i32 %10, i32 %12)
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %15 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %14, i32 0, i32 0
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @I40E_PRTQF_FD_INSET(i32 %16, i32 0)
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = and i64 %19, 4294967295
  %21 = trunc i64 %20 to i32
  %22 = call i32 @i40e_write_rx_ctl(i32* %15, i32 %17, i32 %21)
  ret void
}

declare dso_local i32 @i40e_write_rx_ctl(i32*, i32, i32) #1

declare dso_local i32 @I40E_PRTQF_FD_INSET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
