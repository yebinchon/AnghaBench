; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_srom_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_srom_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DT_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i32, i32)* @srom_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @srom_data(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i16 0, i16* %6, align 2
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %30, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 16
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @DT_CLK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @sendto_srom(i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @getfrom_srom(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @sendto_srom(i32 %19, i32 %20)
  %22 = load i16, i16* %6, align 2
  %23 = sext i16 %22 to i32
  %24 = shl i32 %23, 1
  %25 = load i32, i32* %7, align 4
  %26 = ashr i32 %25, 3
  %27 = and i32 %26, 1
  %28 = or i32 %24, %27
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %6, align 2
  br label %30

30:                                               ; preds = %11
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %8

33:                                               ; preds = %8
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, 65280
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @sendto_srom(i32 %35, i32 %36)
  %38 = load i16, i16* %6, align 2
  ret i16 %38
}

declare dso_local i32 @sendto_srom(i32, i32) #1

declare dso_local i32 @getfrom_srom(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
