; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_init_brg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_init_brg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_channel = type { i32*, i32 }

@R14 = common dso_local global i64 0, align 8
@BRSRC = common dso_local global i32 0, align 4
@SSBR = common dso_local global i32 0, align 4
@SNRZI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scc_channel*)* @init_brg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_brg(%struct.scc_channel* %0) #0 {
  %2 = alloca %struct.scc_channel*, align 8
  store %struct.scc_channel* %0, %struct.scc_channel** %2, align 8
  %3 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %4 = load i64, i64* @R14, align 8
  %5 = load i32, i32* @BRSRC, align 4
  %6 = call i32 @wr(%struct.scc_channel* %3, i64 %4, i32 %5)
  %7 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %8 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i64, i64* @R14, align 8
  %11 = load i32, i32* @SSBR, align 4
  %12 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %13 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @R14, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %11, %17
  %19 = call i32 @OutReg(i32 %9, i64 %10, i32 %18)
  %20 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %21 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* @R14, align 8
  %24 = load i32, i32* @SNRZI, align 4
  %25 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %26 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @R14, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %24, %30
  %32 = call i32 @OutReg(i32 %22, i64 %23, i32 %31)
  ret void
}

declare dso_local i32 @wr(%struct.scc_channel*, i64, i32) #1

declare dso_local i32 @OutReg(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
