; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_is25lp256_post_bfpt_fixups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_is25lp256_post_bfpt_fixups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32 }
%struct.sfdp_parameter_header = type { i32 }
%struct.sfdp_bfpt = type { i32* }
%struct.spi_nor_flash_parameter = type { i32 }

@BFPT_DWORD1_ADDRESS_BYTES_MASK = common dso_local global i32 0, align 4
@BFPT_DWORD1_ADDRESS_BYTES_3_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, %struct.sfdp_parameter_header*, %struct.sfdp_bfpt*, %struct.spi_nor_flash_parameter*)* @is25lp256_post_bfpt_fixups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is25lp256_post_bfpt_fixups(%struct.spi_nor* %0, %struct.sfdp_parameter_header* %1, %struct.sfdp_bfpt* %2, %struct.spi_nor_flash_parameter* %3) #0 {
  %5 = alloca %struct.spi_nor*, align 8
  %6 = alloca %struct.sfdp_parameter_header*, align 8
  %7 = alloca %struct.sfdp_bfpt*, align 8
  %8 = alloca %struct.spi_nor_flash_parameter*, align 8
  store %struct.spi_nor* %0, %struct.spi_nor** %5, align 8
  store %struct.sfdp_parameter_header* %1, %struct.sfdp_parameter_header** %6, align 8
  store %struct.sfdp_bfpt* %2, %struct.sfdp_bfpt** %7, align 8
  store %struct.spi_nor_flash_parameter* %3, %struct.spi_nor_flash_parameter** %8, align 8
  %9 = load %struct.sfdp_bfpt*, %struct.sfdp_bfpt** %7, align 8
  %10 = getelementptr inbounds %struct.sfdp_bfpt, %struct.sfdp_bfpt* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i64 @BFPT_DWORD(i32 1)
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BFPT_DWORD1_ADDRESS_BYTES_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @BFPT_DWORD1_ADDRESS_BYTES_3_ONLY, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.spi_nor*, %struct.spi_nor** %5, align 8
  %21 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %20, i32 0, i32 0
  store i32 4, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %4
  ret i32 0
}

declare dso_local i64 @BFPT_DWORD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
