; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_hisi504_nand.c_set_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_hisi504_nand.c_set_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.nand_chip = type { i32 }
%struct.hinfc_host = type { i32, i32, i32* }

@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@NAND_ROW_ADDR_3 = common dso_local global i32 0, align 4
@NAND_CMD_ERASE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32)* @set_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_addr(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca %struct.hinfc_host*, align 8
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %11 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %10)
  store %struct.nand_chip* %11, %struct.nand_chip** %7, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %13 = call %struct.hinfc_host* @nand_get_controller_data(%struct.nand_chip* %12)
  store %struct.hinfc_host* %13, %struct.hinfc_host** %8, align 8
  %14 = load %struct.hinfc_host*, %struct.hinfc_host** %8, align 8
  %15 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.hinfc_host*, %struct.hinfc_host** %8, align 8
  %18 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = load %struct.hinfc_host*, %struct.hinfc_host** %8, align 8
  %20 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 0, i32* %22, align 4
  %23 = load %struct.hinfc_host*, %struct.hinfc_host** %8, align 8
  %24 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %52

29:                                               ; preds = %3
  %30 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %31 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @nand_opcode_8bits(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = ashr i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %36, %29
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, 65535
  %46 = load %struct.hinfc_host*, %struct.hinfc_host** %8, align 8
  %47 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.hinfc_host*, %struct.hinfc_host** %8, align 8
  %51 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %50, i32 0, i32 1
  store i32 2, i32* %51, align 4
  br label %52

52:                                               ; preds = %43, %3
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %112

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, 65535
  %58 = load %struct.hinfc_host*, %struct.hinfc_host** %8, align 8
  %59 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %60, 8
  %62 = shl i32 %57, %61
  %63 = load %struct.hinfc_host*, %struct.hinfc_host** %8, align 8
  %64 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %62
  store i32 %68, i32* %66, align 4
  %69 = load %struct.hinfc_host*, %struct.hinfc_host** %8, align 8
  %70 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 2
  store i32 %72, i32* %70, align 4
  %73 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %74 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @NAND_ROW_ADDR_3, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %111

79:                                               ; preds = %55
  %80 = load %struct.hinfc_host*, %struct.hinfc_host** %8, align 8
  %81 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.hinfc_host*, %struct.hinfc_host** %8, align 8
  %85 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @NAND_CMD_ERASE1, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %79
  %90 = load i32, i32* %6, align 4
  %91 = ashr i32 %90, 16
  %92 = and i32 %91, 255
  %93 = shl i32 %92, 16
  %94 = load %struct.hinfc_host*, %struct.hinfc_host** %8, align 8
  %95 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %93
  store i32 %99, i32* %97, align 4
  br label %110

100:                                              ; preds = %79
  %101 = load i32, i32* %6, align 4
  %102 = ashr i32 %101, 16
  %103 = and i32 %102, 255
  %104 = load %struct.hinfc_host*, %struct.hinfc_host** %8, align 8
  %105 = getelementptr inbounds %struct.hinfc_host, %struct.hinfc_host* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %103
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %100, %89
  br label %111

111:                                              ; preds = %110, %55
  br label %112

112:                                              ; preds = %111, %52
  ret void
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.hinfc_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @nand_opcode_8bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
