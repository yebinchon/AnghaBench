; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_gen_syndrome.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_pmecc.c_atmel_pmecc_gen_syndrome.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_pmecc_user = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_pmecc_user*, i32)* @atmel_pmecc_gen_syndrome to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_pmecc_gen_syndrome(%struct.atmel_pmecc_user* %0, i32 %1) #0 {
  %3 = alloca %struct.atmel_pmecc_user*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.atmel_pmecc_user* %0, %struct.atmel_pmecc_user** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %3, align 8
  %9 = call i32 @get_strength(%struct.atmel_pmecc_user* %8)
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %43, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %10
  %15 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %3, align 8
  %16 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sdiv i32 %22, 2
  %24 = call i64 @ATMEL_PMECC_REM(i32 %21, i32 %23)
  %25 = add nsw i64 %20, %24
  %26 = call i32 @readl_relaxed(i64 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %14
  %31 = load i32, i32* %6, align 4
  %32 = ashr i32 %31, 16
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %14
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.atmel_pmecc_user*, %struct.atmel_pmecc_user** %3, align 8
  %36 = getelementptr inbounds %struct.atmel_pmecc_user, %struct.atmel_pmecc_user* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 2, %38
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  store i32 %34, i32* %42, align 4
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %10

46:                                               ; preds = %10
  ret void
}

declare dso_local i32 @get_strength(%struct.atmel_pmecc_user*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @ATMEL_PMECC_REM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
