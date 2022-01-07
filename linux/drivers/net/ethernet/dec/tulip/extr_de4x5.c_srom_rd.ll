; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_srom_rd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_srom_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SROM_RD = common dso_local global i32 0, align 4
@SROM_SR = common dso_local global i32 0, align 4
@DT_CS = common dso_local global i32 0, align 4
@DT_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i32, i32)* @srom_rd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @srom_rd(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @SROM_RD, align 4
  %6 = load i32, i32* @SROM_SR, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @sendto_srom(i32 %7, i32 %8)
  %10 = load i32, i32* @SROM_RD, align 4
  %11 = load i32, i32* @SROM_SR, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @DT_CS, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @srom_latch(i32 %14, i32 %15)
  %17 = load i32, i32* @SROM_RD, align 4
  %18 = load i32, i32* @SROM_SR, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @DT_IN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @DT_CS, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @srom_command(i32 %23, i32 %24)
  %26 = load i32, i32* @SROM_RD, align 4
  %27 = load i32, i32* @SROM_SR, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @DT_CS, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @srom_address(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* @SROM_RD, align 4
  %35 = load i32, i32* @SROM_SR, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @DT_CS, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %3, align 4
  %40 = call signext i16 @srom_data(i32 %38, i32 %39)
  ret i16 %40
}

declare dso_local i32 @sendto_srom(i32, i32) #1

declare dso_local i32 @srom_latch(i32, i32) #1

declare dso_local i32 @srom_command(i32, i32) #1

declare dso_local i32 @srom_address(i32, i32, i32) #1

declare dso_local signext i16 @srom_data(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
