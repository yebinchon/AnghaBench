; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_jz4725b_bch.c_jz4725b_calculate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_jz4725b_bch.c_jz4725b_calculate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingenic_ecc = type { i32, i32 }
%struct.ingenic_ecc_params = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Unable to init BCH with given parameters\0A\00", align 1
@BCH_BHINT_ENCF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"timed out while calculating ECC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ingenic_ecc*, %struct.ingenic_ecc_params*, i32*, i32*)* @jz4725b_calculate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4725b_calculate(%struct.ingenic_ecc* %0, %struct.ingenic_ecc_params* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ingenic_ecc*, align 8
  %6 = alloca %struct.ingenic_ecc_params*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ingenic_ecc* %0, %struct.ingenic_ecc** %5, align 8
  store %struct.ingenic_ecc_params* %1, %struct.ingenic_ecc_params** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %11 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %14 = load %struct.ingenic_ecc_params*, %struct.ingenic_ecc_params** %6, align 8
  %15 = call i32 @jz4725b_bch_reset(%struct.ingenic_ecc* %13, %struct.ingenic_ecc_params* %14, i32 1)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %20 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %47

23:                                               ; preds = %4
  %24 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load %struct.ingenic_ecc_params*, %struct.ingenic_ecc_params** %6, align 8
  %27 = getelementptr inbounds %struct.ingenic_ecc_params, %struct.ingenic_ecc_params* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @jz4725b_bch_write_data(%struct.ingenic_ecc* %24, i32* %25, i32 %28)
  %30 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %31 = load i32, i32* @BCH_BHINT_ENCF, align 4
  %32 = call i32 @jz4725b_bch_wait_complete(%struct.ingenic_ecc* %30, i32 %31, i32* null)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %23
  %36 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %37 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %47

40:                                               ; preds = %23
  %41 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.ingenic_ecc_params*, %struct.ingenic_ecc_params** %6, align 8
  %44 = getelementptr inbounds %struct.ingenic_ecc_params, %struct.ingenic_ecc_params* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @jz4725b_bch_read_parity(%struct.ingenic_ecc* %41, i32* %42, i32 %45)
  br label %47

47:                                               ; preds = %40, %35, %18
  %48 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %49 = call i32 @jz4725b_bch_disable(%struct.ingenic_ecc* %48)
  %50 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %5, align 8
  %51 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @jz4725b_bch_reset(%struct.ingenic_ecc*, %struct.ingenic_ecc_params*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @jz4725b_bch_write_data(%struct.ingenic_ecc*, i32*, i32) #1

declare dso_local i32 @jz4725b_bch_wait_complete(%struct.ingenic_ecc*, i32, i32*) #1

declare dso_local i32 @jz4725b_bch_read_parity(%struct.ingenic_ecc*, i32*, i32) #1

declare dso_local i32 @jz4725b_bch_disable(%struct.ingenic_ecc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
