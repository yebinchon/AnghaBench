; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_multidev_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_multidev_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.denali_controller = type { i32, i32, i32, i64 }
%struct.mtd_info = type { i32, i32, i32, i32 }
%struct.nand_memory_organization = type { i32, i32 }

@DEVICES_CONNECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"unsupported number of devices %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @denali_multidev_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @denali_multidev_fixup(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.denali_controller*, align 8
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca %struct.nand_memory_organization*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %7 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %8 = call %struct.denali_controller* @to_denali_controller(%struct.nand_chip* %7)
  store %struct.denali_controller* %8, %struct.denali_controller** %4, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %10 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %9)
  store %struct.mtd_info* %10, %struct.mtd_info** %5, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %12 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %11, i32 0, i32 6
  %13 = call %struct.nand_memory_organization* @nanddev_get_memorg(i32* %12)
  store %struct.nand_memory_organization* %13, %struct.nand_memory_organization** %6, align 8
  %14 = load %struct.denali_controller*, %struct.denali_controller** %4, align 8
  %15 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DEVICES_CONNECTED, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @ioread32(i64 %18)
  %20 = load %struct.denali_controller*, %struct.denali_controller** %4, align 8
  %21 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.denali_controller*, %struct.denali_controller** %4, align 8
  %23 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load %struct.denali_controller*, %struct.denali_controller** %4, align 8
  %28 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.denali_controller*, %struct.denali_controller** %4, align 8
  %30 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DEVICES_CONNECTED, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @iowrite32(i32 1, i64 %33)
  br label %35

35:                                               ; preds = %26, %1
  %36 = load %struct.denali_controller*, %struct.denali_controller** %4, align 8
  %37 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %120

41:                                               ; preds = %35
  %42 = load %struct.denali_controller*, %struct.denali_controller** %4, align 8
  %43 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 2
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.denali_controller*, %struct.denali_controller** %4, align 8
  %48 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.denali_controller*, %struct.denali_controller** %4, align 8
  %51 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %120

56:                                               ; preds = %41
  %57 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %6, align 8
  %58 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %6, align 8
  %62 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %66 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %70 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %74 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %78 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %82 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %86 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %90 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %94 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %98 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %102 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %107 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %112 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = load %struct.denali_controller*, %struct.denali_controller** %4, align 8
  %117 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 1
  store i32 %119, i32* %117, align 4
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %56, %46, %40
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.denali_controller* @to_denali_controller(%struct.nand_chip*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.nand_memory_organization* @nanddev_get_memorg(i32*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
