; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.h_jwrite32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.h_jwrite32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"REG WRITE\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"VAL AFTER WRITE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*, i64, i64)* @jwrite32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jwrite32(%struct.jme_adapter* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.jme_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.jme_adapter* %0, %struct.jme_adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @reg_dbg(%struct.jme_adapter* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %8, i64 %9)
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i64 %11, i64 %16)
  %18 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %19 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i64 @readl(i64 %23)
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @reg_dbg(%struct.jme_adapter* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %24, i64 %25)
  ret void
}

declare dso_local i32 @reg_dbg(%struct.jme_adapter*, i8*, i64, i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
