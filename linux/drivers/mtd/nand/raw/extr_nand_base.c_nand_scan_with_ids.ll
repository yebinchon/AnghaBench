; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_scan_with_ids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_scan_with_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.nand_flash_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nand_scan_with_ids(%struct.nand_chip* %0, i32 %1, %struct.nand_flash_dev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_flash_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nand_flash_dev* %2, %struct.nand_flash_dev** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %43

14:                                               ; preds = %3
  %15 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %7, align 8
  %18 = call i32 @nand_scan_ident(%struct.nand_chip* %15, i32 %16, %struct.nand_flash_dev* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %43

23:                                               ; preds = %14
  %24 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %25 = call i32 @nand_attach(%struct.nand_chip* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %39

29:                                               ; preds = %23
  %30 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %31 = call i32 @nand_scan_tail(%struct.nand_chip* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %36

35:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %43

36:                                               ; preds = %34
  %37 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %38 = call i32 @nand_detach(%struct.nand_chip* %37)
  br label %39

39:                                               ; preds = %36, %28
  %40 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %41 = call i32 @nand_scan_ident_cleanup(%struct.nand_chip* %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %35, %21, %11
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @nand_scan_ident(%struct.nand_chip*, i32, %struct.nand_flash_dev*) #1

declare dso_local i32 @nand_attach(%struct.nand_chip*) #1

declare dso_local i32 @nand_scan_tail(%struct.nand_chip*) #1

declare dso_local i32 @nand_detach(%struct.nand_chip*) #1

declare dso_local i32 @nand_scan_ident_cleanup(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
