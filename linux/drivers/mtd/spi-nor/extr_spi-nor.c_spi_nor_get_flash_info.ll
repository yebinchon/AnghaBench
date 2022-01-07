; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_get_flash_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_get_flash_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flash_info = type { i32, i64 }
%struct.spi_nor = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"found %s, expected %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.flash_info* (%struct.spi_nor*, i8*)* @spi_nor_get_flash_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.flash_info* @spi_nor_get_flash_info(%struct.spi_nor* %0, i8* %1) #0 {
  %3 = alloca %struct.flash_info*, align 8
  %4 = alloca %struct.spi_nor*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.flash_info*, align 8
  %7 = alloca %struct.flash_info*, align 8
  store %struct.spi_nor* %0, %struct.spi_nor** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.flash_info* null, %struct.flash_info** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.flash_info* @spi_nor_match_id(i8* %11)
  store %struct.flash_info* %12, %struct.flash_info** %6, align 8
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.flash_info*, %struct.flash_info** %6, align 8
  %15 = icmp ne %struct.flash_info* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %18 = call %struct.flash_info* @spi_nor_read_id(%struct.spi_nor* %17)
  store %struct.flash_info* %18, %struct.flash_info** %6, align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = load %struct.flash_info*, %struct.flash_info** %6, align 8
  %21 = call i64 @IS_ERR_OR_NULL(%struct.flash_info* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.flash_info* @ERR_PTR(i32 %25)
  store %struct.flash_info* %26, %struct.flash_info** %3, align 8
  br label %63

27:                                               ; preds = %19
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %61

30:                                               ; preds = %27
  %31 = load %struct.flash_info*, %struct.flash_info** %6, align 8
  %32 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %37 = call %struct.flash_info* @spi_nor_read_id(%struct.spi_nor* %36)
  store %struct.flash_info* %37, %struct.flash_info** %7, align 8
  %38 = load %struct.flash_info*, %struct.flash_info** %7, align 8
  %39 = call i64 @IS_ERR(%struct.flash_info* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load %struct.flash_info*, %struct.flash_info** %7, align 8
  store %struct.flash_info* %42, %struct.flash_info** %3, align 8
  br label %63

43:                                               ; preds = %35
  %44 = load %struct.flash_info*, %struct.flash_info** %7, align 8
  %45 = load %struct.flash_info*, %struct.flash_info** %6, align 8
  %46 = icmp ne %struct.flash_info* %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %49 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.flash_info*, %struct.flash_info** %7, align 8
  %52 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.flash_info*, %struct.flash_info** %6, align 8
  %55 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dev_warn(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56)
  %58 = load %struct.flash_info*, %struct.flash_info** %7, align 8
  store %struct.flash_info* %58, %struct.flash_info** %6, align 8
  br label %59

59:                                               ; preds = %47, %43
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60, %30, %27
  %62 = load %struct.flash_info*, %struct.flash_info** %6, align 8
  store %struct.flash_info* %62, %struct.flash_info** %3, align 8
  br label %63

63:                                               ; preds = %61, %41, %23
  %64 = load %struct.flash_info*, %struct.flash_info** %3, align 8
  ret %struct.flash_info* %64
}

declare dso_local %struct.flash_info* @spi_nor_match_id(i8*) #1

declare dso_local %struct.flash_info* @spi_nor_read_id(%struct.spi_nor*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.flash_info*) #1

declare dso_local %struct.flash_info* @ERR_PTR(i32) #1

declare dso_local i64 @IS_ERR(%struct.flash_info*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
