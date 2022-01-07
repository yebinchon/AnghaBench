; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_hynix.c_hynix_nand_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_hynix.c_hynix_nand_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.hynix_nand = type { i32 }

@NAND_BBM_LASTPAGE = common dso_local global i32 0, align 4
@NAND_BBM_FIRSTPAGE = common dso_local global i32 0, align 4
@NAND_BBM_SECONDPAGE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @hynix_nand_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hynix_nand_init(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.hynix_nand*, align 8
  %5 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %6 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %7 = call i32 @nand_is_slc(%struct.nand_chip* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @NAND_BBM_LASTPAGE, align 4
  %11 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %12 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  br label %23

15:                                               ; preds = %1
  %16 = load i32, i32* @NAND_BBM_FIRSTPAGE, align 4
  %17 = load i32, i32* @NAND_BBM_SECONDPAGE, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %20 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %15, %9
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.hynix_nand* @kzalloc(i32 4, i32 %24)
  store %struct.hynix_nand* %25, %struct.hynix_nand** %4, align 8
  %26 = load %struct.hynix_nand*, %struct.hynix_nand** %4, align 8
  %27 = icmp ne %struct.hynix_nand* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %44

31:                                               ; preds = %23
  %32 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %33 = load %struct.hynix_nand*, %struct.hynix_nand** %4, align 8
  %34 = call i32 @nand_set_manufacturer_data(%struct.nand_chip* %32, %struct.hynix_nand* %33)
  %35 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %36 = call i32 @hynix_nand_rr_init(%struct.nand_chip* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %41 = call i32 @hynix_nand_cleanup(%struct.nand_chip* %40)
  br label %42

42:                                               ; preds = %39, %31
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %28
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @nand_is_slc(%struct.nand_chip*) #1

declare dso_local %struct.hynix_nand* @kzalloc(i32, i32) #1

declare dso_local i32 @nand_set_manufacturer_data(%struct.nand_chip*, %struct.hynix_nand*) #1

declare dso_local i32 @hynix_nand_rr_init(%struct.nand_chip*) #1

declare dso_local i32 @hynix_nand_cleanup(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
