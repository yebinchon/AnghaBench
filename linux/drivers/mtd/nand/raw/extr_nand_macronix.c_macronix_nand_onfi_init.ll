; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_macronix.c_macronix_nand_onfi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_macronix.c_macronix_nand_onfi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, %struct.nand_parameters }
%struct.nand_parameters = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.nand_onfi_vendor_macronix = type { i32 }

@MACRONIX_READ_RETRY_BIT = common dso_local global i32 0, align 4
@MACRONIX_NUM_READ_RETRY_MODES = common dso_local global i32 0, align 4
@macronix_nand_setup_read_retry = common dso_local global i32 0, align 4
@ONFI_FEATURE_ADDR_READ_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*)* @macronix_nand_onfi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macronix_nand_onfi_init(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.nand_parameters*, align 8
  %4 = alloca %struct.nand_onfi_vendor_macronix*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %5 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %6 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %5, i32 0, i32 2
  store %struct.nand_parameters* %6, %struct.nand_parameters** %3, align 8
  %7 = load %struct.nand_parameters*, %struct.nand_parameters** %3, align 8
  %8 = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %48

12:                                               ; preds = %1
  %13 = load %struct.nand_parameters*, %struct.nand_parameters** %3, align 8
  %14 = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.nand_onfi_vendor_macronix*
  store %struct.nand_onfi_vendor_macronix* %18, %struct.nand_onfi_vendor_macronix** %4, align 8
  %19 = load %struct.nand_onfi_vendor_macronix*, %struct.nand_onfi_vendor_macronix** %4, align 8
  %20 = getelementptr inbounds %struct.nand_onfi_vendor_macronix, %struct.nand_onfi_vendor_macronix* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MACRONIX_READ_RETRY_BIT, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  br label %48

26:                                               ; preds = %12
  %27 = load i32, i32* @MACRONIX_NUM_READ_RETRY_MODES, align 4
  %28 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @macronix_nand_setup_read_retry, align 4
  %31 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.nand_parameters*, %struct.nand_parameters** %3, align 8
  %34 = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %26
  %38 = load %struct.nand_parameters*, %struct.nand_parameters** %3, align 8
  %39 = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ONFI_FEATURE_ADDR_READ_RETRY, align 4
  %42 = call i32 @bitmap_set(i32 %40, i32 %41, i32 1)
  %43 = load %struct.nand_parameters*, %struct.nand_parameters** %3, align 8
  %44 = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ONFI_FEATURE_ADDR_READ_RETRY, align 4
  %47 = call i32 @bitmap_set(i32 %45, i32 %46, i32 1)
  br label %48

48:                                               ; preds = %11, %25, %37, %26
  ret void
}

declare dso_local i32 @bitmap_set(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
