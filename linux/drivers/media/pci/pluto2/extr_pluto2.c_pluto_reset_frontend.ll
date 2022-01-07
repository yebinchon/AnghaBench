; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_pluto_reset_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_pluto_reset_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pluto = type { i32 }

@REG_MISC = common dso_local global i32 0, align 4
@MISC_FRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pluto*, i32)* @pluto_reset_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pluto_reset_frontend(%struct.pluto* %0, i32 %1) #0 {
  %3 = alloca %struct.pluto*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pluto* %0, %struct.pluto** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pluto*, %struct.pluto** %3, align 8
  %7 = load i32, i32* @REG_MISC, align 4
  %8 = call i32 @pluto_readreg(%struct.pluto* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @MISC_FRST, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load i32, i32* @MISC_FRST, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load %struct.pluto*, %struct.pluto** %3, align 8
  %19 = load i32, i32* @REG_MISC, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @pluto_writereg(%struct.pluto* %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %13, %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32, i32* @MISC_FRST, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.pluto*, %struct.pluto** %3, align 8
  %30 = load i32, i32* @REG_MISC, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @pluto_writereg(%struct.pluto* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %25, %22
  ret void
}

declare dso_local i32 @pluto_readreg(%struct.pluto*, i32) #1

declare dso_local i32 @pluto_writereg(%struct.pluto*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
