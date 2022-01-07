; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_base.c_onenand_check_bufferram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_base.c_onenand_check_bufferram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.onenand_chip* }
%struct.onenand_chip = type { i32, i64, i32 (i32, i64)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ONENAND_REG_START_ADDRESS2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32)* @onenand_check_bufferram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onenand_check_bufferram(%struct.mtd_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.onenand_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %12 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %11, i32 0, i32 0
  %13 = load %struct.onenand_chip*, %struct.onenand_chip** %12, align 8
  store %struct.onenand_chip* %13, %struct.onenand_chip** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.onenand_chip*, %struct.onenand_chip** %5, align 8
  %15 = call i64 @ONENAND_IS_2PLANE(%struct.onenand_chip* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @onenand_get_2x_blockpage(%struct.mtd_info* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.onenand_chip*, %struct.onenand_chip** %5, align 8
  %24 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = ashr i32 %22, %25
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %21, %17
  %28 = load %struct.onenand_chip*, %struct.onenand_chip** %5, align 8
  %29 = call i32 @ONENAND_CURRENT_BUFFERRAM(%struct.onenand_chip* %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.onenand_chip*, %struct.onenand_chip** %5, align 8
  %31 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  store i32 1, i32* %7, align 4
  br label %58

41:                                               ; preds = %27
  %42 = load %struct.onenand_chip*, %struct.onenand_chip** %5, align 8
  %43 = call i32 @ONENAND_NEXT_BUFFERRAM(%struct.onenand_chip* %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.onenand_chip*, %struct.onenand_chip** %5, align 8
  %45 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %41
  %55 = load %struct.onenand_chip*, %struct.onenand_chip** %5, align 8
  %56 = call i32 @ONENAND_SET_NEXT_BUFFERRAM(%struct.onenand_chip* %55)
  store i32 1, i32* %7, align 4
  br label %57

57:                                               ; preds = %54, %41
  br label %58

58:                                               ; preds = %57, %40
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %58
  %62 = load %struct.onenand_chip*, %struct.onenand_chip** %5, align 8
  %63 = call i64 @ONENAND_IS_DDP(%struct.onenand_chip* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %61
  %66 = load %struct.onenand_chip*, %struct.onenand_chip** %5, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @onenand_block(%struct.onenand_chip* %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load %struct.onenand_chip*, %struct.onenand_chip** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @onenand_bufferram_address(%struct.onenand_chip* %69, i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load %struct.onenand_chip*, %struct.onenand_chip** %5, align 8
  %73 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %72, i32 0, i32 2
  %74 = load i32 (i32, i64)*, i32 (i32, i64)** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.onenand_chip*, %struct.onenand_chip** %5, align 8
  %77 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ONENAND_REG_START_ADDRESS2, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 %74(i32 %75, i64 %80)
  br label %82

82:                                               ; preds = %65, %61, %58
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i64 @ONENAND_IS_2PLANE(%struct.onenand_chip*) #1

declare dso_local i32 @onenand_get_2x_blockpage(%struct.mtd_info*, i32) #1

declare dso_local i32 @ONENAND_CURRENT_BUFFERRAM(%struct.onenand_chip*) #1

declare dso_local i32 @ONENAND_NEXT_BUFFERRAM(%struct.onenand_chip*) #1

declare dso_local i32 @ONENAND_SET_NEXT_BUFFERRAM(%struct.onenand_chip*) #1

declare dso_local i64 @ONENAND_IS_DDP(%struct.onenand_chip*) #1

declare dso_local i32 @onenand_block(%struct.onenand_chip*, i32) #1

declare dso_local i32 @onenand_bufferram_address(%struct.onenand_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
