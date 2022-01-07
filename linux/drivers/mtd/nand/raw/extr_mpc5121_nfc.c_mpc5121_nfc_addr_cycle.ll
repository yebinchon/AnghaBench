; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mpc5121_nfc.c_mpc5121_nfc_addr_cycle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mpc5121_nfc.c_mpc5121_nfc_addr_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.nand_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32)* @mpc5121_nfc_addr_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc5121_nfc_addr_cycle(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %10 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %9)
  store %struct.nand_chip* %10, %struct.nand_chip** %7, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %12 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @mpc5121_nfc_send_addr(%struct.mtd_info* %17, i32 %18)
  %20 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %21 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 512
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = ashr i32 %26, 8
  %28 = call i32 @mpc5121_nfc_send_addr(%struct.mtd_info* %25, i32 %27)
  br label %29

29:                                               ; preds = %24, %16
  br label %30

30:                                               ; preds = %29, %3
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %43, %33
  %35 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 255
  %38 = call i32 @mpc5121_nfc_send_addr(%struct.mtd_info* %35, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = ashr i32 %39, 8
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %8, align 4
  %42 = ashr i32 %41, 8
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %34, label %46

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %46, %30
  ret void
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local i32 @mpc5121_nfc_send_addr(%struct.mtd_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
