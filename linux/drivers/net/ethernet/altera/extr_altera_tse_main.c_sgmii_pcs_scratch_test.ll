; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_sgmii_pcs_scratch_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_sgmii_pcs_scratch_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_tse_private = type { i32 }

@SGMII_PCS_SCRATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.altera_tse_private*, i64)* @sgmii_pcs_scratch_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgmii_pcs_scratch_test(%struct.altera_tse_private* %0, i64 %1) #0 {
  %3 = alloca %struct.altera_tse_private*, align 8
  %4 = alloca i64, align 8
  store %struct.altera_tse_private* %0, %struct.altera_tse_private** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %6 = load i32, i32* @SGMII_PCS_SCRATCH, align 4
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @sgmii_pcs_write(%struct.altera_tse_private* %5, i32 %6, i64 %7)
  %9 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %10 = load i32, i32* @SGMII_PCS_SCRATCH, align 4
  %11 = call i64 @sgmii_pcs_read(%struct.altera_tse_private* %9, i32 %10)
  %12 = load i64, i64* %4, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  ret i32 %14
}

declare dso_local i32 @sgmii_pcs_write(%struct.altera_tse_private*, i32, i64) #1

declare dso_local i64 @sgmii_pcs_read(%struct.altera_tse_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
