; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_nvmem_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_nvmem_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32*, i32, i32, i32 }
%struct.nvmem_config = type { i32, i32, i32, i32, i32, i32, %struct.mtd_info*, i32, i32, i32, i32, i32* }

@THIS_MODULE = common dso_local global i32 0, align 4
@mtd_nvmem_reg_read = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to register NVMEM device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*)* @mtd_nvmem_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtd_nvmem_add(%struct.mtd_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.nvmem_config, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  %5 = bitcast %struct.nvmem_config* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 56, i1 false)
  %6 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %4, i32 0, i32 0
  store i32 -1, i32* %6, align 8
  %7 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %8 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %4, i32 0, i32 11
  store i32* %8, i32** %9, align 8
  %10 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %11 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %4, i32 0, i32 10
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @THIS_MODULE, align 4
  %15 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %4, i32 0, i32 9
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* @mtd_nvmem_reg_read, align 4
  %17 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %4, i32 0, i32 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %19 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %4, i32 0, i32 7
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %4, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %4, i32 0, i32 2
  store i32 1, i32* %23, align 8
  %24 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %4, i32 0, i32 3
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %4, i32 0, i32 4
  store i32 1, i32* %25, align 8
  %26 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %4, i32 0, i32 5
  store i32 1, i32* %26, align 4
  %27 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %28 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %4, i32 0, i32 6
  store %struct.mtd_info* %27, %struct.mtd_info** %28, align 8
  %29 = call i32* @nvmem_register(%struct.nvmem_config* %4)
  %30 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %31 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %30, i32 0, i32 0
  store i32* %29, i32** %31, align 8
  %32 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %33 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @IS_ERR(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %1
  %38 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %39 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @PTR_ERR(i32* %40)
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %47 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %56

48:                                               ; preds = %37
  %49 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %50 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %49, i32 0, i32 1
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %53 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @PTR_ERR(i32* %54)
  store i32 %55, i32* %2, align 4
  br label %58

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %1
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %48
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @nvmem_register(%struct.nvmem_config*) #2

declare dso_local i64 @IS_ERR(i32*) #2

declare dso_local i32 @PTR_ERR(i32*) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
