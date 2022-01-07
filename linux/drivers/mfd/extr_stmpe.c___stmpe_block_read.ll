; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c___stmpe_block_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c___stmpe_block_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmpe = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@.str = private unnamed_addr constant [29 x i8] c"failed to read regs %#x: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"rd: reg %#x (%d) => ret %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"stmpe rd: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmpe*, i32, i32, i32*)* @__stmpe_block_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__stmpe_block_read(%struct.stmpe* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.stmpe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.stmpe* %0, %struct.stmpe** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %11 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.stmpe*, i32, i32, i32*)**
  %15 = load i32 (%struct.stmpe*, i32, i32, i32*)*, i32 (%struct.stmpe*, i32, i32, i32*)** %14, align 8
  %16 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 %15(%struct.stmpe* %16, i32 %17, i32 %18, i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %25 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %23, %4
  %31 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %32 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @dev_vdbg(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35, i32 %36)
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @stmpe_dump_bytes(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %38, i32 %39)
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @stmpe_dump_bytes(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
