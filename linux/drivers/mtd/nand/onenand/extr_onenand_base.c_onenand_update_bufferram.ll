; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_base.c_onenand_update_bufferram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_base.c_onenand_update_bufferram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.onenand_chip* }
%struct.onenand_chip = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32)* @onenand_update_bufferram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @onenand_update_bufferram(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.onenand_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %11 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %10, i32 0, i32 0
  %12 = load %struct.onenand_chip*, %struct.onenand_chip** %11, align 8
  store %struct.onenand_chip* %12, %struct.onenand_chip** %7, align 8
  %13 = load %struct.onenand_chip*, %struct.onenand_chip** %7, align 8
  %14 = call i64 @ONENAND_IS_2PLANE(%struct.onenand_chip* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @onenand_get_2x_blockpage(%struct.mtd_info* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  br label %26

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.onenand_chip*, %struct.onenand_chip** %7, align 8
  %23 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = ashr i32 %21, %24
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %20, %16
  %27 = load %struct.onenand_chip*, %struct.onenand_chip** %7, align 8
  %28 = call i32 @ONENAND_NEXT_BUFFERRAM(%struct.onenand_chip* %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.onenand_chip*, %struct.onenand_chip** %7, align 8
  %30 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %26
  %40 = load %struct.onenand_chip*, %struct.onenand_chip** %7, align 8
  %41 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 -1, i32* %46, align 4
  br label %47

47:                                               ; preds = %39, %26
  %48 = load %struct.onenand_chip*, %struct.onenand_chip** %7, align 8
  %49 = call i32 @ONENAND_CURRENT_BUFFERRAM(%struct.onenand_chip* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.onenand_chip*, %struct.onenand_chip** %7, align 8
  %55 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %53, i32* %60, align 4
  br label %69

61:                                               ; preds = %47
  %62 = load %struct.onenand_chip*, %struct.onenand_chip** %7, align 8
  %63 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 -1, i32* %68, align 4
  br label %69

69:                                               ; preds = %61, %52
  ret void
}

declare dso_local i64 @ONENAND_IS_2PLANE(%struct.onenand_chip*) #1

declare dso_local i32 @onenand_get_2x_blockpage(%struct.mtd_info*, i32) #1

declare dso_local i32 @ONENAND_NEXT_BUFFERRAM(%struct.onenand_chip*) #1

declare dso_local i32 @ONENAND_CURRENT_BUFFERRAM(%struct.onenand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
