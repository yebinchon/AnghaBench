; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_credit_pool_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_credit_pool_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_credit_pool_obj = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_credit_pool_obj*, i32)* @bnx2x_credit_pool_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_credit_pool_get(%struct.bnx2x_credit_pool_obj* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x_credit_pool_obj*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2x_credit_pool_obj* %0, %struct.bnx2x_credit_pool_obj** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @smp_mb()
  %7 = load %struct.bnx2x_credit_pool_obj*, %struct.bnx2x_credit_pool_obj** %3, align 8
  %8 = getelementptr inbounds %struct.bnx2x_credit_pool_obj, %struct.bnx2x_credit_pool_obj* %7, i32 0, i32 0
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @__atomic_dec_ifmoe(i32* %8, i32 %9, i32 0)
  store i32 %10, i32* %5, align 4
  %11 = call i32 (...) @smp_mb()
  %12 = load i32, i32* %5, align 4
  ret i32 %12
}

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @__atomic_dec_ifmoe(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
