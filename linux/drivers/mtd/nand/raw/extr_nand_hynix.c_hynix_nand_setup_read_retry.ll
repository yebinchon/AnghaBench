; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_hynix.c_hynix_nand_setup_read_retry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_hynix.c_hynix_nand_setup_read_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.hynix_nand = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32*, i32* }

@NAND_HYNIX_CMD_SET_PARAMS = common dso_local global i32 0, align 4
@NAND_HYNIX_CMD_APPLY_PARAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32)* @hynix_nand_setup_read_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hynix_nand_setup_read_retry(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hynix_nand*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %11 = call %struct.hynix_nand* @nand_get_manufacturer_data(%struct.nand_chip* %10)
  store %struct.hynix_nand* %11, %struct.hynix_nand** %6, align 8
  %12 = load %struct.hynix_nand*, %struct.hynix_nand** %6, align 8
  %13 = getelementptr inbounds %struct.hynix_nand, %struct.hynix_nand* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.hynix_nand*, %struct.hynix_nand** %6, align 8
  %19 = getelementptr inbounds %struct.hynix_nand, %struct.hynix_nand* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %17, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %16, i64 %24
  store i32* %25, i32** %7, align 8
  %26 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %27 = load i32, i32* @NAND_HYNIX_CMD_SET_PARAMS, align 4
  %28 = call i32 @hynix_nand_cmd_op(%struct.nand_chip* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %71

33:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %64, %33
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.hynix_nand*, %struct.hynix_nand** %6, align 8
  %37 = getelementptr inbounds %struct.hynix_nand, %struct.hynix_nand* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %35, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %34
  %43 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %44 = load %struct.hynix_nand*, %struct.hynix_nand** %6, align 8
  %45 = getelementptr inbounds %struct.hynix_nand, %struct.hynix_nand* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @hynix_nand_reg_write_op(%struct.nand_chip* %43, i32 %52, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %42
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %71

63:                                               ; preds = %42
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %34

67:                                               ; preds = %34
  %68 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %69 = load i32, i32* @NAND_HYNIX_CMD_APPLY_PARAMS, align 4
  %70 = call i32 @hynix_nand_cmd_op(%struct.nand_chip* %68, i32 %69)
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %61, %31
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.hynix_nand* @nand_get_manufacturer_data(%struct.nand_chip*) #1

declare dso_local i32 @hynix_nand_cmd_op(%struct.nand_chip*, i32) #1

declare dso_local i32 @hynix_nand_reg_write_op(%struct.nand_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
