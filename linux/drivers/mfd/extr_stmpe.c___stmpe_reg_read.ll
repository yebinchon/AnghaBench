; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c___stmpe_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c___stmpe_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmpe = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@.str = private unnamed_addr constant [28 x i8] c"failed to read reg %#x: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"rd: reg %#x => data %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmpe*, i32)* @__stmpe_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__stmpe_reg_read(%struct.stmpe* %0, i32 %1) #0 {
  %3 = alloca %struct.stmpe*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stmpe* %0, %struct.stmpe** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %7 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to i32 (%struct.stmpe*, i32)**
  %11 = load i32 (%struct.stmpe*, i32)*, i32 (%struct.stmpe*, i32)** %10, align 8
  %12 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 %11(%struct.stmpe* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %19 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %17, %2
  %25 = load %struct.stmpe*, %struct.stmpe** %3, align 8
  %26 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dev_vdbg(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
