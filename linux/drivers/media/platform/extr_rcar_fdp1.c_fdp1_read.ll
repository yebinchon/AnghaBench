; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdp1_dev = type { i64 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Read 0x%08x from 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fdp1_dev*, i32)* @fdp1_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdp1_read(%struct.fdp1_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.fdp1_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fdp1_dev* %0, %struct.fdp1_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %7 = getelementptr inbounds %struct.fdp1_dev, %struct.fdp1_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  %11 = add nsw i64 %8, %10
  %12 = call i32 @ioread32(i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @debug, align 4
  %14 = icmp sge i32 %13, 2
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.fdp1_dev*, %struct.fdp1_dev** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @dprintk(%struct.fdp1_dev* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %2
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @dprintk(%struct.fdp1_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
