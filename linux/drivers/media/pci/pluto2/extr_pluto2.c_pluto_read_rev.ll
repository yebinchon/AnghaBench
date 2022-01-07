; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_pluto_read_rev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_pluto_read_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pluto = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REG_MISC = common dso_local global i32 0, align 4
@MISC_DVR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"board revision %d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pluto*)* @pluto_read_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pluto_read_rev(%struct.pluto* %0) #0 {
  %2 = alloca %struct.pluto*, align 8
  %3 = alloca i32, align 4
  store %struct.pluto* %0, %struct.pluto** %2, align 8
  %4 = load %struct.pluto*, %struct.pluto** %2, align 8
  %5 = load i32, i32* @REG_MISC, align 4
  %6 = call i32 @pluto_readreg(%struct.pluto* %4, i32 %5)
  %7 = load i32, i32* @MISC_DVR, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.pluto*, %struct.pluto** %2, align 8
  %10 = getelementptr inbounds %struct.pluto, %struct.pluto* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %3, align 4
  %14 = ashr i32 %13, 12
  %15 = and i32 %14, 15
  %16 = load i32, i32* %3, align 4
  %17 = ashr i32 %16, 4
  %18 = and i32 %17, 255
  %19 = call i32 @dev_info(i32* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  ret void
}

declare dso_local i32 @pluto_readreg(%struct.pluto*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
