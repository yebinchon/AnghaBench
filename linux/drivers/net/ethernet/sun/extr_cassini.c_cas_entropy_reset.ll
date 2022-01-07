; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_entropy_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_entropy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i32, i64 }

@BIM_LOCAL_DEV_EXT = common dso_local global i32 0, align 4
@BIM_LOCAL_DEV_PAD = common dso_local global i32 0, align 4
@BIM_LOCAL_DEV_PROM = common dso_local global i32 0, align 4
@CAS_FLAG_ENTROPY_DEV = common dso_local global i32 0, align 4
@ENTROPY_RESET_STC_MODE = common dso_local global i32 0, align 4
@REG_BIM_LOCAL_DEV_EN = common dso_local global i64 0, align 8
@REG_ENTROPY_RAND_REG = common dso_local global i64 0, align 8
@REG_ENTROPY_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*)* @cas_entropy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_entropy_reset(%struct.cas* %0) #0 {
  %2 = alloca %struct.cas*, align 8
  store %struct.cas* %0, %struct.cas** %2, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
