; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda8083.c_tda8083_get_fec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda8083.c_tda8083_get_fec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda8083_state = type { i32 }

@tda8083_get_fec.fec_tab = internal global [8 x i32] [i32 128, i32 135, i32 134, i32 133, i32 132, i32 131, i32 130, i32 129], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda8083_state*)* @tda8083_get_fec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda8083_get_fec(%struct.tda8083_state* %0) #0 {
  %2 = alloca %struct.tda8083_state*, align 8
  %3 = alloca i64, align 8
  store %struct.tda8083_state* %0, %struct.tda8083_state** %2, align 8
  %4 = load %struct.tda8083_state*, %struct.tda8083_state** %2, align 8
  %5 = call i32 @tda8083_readreg(%struct.tda8083_state* %4, i32 14)
  %6 = and i32 %5, 7
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds [8 x i32], [8 x i32]* @tda8083_get_fec.fec_tab, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  ret i32 %10
}

declare dso_local i32 @tda8083_readreg(%struct.tda8083_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
