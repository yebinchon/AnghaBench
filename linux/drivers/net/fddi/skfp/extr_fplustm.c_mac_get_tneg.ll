; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_fplustm.c_mac_get_tneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_fplustm.c_mac_get_tneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { i32 }

@FM_TNEG = common dso_local global i32 0, align 4
@FM_TMRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s_smc*)* @mac_get_tneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_get_tneg(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  %3 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %4 = load i32, i32* @FM_TNEG, align 4
  %5 = call i32 @FM_A(i32 %4)
  %6 = call i32 @inpw(i32 %5)
  %7 = sext i32 %6 to i64
  %8 = shl i64 %7, 5
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @FM_TMRS, align 4
  %12 = call i32 @FM_A(i32 %11)
  %13 = call i32 @inpw(i32 %12)
  %14 = ashr i32 %13, 10
  %15 = and i32 %14, 31
  %16 = add nsw i32 %10, %15
  %17 = sext i32 %16 to i64
  %18 = or i64 %17, 4292870144
  %19 = trunc i64 %18 to i32
  ret i32 %19
}

declare dso_local i32 @inpw(i32) #1

declare dso_local i32 @FM_A(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
