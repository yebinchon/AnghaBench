; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spansion_post_sfdp_fixups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spansion_post_sfdp_fixups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { %struct.TYPE_2__*, %struct.mtd_info, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mtd_info = type { i64, i32 }

@SZ_16M = common dso_local global i64 0, align 8
@SNOR_F_4B_OPCODES = common dso_local global i32 0, align 4
@SPINOR_OP_SE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_nor*)* @spansion_post_sfdp_fixups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spansion_post_sfdp_fixups(%struct.spi_nor* %0) #0 {
  %2 = alloca %struct.spi_nor*, align 8
  %3 = alloca %struct.mtd_info*, align 8
  store %struct.spi_nor* %0, %struct.spi_nor** %2, align 8
  %4 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %5 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %4, i32 0, i32 1
  store %struct.mtd_info* %5, %struct.mtd_info** %3, align 8
  %6 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %7 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SZ_16M, align 8
  %10 = icmp sle i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %29

12:                                               ; preds = %1
  %13 = load i32, i32* @SNOR_F_4B_OPCODES, align 4
  %14 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %15 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @SPINOR_OP_SE, align 4
  %19 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %20 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %22 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %27 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 8
  br label %29

29:                                               ; preds = %12, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
