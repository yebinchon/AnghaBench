; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_tc35815.c_dump_txfd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_tc35815.c_dump_txfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TxFD = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"TxFD(%p): %08x %08x %08x %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"BD: \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" %08x %08x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TxFD*)* @dump_txfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_txfd(%struct.TxFD* %0) #0 {
  %2 = alloca %struct.TxFD*, align 8
  store %struct.TxFD* %0, %struct.TxFD** %2, align 8
  %3 = load %struct.TxFD*, %struct.TxFD** %2, align 8
  %4 = load %struct.TxFD*, %struct.TxFD** %2, align 8
  %5 = getelementptr inbounds %struct.TxFD, %struct.TxFD* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @le32_to_cpu(i32 %7)
  %9 = load %struct.TxFD*, %struct.TxFD** %2, align 8
  %10 = getelementptr inbounds %struct.TxFD, %struct.TxFD* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le32_to_cpu(i32 %12)
  %14 = load %struct.TxFD*, %struct.TxFD** %2, align 8
  %15 = getelementptr inbounds %struct.TxFD, %struct.TxFD* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  %19 = load %struct.TxFD*, %struct.TxFD** %2, align 8
  %20 = getelementptr inbounds %struct.TxFD, %struct.TxFD* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  %24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.TxFD* %3, i32 %8, i32 %13, i32 %18, i32 %23)
  %25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.TxFD*, %struct.TxFD** %2, align 8
  %27 = getelementptr inbounds %struct.TxFD, %struct.TxFD* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  %31 = load %struct.TxFD*, %struct.TxFD** %2, align 8
  %32 = getelementptr inbounds %struct.TxFD, %struct.TxFD* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %35)
  %37 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
