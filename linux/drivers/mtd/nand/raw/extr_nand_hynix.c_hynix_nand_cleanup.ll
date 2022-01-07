; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_hynix.c_hynix_nand_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_hynix.c_hynix_nand_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.hynix_nand = type { %struct.hynix_nand* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*)* @hynix_nand_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hynix_nand_cleanup(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.hynix_nand*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %4 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %5 = call %struct.hynix_nand* @nand_get_manufacturer_data(%struct.nand_chip* %4)
  store %struct.hynix_nand* %5, %struct.hynix_nand** %3, align 8
  %6 = load %struct.hynix_nand*, %struct.hynix_nand** %3, align 8
  %7 = icmp ne %struct.hynix_nand* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %18

9:                                                ; preds = %1
  %10 = load %struct.hynix_nand*, %struct.hynix_nand** %3, align 8
  %11 = getelementptr inbounds %struct.hynix_nand, %struct.hynix_nand* %10, i32 0, i32 0
  %12 = load %struct.hynix_nand*, %struct.hynix_nand** %11, align 8
  %13 = call i32 @kfree(%struct.hynix_nand* %12)
  %14 = load %struct.hynix_nand*, %struct.hynix_nand** %3, align 8
  %15 = call i32 @kfree(%struct.hynix_nand* %14)
  %16 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %17 = call i32 @nand_set_manufacturer_data(%struct.nand_chip* %16, i32* null)
  br label %18

18:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.hynix_nand* @nand_get_manufacturer_data(%struct.nand_chip*) #1

declare dso_local i32 @kfree(%struct.hynix_nand*) #1

declare dso_local i32 @nand_set_manufacturer_data(%struct.nand_chip*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
